output "s3_bucket_name" {
  description = "The name of the created S3 bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "dynamodb_table_name" {
  description = "The name of the created DynamoDB table"
  value       = aws_dynamodb_table.terraform_lock.id
}
