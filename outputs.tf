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