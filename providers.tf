
terraform {
  backend "remote" {
    organization = "rsoft"

    workspaces {
      name = "online-delivery-app"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.2"
}

provider "aws" {
  region = "us-east-2"
  allowed_account_ids = [
    var.account_id
  ]

}
