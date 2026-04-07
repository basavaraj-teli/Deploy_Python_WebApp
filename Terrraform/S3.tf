# S3 bucket has been create on first terraform apply and used as backend to store terraform state file, hence commented the following block.
/*
resource "aws_s3_bucket" "state_bucket" {
  bucket = var.bucket_name
  tags = {
    Name = "Terraform State Storage Bucket"
  }
}
*/

# Since, S3 bucket has inbuilt state locking in Terraform 1.10+ versions, fiollowing dynamodb block has been commented, it was used in legacy appproach for state locking.
/*
resource "aws_dynamodb_table" "state_locking_table" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "Terraform State Lock Table"
  }
}
*/