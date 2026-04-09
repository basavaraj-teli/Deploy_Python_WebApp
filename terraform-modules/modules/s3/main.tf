resource "aws_s3_bucket" "state_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "Terraform State Storage Bucket"
  }
}