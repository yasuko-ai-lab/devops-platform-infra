devops-platform-infra – Terraform

Infrastructure-as-Code for provisioning AWS resources for the DevOps Platform.

This repository uses Terraform with a remote S3 backend and DynamoDB state locking.

Architecture (Current State)

This Terraform configuration creates:

VPC (10.0.0.0/16)

2 Public Subnets

2 Private Subnets

Internet Gateway

Route Tables + Associations

Security Groups

Remote Backend (S3 + DynamoDB – bootstrapped separately)

📁 Directory Structure
terraform/
├── backend.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .terraform.lock.hcl
└── bootstrap-remote-state/
bootstrap-remote-state/

Used once to create:

S3 bucket for Terraform state

DynamoDB table for state locking

This directory uses local state.
