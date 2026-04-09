resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.Subnet_CIDR_list[0]
  availability_zone       = "${var.region}a"
  map_public_ip_on_launch = true

  tags = {
    Name = var.aws_subnet_name
  }
}

resource "aws_internet_gateway" "IG" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.ig_name
  }
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = var.aws_route_table_name
  }
}

resource "aws_route_table_association" "route_association" {
  route_table_id = aws_route_table.route_table.id
  subnet_id      = aws_subnet.subnet.id
}

resource "aws_route" "routes" {
  route_table_id         = aws_route_table.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.IG.id
}