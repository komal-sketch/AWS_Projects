# AWS VPC & VPC Peering Project

## Overview
This repository demonstrates the creation of AWS Virtual Private Clouds (VPCs), VPC peering, public/private subnets, and security configurations using **Terraform**. It also includes the steps for accessing private subnets from public subnets in the same VPC and configuring secure VPC peering for cross-VPC communication.

### Project Objectives:
- Create multiple VPCs with CIDR blocks.
- Set up public and private subnets.
- Configure internet gateways and route tables.
- Implement VPC peering for inter-VPC communication.
- Enable private subnet communication with resources in the same or peered VPC.

---

## Prerequisites

- **Terraform**: Make sure Terraform is installed on your machine. You can install it by following the instructions on the [Terraform website](https://www.terraform.io/downloads.html).
- **AWS CLI**: Ensure AWS CLI is configured with your AWS credentials. You can configure it using the `aws configure` command.
- **Git**: Git is required to clone the repository.

---

## Setup and Configuration

### 1. Clone the Repository
```bash
git clone https://github.com/<your-username>/aws-vpc-peering-project.git
cd aws-vpc-peering-project
