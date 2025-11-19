# Infrastructure as Code - Terraform

This directory contains Terraform configuration to deploy Azure infrastructure for the Retail Monolith application.

## Resources

- **Resource Group**: Container for Azure resources
- **Virtual Network**: Azure VNet with configurable address space
- **Subnet**: Default subnet within the VNet

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) >= 1.0
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- Azure subscription with appropriate permissions

## Authentication

Authenticate with Azure before running Terraform:

```bash
az login
```

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Preview the deployment:
```bash
terraform plan
```

3. Deploy the infrastructure:
```bash
terraform apply
```

4. Destroy the infrastructure (when needed):
```bash
terraform destroy
```

## Customization

You can customize the deployment by creating a `terraform.tfvars` file or passing variables via command line:

```bash
terraform apply -var="location=westus2" -var="vnet_name=my-custom-vnet"
```

## Outputs

After deployment, the following outputs will be available:
- Resource group name
- Virtual network ID and name
- Subnet ID and name
