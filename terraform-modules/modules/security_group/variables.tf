variable "vpc_id" {
  type = string
  description = "AWS VPC ID"
}

variable "security_group_name" {
  type = string
  description = "Security group name"
}

variable "ports" {
  type        = list(string)
  description = "Ports used for security group ingress and egress rules"
}