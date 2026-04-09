resource "aws_instance" "python_webserver" {
  instance_type          = var.instance_type
  ami                    = var.ami
  key_name               = aws_key_pair.web_server.key_name
  subnet_id              = var.aws_subnet_id
  region                 = var.region
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data              = <<-EOF
              #! /bin/bash
              yum update -y
              yum install docker -y
              systemctl enable docker
              systemctl start docker
              usermod -aG docker ec2-user

            EOF

  tags = {
    Name = var.ec2_instance_name
  }

}

resource "aws_key_pair" "web_server" {
  key_name   = "ssh_key"
  public_key = file("${path.root}/terraform_key.pub")
}

resource "aws_iam_role" "ec2_role" {
  name = var.ec2_role

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "ecr_policy" {
  name = var.ec2_ecr_iam_policy

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ecr:GetAuthorizationToken"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "ecr:BatchCheckLayerAvailability",
          "ecr:CompleteLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:InitiateLayerUpload",
          "ecr:PutImage",
          "ecr:BatchGetImage",
          "ecr:GetDownloadUrlForLayer"
        ]
        Resource = var.ecr_repo_arn
      },
      {
        Effect = "Allow"
        Action = [
          "ecr:DescribeRepositories",
          "ecr:ListImages"
        ]
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = aws_iam_policy.ecr_policy.arn
}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = var.instance_profile
  role = aws_iam_role.ec2_role.name
}