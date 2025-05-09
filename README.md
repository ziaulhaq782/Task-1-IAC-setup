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


## Requirements

- Terraform >= 1.0
- AWS CLI configured with appropriate access
- An AWS account

## Usage

1. **Clone the repository**

```bash
git clone <repo_url>
cd terraform_microservices_env

2. Initialize Terraform

    terraform init

3. Review and modify terraform.tfvars as needed

    aws_region = "us-east-1"

4. Plan the deployment

    terraform plan

5. Apply the configuration
    terraform apply

Outputs
    load_balancer_dns – Public DNS of the ALB for accessing your service.


Notes
    The EC2 instance user data installs a simple Apache server with a test page.

    IAM role attached to EC2 allows basic logging and S3 read access. Modify IAM policy as needed.

    AMI used: Amazon Linux 2 (ami-0c55b159cbfafe1f0). You can change this in the ASG module.

