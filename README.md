# Brad Culley blog subscription system

This site includes a simple email subscription flow for new-post notifications. The form stores emails in an Amazon RDS PostgreSQL instance via an AWS Lambda function exposed through a Lambda Function URL, and the GitHub Actions workflow provisions the AWS resources with Terraform using AWS credentials passed as GitHub Actions secrets.

## Terraform-managed AWS resources

The `terraform/` directory defines the AWS infrastructure for:

- Amazon RDS PostgreSQL
- AWS Lambda function that stores the email address
- Lambda Function URL for the front-end form
- IAM role and permissions for Lambda execution

## GitHub secrets

Add these to the repository or environment in GitHub Actions:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `RDS_USERNAME`
- `RDS_PASSWORD`

Notes:
- `AWS_REGION` is hard-coded to `us-east-1` in the workflow.
- The RDS database name defaults to `mlbwya_subscribers` (no secret required).
- Allowed origins are preconfigured to:

```text
https://bradleyculley.github.io,https://bradleyculley.com,https://www.bradleyculley.com
```

If you need different origins, override `allowed_origins` in `terraform/variables.tf` or pass `-var "allowed_origins=..."` to `terraform apply`.

## Front-end configuration

Set the API URL for the subscription form in `_config.yml`:

```yaml
subscription_api_url: "https://<random-id>.lambda-url.<region>.on.aws/"
```

This is used by the form on the homepage to POST the email address to the Lambda URL.

## Deploying

Push to `main` or run the workflow manually from the GitHub Actions UI. The workflow installs Terraform, provisions the AWS infrastructure, and outputs the API URL.

## Database schema

The Lambda creates the schema automatically if it does not exist:

```sql
CREATE TABLE IF NOT EXISTS subscribers (
  id SERIAL PRIMARY KEY,
  email VARCHAR(320) NOT NULL UNIQUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
```

## Notes

- The Lambda accepts JSON payloads in the form `{ "email": "name@example.com" }`.
- Duplicate emails are ignored rather than creating a second row.
- The function includes CORS support for allowed origins.
- This setup uses a Lambda Function URL instead of API Gateway, which is simpler for a static site and does not require an extra API Gateway layer.
- The Terraform configuration currently provisions a public PostgreSQL database for simplicity; if you want to lock it down to a private VPC later, you can tighten security with a custom subnet group and Lambda VPC configuration.
