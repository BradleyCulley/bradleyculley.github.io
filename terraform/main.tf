provider "aws" {
  region = var.aws_region
}

locals {
  lambda_source_dir = "${path.module}/../aws/lambda"
  lambda_zip_path   = "${path.module}/.terraform/tmp/blog-subscribe.zip"
}

resource "null_resource" "lambda_package" {
  triggers = {
    source_hash = sha256(join("", [for path in fileset(local.lambda_source_dir, "**/*") : filesha256("${local.lambda_source_dir}/${path}")]))
  }

  provisioner "local-exec" {
    command = <<-EOT
      set -e
      cd "${local.lambda_source_dir}"
      mkdir -p "${path.module}/.terraform/tmp"
      npm install --production --silent
      rm -f "${local.lambda_zip_path}"
      zip -r "${local.lambda_zip_path}" . -x "*.md" "package-lock.json"
    EOT
  }
}

resource "aws_iam_role" "lambda_exec" {
  name = "${var.project_name}-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_basic_execution" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_security_group" "rds" {
  name        = "${var.project_name}-rds-sg"
  description = "Allow PostgreSQL traffic for the blog subscription database."

  ingress {
    description = "PostgreSQL from anywhere for quick startup"
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "subscribers" {
  identifier              = "${var.project_name}-db"
  allocated_storage       = var.db_storage
  max_allocated_storage   = var.db_storage
  storage_type            = "gp2"
  engine                  = "postgres"
  engine_version          = var.db_engine_version
  instance_class          = var.db_instance_class
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  publicly_accessible     = true
  skip_final_snapshot     = true
  backup_retention_period = var.db_backup_retention
  vpc_security_group_ids  = [aws_security_group.rds.id]
  apply_immediately       = true
  deletion_protection     = false
}

resource "aws_lambda_function" "subscriber" {
  depends_on = [null_resource.lambda_package]

  function_name = "${var.project_name}-api"
  role          = aws_iam_role.lambda_exec.arn
  handler       = "index.handler"
  runtime       = "nodejs20.x"
  memory_size   = var.lambda_memory_size
  timeout       = var.lambda_timeout
  filename      = local.lambda_zip_path

  source_code_hash = null_resource.lambda_package.triggers["source_hash"]

  environment {
    variables = {
      DB_HOST         = aws_db_instance.subscribers.address
      DB_PORT         = tostring(aws_db_instance.subscribers.port)
      DB_NAME         = aws_db_instance.subscribers.db_name
      DB_USER         = aws_db_instance.subscribers.username
      DB_PASSWORD     = var.db_password
      ALLOWED_ORIGINS = var.allowed_origins
      DB_SSL          = "true"
    }
  }
}

resource "aws_lambda_function_url" "subscribe" {
  function_name      = aws_lambda_function.subscriber.function_name
  authorization_type = "NONE"

  cors {
    allow_credentials = false
    allow_origins     = split(",", var.allowed_origins)
    allow_methods     = ["POST", "OPTIONS"]
    allow_headers     = ["content-type", "authorization"]
    max_age           = 300
  }
}

output "api_url" {
  description = "Lambda Function URL for the blog email subscription form."
  value       = aws_lambda_function_url.subscribe.function_url
}

output "database_host" {
  description = "Hostname for the RDS PostgreSQL instance."
  value       = aws_db_instance.subscribers.address
}

output "database_name" {
  description = "Database name for the subscription table."
  value       = aws_db_instance.subscribers.db_name
}

output "lambda_function_name" {
  description = "Name of the AWS Lambda that stores subscription emails."
  value       = aws_lambda_function.subscriber.function_name
}
