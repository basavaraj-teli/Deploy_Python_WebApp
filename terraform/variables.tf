variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t2.micro"
}

variable "ami" {
  type        = string
  description = "AMI ID to create an EC2 instance for web server"
}

variable "ec2_instance_name" {
  type = string
  description = "webserver"
}

variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region where web server will be deployed"
}

variable "vpc_name" {
  type = string
  description = "AWS VPC name"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR for VPC"
}

variable "ig_name" {
  type = string
  description = "AWS IG name"
}

variable "Subnet_CIDR_list" {
  type        = list(string)
  description = "CIDR for subnet"
}

variable "aws_route_table_name" {
  type = string
  description = "AWS route table name"
}

variable "aws_subnet_name" {
  type = string
  description = "AWS subnet name"
}

variable "security_group_name" {
  type = string
  description = "Security group name"
}

variable "ports" {
  type        = list(string)
  description = "Ports used for security group ingress and egress rules"
}

variable "ECR_repo" {
  type        = string
  description = "ECR repo to push images"
}

variable "bucket_name" {
  type        = string
  description = "S3 bucket to store terraform state file"
}

variable "dynamodb_table_name" {
  type        = string
  description = "Dynamodb table to store LockId, which helps in state locking."
}