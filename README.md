/* Phase 1 – Project Setup and VPC Deployment
Objective

The goal for Phase 1 was to establish the foundation for a Secure Rural Healthcare Cloud Infrastructure on AWS using Terraform Infrastructure as Code (IaC).

Tasks Completed
Created the project structure in Visual Studio Code.
Configured Terraform to use the AWS provider.
Created reusable Terraform variables for the AWS region, project name, and VPC CIDR.
Created a dedicated healthcare VPC with a CIDR block of 10.10.0.0/16.
Enabled DNS support and DNS hostnames within the VPC.
Added standardized resource tags for identification and management.
Configured Terraform outputs to display the VPC ID and CIDR block.
Initialized the local Git repository and connected it to GitHub.
Added a .gitignore file to prevent sensitive and unnecessary Terraform files from being committed.
Technologies Used
AWS
Terraform
Visual Studio Code
Git
GitHub
Key Learning

Phase 1 demonstrated how Terraform can be used to create a repeatable and version-controlled AWS network foundation. The VPC will serve as the base infrastructure for the public and private healthcare resources that will be added in subsequent stages. 

Phase 2 - Subnet Design and High Availability
We will use 2 AZs and each AZ will host 2 subnets(private and public). This gives network segmentation and prepares architecture for high availability
EC2 instances launched into those public subnets can automatically receive public IPv4 addresses, subject to the rest of the network configuration.
*/