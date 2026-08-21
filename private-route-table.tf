# Private route table for healthcare application resources
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.healthcare.id

  tags = {
    Name    = "${var.project_name}-private-rt"
    Project = var.project_name
    Type    = "Private"
  }
}

# Associate Private Subnet AZ1 with the private route table
resource "aws_route_table_association" "private_az1" {
  subnet_id      = aws_subnet.private_az1.id
  route_table_id = aws_route_table.private.id
}

# Associate Private Subnet AZ2 with the private route table
resource "aws_route_table_association" "private_az2" {
  subnet_id      = aws_subnet.private_az2.id
  route_table_id = aws_route_table.private.id
}