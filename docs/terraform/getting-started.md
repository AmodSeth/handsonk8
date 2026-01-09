# Getting Started with Terraform

## Installation

### macOS
```bash
brew install terraform
```

### Verify Installation
```bash
terraform version
```

## Basic Workflow

1. **Write** - Author infrastructure as code
2. **Plan** - Preview changes before applying
3. **Apply** - Provision reproducible infrastructure

## First Steps

```bash
terraform init    # Initialize working directory
terraform plan     # Create execution plan
terraform apply    # Execute the actions proposed in plan
terraform destroy  # Destroy managed infrastructure
```