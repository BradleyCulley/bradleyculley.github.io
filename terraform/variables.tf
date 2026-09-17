variable "aws_region" {
  description = "AWS region to deploy the blog subscription infrastructure into."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Base name for the Lambda, API gateway, and database resources."
  type        = string
  default     = "blog-subscribe"
}

variable "db_name" {
  description = "Initial PostgreSQL database name."
  type        = string
  default     = "mlbwya_subscribers"
}

variable "db_username" {
  description = "Master username for the PostgreSQL database."
  type        = string
  default     = "blogadmin"
  sensitive   = true
}

variable "db_password" {
  description = "Master password for the PostgreSQL database."
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance class for the subscriber database."
  type        = string
  default     = "db.t3.micro"
}

variable "db_storage" {
  description = "Storage size in GB for the PostgreSQL instance."
  type        = number
  default     = 20
}

variable "db_engine_version" {
  description = "PostgreSQL engine version for the RDS instance."
  type        = string
  default     = "16.3"
}

variable "db_backup_retention" {
  description = "Retention period for automated RDS database backups."
  type        = number
  default     = 7
}

variable "allowed_origins" {
  description = "Comma-separated list of allowed CORS origins for the subscription form."
  type        = string
  default     = "https://bradleyculley.github.io,https://bradleyculley.com,https://www.bradleyculley.com"
}

variable "lambda_timeout" {
  description = "Timeout in seconds for the subscription Lambda."
  type        = number
  default     = 30
}

variable "lambda_memory_size" {
  description = "Memory allocation in MB for the subscription Lambda."
  type        = number
  default     = 256
}

variable "api_stage_name" {
  description = "Name of the API Gateway stage to expose for the subscription endpoint."
  type        = string
  default     = "prod"
}
