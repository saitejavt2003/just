# S3 Bucket for Terraform State
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name

  lifecycle {
    prevent_destroy = true  # Prevents accidental deletion
  }
}

# DynamoDB Table for Terraform State Locking
resource "aws_dynamodb_table" "terraform_lock" {
  name           = var.dynamodb_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true  # Prevents accidental deletion
  }
}