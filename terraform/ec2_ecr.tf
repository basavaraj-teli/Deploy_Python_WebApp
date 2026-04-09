resource "aws_instance" "python_webserver" {
  instance_type          = var.instance_type
  ami                    = var.ami
  key_name               = aws_key_pair.web_server.key_name
  subnet_id              = aws_subnet.subnet.id
  region                 = var.region
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data              = <<-EOF
              #! /bin/bash
              yum update -y
              yum install docker -y
              systemctl enable docker
              systemctl start docker
              usermod -aG docker ec2-user

            EOF

  tags = {
    Name = "ecr-push-webserver"
  }

}

resource "aws_key_pair" "web_server" {
  key_name   = "ssh_key"
  public_key = file("${path.module}/terraform_key.pub")
}

resource "aws_ecr_repository" "flask" {
  name = var.ECR_repo
  #force_delete = true # This allows Terraform to delete the repo while images exist
}