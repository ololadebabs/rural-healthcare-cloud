#After deployment, Terraform will show the VPC ID
output "vpc_id" {
  description = "ID of the healthcare VPC"
  value       = aws_vpc.healthcare.id
}

output "vpc_cidr" {
  description = "CIDR block of the healthcare VPC"
  value       = aws_vpc.healthcare.cidr_block
}

output "public_subnet_ids" {
  description = "IDs of the public healthcare subnets"
  value = [
    aws_subnet.public_az1.id,
    aws_subnet.public_az2.id
  ]
}

#Terraform will tell us the IDs of the four subnets after deployment.
output "private_subnet_ids" {
  description = "IDs of the private healthcare subnets"
  value = [
    aws_subnet.private_az1.id,
    aws_subnet.private_az2.id
  ]
}

output "internet_gateway_id" {
  description = "ID of the healthcare Internet Gateway"
  value       = aws_internet_gateway.healthcare_igw.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "ID of the private route table"
  value       = aws_route_table.private.id
}

output "public_security_group_id" {
  description = "ID of the public-facing security group"
  value       = aws_security_group.public_sg.id
}

output "private_app_security_group_id" {
  description = "ID of the private application security group"
  value       = aws_security_group.private_app_sg.id
}