output "s3_bucket_name" {
  description = "The name of the S3 bucket created"
  value       = aws_s3_bucket.s3_bucket.id
}

output "dynamodb_table_name" {
  description = "The name of the DynamoDB table for locking"
  value       = aws_dynamodb_table.terraform_lock.name
}
