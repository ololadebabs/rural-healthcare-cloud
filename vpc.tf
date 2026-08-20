#This creates the main isolated AWS network for the project. The CIDR is 10.10.0.0/16 which
#gives a large private address space that we'll divide into public and private subnets tomorrow.
resource "aws_vpc" "healthcare" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.project_name}-vpc"
    Project     = var.project_name
    Environment = "demo"
    Purpose     = "Rural Healthcare Cloud Infrastructure"
  }
}