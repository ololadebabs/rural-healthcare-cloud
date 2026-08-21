# Public route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.healthcare.id

  tags = {
    Name    = "${var.project_name}-public-rt"
    Project = var.project_name
    Type    = "Public"
  }
}

# Default route to the Internet Gateway
resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"                            #Send traffic destined for anywhere outside the VPC to the Internet Gateway
  gateway_id             = aws_internet_gateway.healthcare_igw.id #specifies which internet gateway to use
}

# Associate Public Subnet AZ1 with public route table
resource "aws_route_table_association" "public_az1" {
  subnet_id      = aws_subnet.public_az1.id
  route_table_id = aws_route_table.public.id
}

# Associate Public Subnet AZ2 with public route table
resource "aws_route_table_association" "public_az2" {
  subnet_id      = aws_subnet.public_az2.id
  route_table_id = aws_route_table.public.id
}