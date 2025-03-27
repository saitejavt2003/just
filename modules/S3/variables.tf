variable "aws_region" {
  description = "AWS region for infrastructure"
  type        = string

}

variable "s3_bucket_name" {
  description = "S3 bucket name for Terraform state"
  type        = string
  default     = "sai-s3-demo-xyz"
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name for Terraform state locking"
  type        = string
  default     = "terraform-lock"