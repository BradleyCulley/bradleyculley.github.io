const { Client } = require('pg');

const allowedOrigins = (process.env.ALLOWED_ORIGINS || '')
  .split(',')
  .map((value) => value.trim())
  .filter(Boolean);

function getCorsHeaders(origin) {
  const allowedOrigin = !origin || allowedOrigins.length === 0
    ? '*' 
    : allowedOrigins.includes(origin)
      ? origin
      : '*';

  return {
    'Access-Control-Allow-Origin': allowedOrigin,
    'Access-Control-Allow-Headers': 'Content-Type,Authorization',
    'Access-Control-Allow-Methods': 'POST,OPTIONS',
    'Content-Type': 'application/json',
  };
}

function parseBody(event) {
  if (!event.body) {
    return {};
  }

  if (event.isBase64Encoded) {
    return JSON.parse(Buffer.from(event.body, 'base64').toString('utf8'));
  }

  try {
    return JSON.parse(event.body);
  } catch (error) {
    const params = new URLSearchParams(event.body);
    const result = {};
    for (const [key, value] of params.entries()) {
      result[key] = value;
    }
    return result;
  }
}

function validateEmail(value) {
  return typeof value === 'string' && /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value.trim());
}

async function ensureSchema(client) {
  await client.query(`
    CREATE TABLE IF NOT EXISTS subscribers (
      id SERIAL PRIMARY KEY,
      email VARCHAR(320) NOT NULL UNIQUE,
      created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
    );
  `);
}

exports.handler = async (event) => {
  const origin = event.headers && (event.headers.origin || event.headers.Origin);
  const headers = getCorsHeaders(origin);

  if (event.httpMethod === 'OPTIONS') {
    return {
      statusCode: 200,
      headers,
      body: '',
    };
  }

  if (event.httpMethod !== 'POST') {
    return {
      statusCode: 405,
      headers,
      body: JSON.stringify({ error: 'Method not allowed.' }),
    };
  }

  const payload = parseBody(event);
  const email = String(payload.email || '').trim().toLowerCase();

  if (!validateEmail(email)) {
    return {
      statusCode: 400,
      headers,
      body: JSON.stringify({ error: 'Please provide a valid email address.' }),
    };
  }

  const client = new Client({
    host: process.env.DB_HOST,
    port: Number(process.env.DB_PORT || 5432),
    database: process.env.DB_NAME,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    ssl: process.env.DB_SSL === 'false' ? false : { rejectUnauthorized: false },
  });

  try {
    await client.connect();
    await ensureSchema(client);

    const result = await client.query(
      `INSERT INTO subscribers (email) VALUES ($1)
       ON CONFLICT (email) DO NOTHING
       RETURNING id;`,
      [email],
    );

    return {
      statusCode: result.rowCount > 0 ? 201 : 200,
      headers,
      body: JSON.stringify({
        status: result.rowCount > 0 ? 'subscribed' : 'already-subscribed',
        email,
      }),
    };
  } catch (error) {
    console.error('subscription_error', error);
    return {
      statusCode: 500,
      headers,
      body: JSON.stringify({ error: 'The subscription request could not be processed.' }),
    };
  } finally {
    await client.end();
  }
};
