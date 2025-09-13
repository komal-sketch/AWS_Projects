# Terraform Commands for AWS VPC & VPC Peering Project

A practical, copy‑paste‑friendly README for setting up and managing AWS VPCs, VPC peering, and networking resources using **Terraform**. This document provides step-by-step instructions for working with Terraform to create and manage VPCs, subnets, security groups, and more.

---

## Table of Contents

* [Quick Start / Cheatsheet](#quick-start--cheatsheet)
* [Initialize Terraform](#initialize-terraform)
* [Verify the Terraform Plan](#verify-the-terraform-plan)
* [Apply the Terraform Configuration](#apply-the-terraform-configuration)
* [Check the Infrastructure State](#check-the-infrastructure-state)
* [Destroy the Infrastructure](#destroy-the-infrastructure)
* [Terraform Output](#terraform-output)
* [Validate Terraform Configuration](#validate-terraform-configuration)
* [Plan for a Specific Target](#plan-for-a-specific-target)
* [Refresh Terraform State](#refresh-terraform-state)
* [Check Terraform Providers](#check-terraform-providers)
* [List All Terraform Resources](#list-all-terraform-resources)
* [Import Existing Resources into Terraform](#import-existing-resources-into-terraform)
* [Update Terraform Provider or Modules](#update-terraform-provider-or-modules)
* [Accessing Private Subnet from Public Subnet in the Same VPC](#accessing-private-subnet-from-public-subnet-in-the-same-vpc)
* [Best Practices](#best-practices)

---

## Quick Start / Cheatsheet

> ✅ Use **`terraform`** commands to manage your AWS infrastructure with Terraform.

# Initialize the Terraform working directory
terraform init

# Verify the execution plan before applying
terraform plan

# Apply the configuration to AWS
terraform apply

# Destroy the resources (clean up)
terraform destroy

# Output the Terraform variables and values
terraform output

# Validate the Terraform configuration
terraform validate

# Plan for a specific target (e.g., a specific resource)
terraform plan -target=aws_vpc.vpc_a

# Refresh the state to sync with AWS
terraform refresh

# List all resources managed by Terraform
terraform state list

# Import an existing AWS resource into Terraform management
terraform import aws_vpc.vpc_a vpc-12345678

# Update Terraform provider and modules
terraform get -update


## Initialize Terraform

# Before running any Terraform commands, you must initialize the working directory containing Terraform configuration files. 
# This step will download the necessary provider plugins and initialize your working environment.
terraform init


## Verify the Terraform Plan

# Before applying changes, it's a good practice to review the execution plan. 
# This will show you what resources will be created, modified, or destroyed.
terraform plan


## Apply the Terraform Configuration

# Once you are satisfied with the plan, apply the configuration to create the infrastructure on AWS.
terraform apply

# To skip the confirmation prompt, use:
terraform apply -auto-approve


## Check the Infrastructure State

# You can check the current state of your Terraform-managed infrastructure using:
terraform show


## Destroy the Infrastructure

# If you want to delete all the resources created by Terraform, use the terraform destroy command. 
# This is useful when you want to clean up your environment or stop incurring costs on AWS resources.
terraform destroy

# To skip the confirmation prompt, use:
terraform destroy -auto-approve


## Terraform Output

# To display the outputs from your Terraform configuration, such as the public IP of an EC2 instance, use:
terraform output


## Validate Terraform Configuration

# To check the syntax and correctness of your configuration files, use:
terraform validate


## Plan for a Specific Target

# If you only want to apply or plan for specific resources, you can target them with the -target flag:
terraform plan -target=aws_vpc.vpc_a


## Refresh Terraform State

# If you want to refresh the state of the resources (i.e., sync the state file with the actual resources), use:
terraform refresh


## Check Terraform Providers

# To check which providers are being used in your Terraform project, use:
terraform providers


## List All Terraform Resources

# To see all resources managed by Terraform, use:
terraform state list


## Import Existing Resources into Terraform

# If you have already created resources manually and want to bring them under Terraform management, you can import them using:
terraform import aws_vpc.vpc_a vpc-12345678


## Update Terraform Provider or Modules

# If you want to update the Terraform provider or any modules used in your project, you can run:
terraform get -update


## Accessing Private Subnet from Public Subnet in the Same VPC

### Options:

#### **Using Bastion Host**:

# Launch EC2 in the public subnet.
ssh -i mykey.pem ec2-user@<bastion-public-ip>

# From bastion host, SSH into the private subnet EC2 using private IP:
ssh -i mykey.pem ec2-user@10.0.2.10  # Private IP


#### **Using AWS Systems Manager (SSM)**:

# If EC2 has SSM Agent installed and IAM role attached:
aws ssm start-session --target <private-instance-id>


#### **Using NAT Gateway**:

# If the private subnet needs internet access, deploy a NAT Gateway in the public subnet and update the route tables for the private subnet to route through the NAT Gateway.


## Best Practices for Terraform and AWS:

# Always use IAM roles for EC2 instances and other resources instead of hardcoded credentials.
# Use variables and output files to make your Terraform code reusable and modular.
# Use state backends like S3 to store Terraform state in a centralized and secure way.
# Ensure that security groups follow the principle of least privilege—only allow traffic that is absolutely necessary.

