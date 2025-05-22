# AWS-ECS-AWS-Fargate-Setup-Amazon-ECS-Sample-App-Deployment
# 🚀 AWS ECS & Fargate Deployment Automation

This repository provides a complete, production-grade automation stack for deploying a containerized “Congratulations!” sample web application to Amazon ECS on AWS Fargate. Everything you need—from infrastructure provisioning to application deployment and cleanup—is codified in Terraform and shell scripts.

---

![WhatsApp Image 2025-05-22 at 02 39 12_db43a7da](https://github.com/user-attachments/assets/74c081be-44e3-4b27-b0fd-3cada1ee8e79)

## 📈 Features

- **Infrastructure as Code**  
  - Terraform modules for VPC, subnets, security groups, ECS cluster, and task definitions  
  - Remote state management in S3 with DynamoDB locking  
- **Container Orchestration**  
  - ECS cluster creation using Fargate capacity providers  
  - Sample HTTPD “Congratulations!” application delivered via a Fargate task definition  
  - Support for one-off tasks and long-running services  
- **DevOps Tooling**  
  - Shell scripts for AWS CLI bootstrap, cluster/task/service management, and cleanup  
  - Optional SQL Server CLI installation and connectivity tests (for Windows RDS scenarios)  

---

![WhatsApp Image 2025-05-22 at 02 39 14_dcd82a25](https://github.com/user-attachments/assets/e9005484-9e3d-4203-aad3-bc54015f41d1)

## 📂 Repository Structure

```text
.
├── README.md                     # This file
├── .gitignore
├── provider.tf                   # AWS provider & S3 backend config
├── variables.tf                  # Terraform variables declarations
├── vpc.tf                        # VPC & public subnets
├── security_group.tf             # Security group rules
├── task-definition.json          # ECS Fargate task definition
├── install_aws_cli.sh            # AWS CLI v2 installer
├── create_cluster.sh             # ECS cluster creation script
├── run_task.sh                   # One-off Fargate task runner
├── create_service.sh             # Fargate service deployment script
├── cleanup.sh                    # Tear-down of ECS resources
└── scripts/                      # Optional Windows/RDS utilities
    ├── install_sqlcmd.sh         # Installs sqlcmd CLI on Linux
    ├── test_sqlserver_connection.sh # Validates SQL Server connectivity
    └── commands.sh               # Orchestrator for all steps

📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |
