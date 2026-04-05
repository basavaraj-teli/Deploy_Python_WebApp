
resource "aws_s3_bucket" "state_bucket" {
  bucket = "s3-terraform-state-my-demo"
  tags = {
    Name = "Terraform State Storage Bucket"
  }
}

resource "aws_dynamodb_table" "state_locking_table" {
  name         = "state_locking_table"
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