# Internet Gateway for the healthcare VPC. THe igw is attached to the vpc
resource "aws_internet_gateway" "healthcare_igw" {
  vpc_id = aws_vpc.healthcare.id

  tags = {
    Name    = "${var.project_name}-igw"
    Project = var.project_name
  }
}