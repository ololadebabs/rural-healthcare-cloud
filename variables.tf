# Defines the AWS region where the project's resources will be deployed.
# Other Terraform files can reference this value using var.aws_region.
variable "aws_region" {
  description = "AWS region for the healthcare infrastructure"
  type        = string
  default     = "us-east-1"
}

# Defines a reusable name for the project.
# This will be used when naming and tagging AWS resources.
variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "rural-healthcare-cloud"
}

# Defines the private IP address range that will be assigned to the VPC.
# The /16 network provides addresses that can later be divided into smaller subnets.
variable "vpc_cidr" {
  description = "CIDR block for the healthcare VPC"
  type        = string
  default     = "10.10.0.0/16"
}