module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = var.vpc_name
  vpc_cidr             = var.vpc_cidr
  ig_name              = var.ig_name
  aws_subnet_name      = var.aws_subnet_name
  Subnet_CIDR_list     = var.Subnet_CIDR_list
  aws_route_table_name = var.aws_route_table_name
}

module "ec2" {
  source                 = "./modules/ec2"
  instance_type          = var.instance_type
  ec2_instance_name      = var.ec2_instance_name
  ami                    = var.ami
  region                 = var.region
  vpc_security_group_ids = [ module.security_group.security_group_id ]
  ec2_role               = var.ec2_role
  ec2_ecr_iam_policy     = var.ec2_ecr_iam_policy
  instance_profile       = var.instance_profile
  aws_subnet_id          = module.vpc.subnet_id
  ecr_repo_arn           = module.ecr.ecr_arn
}

module "security_group" {
  source              = "./modules/security_group"
  security_group_name = var.security_group_name
  vpc_id              = module.vpc.vpc_id
  ports               = var.ports
}

module "ecr" {
  source   = "./modules/ecr"
  ECR_repo = var.ECR_repo
}

/*
module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}
*/