resource "aws_ecr_repository" "flask" {
  name = var.ECR_repo
  #force_delete = true # This allows Terraform to delete the repo while images exist
}