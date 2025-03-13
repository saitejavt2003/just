output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private[*].id
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app.id
}

output "ec2_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.app.private_ip
}

output "s3_bucket_name" {
  description = "The dynamically generated name of the S3 bucket"
  value       = aws_s3_bucket.main.bucket
}