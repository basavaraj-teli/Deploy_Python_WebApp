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