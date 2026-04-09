variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS region where web server will be deployed"
}

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
  description = "EC2 instance name"
}

variable "vpc_security_group_ids" {
  type = list(string)
  description = "VPC security group to be attached to the AWS EC2 instance"
}

variable "aws_subnet_id" {
  type = string
  description = "AWS subnet ID"
}

variable "ec2_role" {
  type = string
  description = "EC2 assume role for ECR, to be attached to instance profile"
}

variable "instance_profile" {
  type = string
  description = "Instance profile name"
}

variable "ec2_ecr_iam_policy" {
  type = string
  description = "EC2 and ECR IAM policy"
}

variable "ecr_repo_arn" {
  type = string
  description = "AWS ECR repository arn"
}