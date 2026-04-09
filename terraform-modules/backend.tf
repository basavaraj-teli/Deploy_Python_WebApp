terraform {
  backend "s3" {
    bucket  = "s3-terraform-state-my-demo"
    key     = "flask-app/terraform_modules.tfstate"
    region  = "ap-south-1"
    encrypt = true
    # State Locking (Choose one of the 2 options below)
    # 1. Native S3 Locking (Recommended for Terraform 1.10+)
    use_lockfile = true

    # 2. DynamoDB Locking (Legacy approach)
    # dynamodb_table = "state_locking_table"
  }
}