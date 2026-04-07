variable "instance_type" {
  type        = string
  description = "EC2 instance type for the web server"
  default     = "t2.micro"
}

variable "ami" {
  type        = string
  description = "AMI ID to create an EC2 instance for web server"
}

variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region where web server will be deployed"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR for VPC"
}

variable "Subnet_CIDR_list" {
  type        = list(string)
  description = "CIDR for subnet"
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