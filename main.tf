module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
}


module "security_group" {
  source = "./modules/security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source         = "./modules/ec2"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.vpc.subnet_id
  security_group = module.security_group.security_group_id
}

/*module "s3_backend" {
  source              = "./modules/S3" 
  s3_bucket_name      = var.s3_bucket_name
  dynamodb_table_name = var.dynamodb_table_name
}*/
