# Terraform AWS Microservices Environment

This project provisions a secure and scalable AWS environment for a microservices-based application using Terraform.

## Features

- **Custom VPC** with public and private subnets across availability zones
- **Security Groups** enforcing the principle of least privilege
- **Application Load Balancer (ALB)** to route external traffic securely
- **Auto Scaling Group (ASG)** with Launch Template to host web service instances
- **IAM Role** and **Instance Profile** for EC2 with scoped permissions to AWS services

## Folder Structure

terraform_microservices_env/
├── main.tf
├── terraform.tfvars
├── variables.tf
├── outputs.tf
├── modules/
│ ├── network/
│ │ └── main.tf
│ ├── security/
│ │ └── main.tf
│ ├── alb/
│ │ └── main.tf
│ ├── asg/
│ │ └── main.tf
│ └── iam/
│ └── main.tf