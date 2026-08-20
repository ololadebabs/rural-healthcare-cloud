#After deployment, Terraform will show the VPC ID
output "vpc_id" {
  description = "ID of the healthcare VPC"
  value       = aws_vpc.healthcare.id
}

output "vpc_cidr" {
  description = "CIDR block of the healthcare VPC"
  value       = aws_vpc.healthcare.cidr_block
}