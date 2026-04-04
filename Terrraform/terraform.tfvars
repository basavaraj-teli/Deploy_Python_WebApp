instance_type    = "t2.micro"
ami              = "ami-0931307dcdc2a28c9"
vpc_cidr         = "10.0.0.0/25"
Subnet_CIDR_list = ["10.0.0.0/26", "10.0.0.64/26"]
region           = "ap-south-1"
ports            = ["22", "80", "443"]
ECR_repo         = "python_webapp_repo"