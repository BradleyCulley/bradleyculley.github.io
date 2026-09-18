---
layout: home
title: ""
---

<!-- Subscription form temporarily disabled while backend setup is completed.
<div class="subscribe-card">
  <h2>Subscribe for new posts</h2>
  <p>Get a note whenever a new post goes live.</p>

  <form id="subscribe-form" class="subscribe-form">
    <label class="sr-only" for="email">Email address</label>
    <input id="email" name="email" type="email" placeholder="you@example.com" autocomplete="email" required>
    <button type="submit">Subscribe</button>
  </form>

  <p id="subscribe-status" class="subscribe-status" aria-live="polite"></p>
</div>

<script>
  const apiUrl = "{{ site.subscription_api_url | default: 'https://example.invalid/' }}";
  const form = document.getElementById('subscribe-form');
  const status = document.getElementById('subscribe-status');

  form.addEventListener('submit', async (event) => {
    event.preventDefault();

    const emailField = document.getElementById('email');
    const email = emailField.value.trim();

    if (!email) {
      status.textContent = 'Please enter an email address.';
      status.className = 'subscribe-status error';
      return;
    }

    status.textContent = 'Subscribing...';
    status.className = 'subscribe-status';

    try {
      const response = await fetch(apiUrl, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email })
      });

      const data = await response.json().catch(() => ({}));

      if (!response.ok) {
        throw new Error(data.error || 'Unable to subscribe at this time.');
      }

      status.textContent = response.status === 201
        ? 'Thanks! Your email has been subscribed.'
        : 'This email is already subscribed.';
      status.className = 'subscribe-status success';
      form.reset();
    } catch (error) {
      status.textContent = error.message || 'Something went wrong.';
      status.className = 'subscribe-status error';
    }
  });
</script>
-->
