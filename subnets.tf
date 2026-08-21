# Public subnet in Availability Zone 1
resource "aws_subnet" "public_az1" {
  vpc_id                  = aws_vpc.healthcare.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "${var.aws_region}a"
  map_public_ip_on_launch = true #enabled for public subnet

  tags = {
    Name    = "${var.project_name}-public-az1"
    Project = var.project_name
    Type    = "Public"
  }
}

# Public subnet in Availability Zone 2
resource "aws_subnet" "public_az2" {
  vpc_id                  = aws_vpc.healthcare.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "${var.aws_region}b"
  map_public_ip_on_launch = true #enabled for public subnet

  tags = {
    Name    = "${var.project_name}-public-az2"
    Project = var.project_name
    Type    = "Public"
  }
}

# Private subnet in Availability Zone 1
resource "aws_subnet" "private_az1" {
  vpc_id            = aws_vpc.healthcare.id
  cidr_block        = "10.10.11.0/24"
  availability_zone = "${var.aws_region}a"

  tags = {
    Name    = "${var.project_name}-private-az1"
    Project = var.project_name
    Type    = "Private"
  }
}

# Private subnet in Availability Zone 2
resource "aws_subnet" "private_az2" {
  vpc_id            = aws_vpc.healthcare.id
  cidr_block        = "10.10.12.0/24"
  availability_zone = "${var.aws_region}b"

  tags = {
    Name    = "${var.project_name}-private-az2"
    Project = var.project_name
    Type    = "Private"
  }
}