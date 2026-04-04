resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Security group for public web servers"
  vpc_id      = aws_vpc.vpc.id
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_http_https" {
  security_group_id = aws_security_group.web_sg.id
  for_each          = toset(var.ports)

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = each.value
  ip_protocol = "tcp"
  to_port     = each.value
}

resource "aws_vpc_security_group_egress_rule" "Allow_all_traffic" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}