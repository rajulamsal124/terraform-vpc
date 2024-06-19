# Terraform AWS VPC Setup

This repository contains Terraform code to set up a Virtual Private Cloud (VPC) on Amazon Web Services (AWS). The configuration includes subnets, route tables, internet gateways, and other necessary components to deploy a secure and scalable VPC infrastructure.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) v1.0.0 or later
- AWS CLI configured with the appropriate credentials and region
- An AWS account with permissions to create VPC resources

## Repository Structure

The repository is structured as follows:

```
.
├── main.tf
├── variables.tf
├── public.tf
├── private.tf
├── providers.tf
├── terraform.tfvars.tf
├── variables.tf
└── README.md
```

## Configuration

### 1. Provider Configuration

Ensure you have configured the AWS provider with your credentials. This can be done in the `provider.tf` file.

### 2. Input Variables

The `variables.tf` file contains the input variables used in the Terraform configuration. Modify these variables as needed.

### 3. Main Configuration

The `main.tf` file contains the primary configuration for the VPC and its components.

### 4. Outputs

The `outputs.tf` file specifies the outputs of the Terraform configuration, such as the VPC ID and subnet IDs.

## Usage

1. **Initialize Terraform**: Initialize the Terraform working directory.

```sh
terraform init
```

2. **Plan the Deployment**: Create an execution plan to preview the changes.

```sh
terraform plan
```

3. **Apply the Configuration**: Apply the Terraform configuration to create the VPC and its components.

```sh
terraform apply
```

4. **Destroy the Resources**: When you no longer need the infrastructure, you can destroy it.

```sh
terraform destroy
```

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contributing

Contributions are welcome! Please submit a pull request or open an issue to discuss your changes.

## Contact

For any questions or issues, please open an issue in this repository.

---

Thank you for using this Terraform configuration for setting up a VPC on AWS!
