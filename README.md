# Azure Network & Storage Infrastructure — Terraform

Small Infrastructure as Code project provisioning a basic, secure network setup on Azure using Terraform.

## What it creates
- Resource Group
- Virtual Network with a subnet
- Network Security Group (allows HTTPS inbound, explicitly denies SSH inbound)
- Storage Account (Blob storage)

Resource names are parameterized via variables rather than hardcoded, so the same configuration can be reused across environments.

## Variables
- `location` — Azure region for all resources (default: `France Central`)
- `project_name` — base name used for resource naming (default: `yasmine-portfolio`)

## Why this setup
This follows the principle of exposing the minimum necessary — only HTTPS traffic is allowed in, SSH is explicitly denied, and resources stay within a private network boundary secured by NSG rules.

## Usage
\`\`\`bash
terraform init
terraform plan
terraform apply
\`\`\`

## Tech
Terraform, Azure (azurerm provider)