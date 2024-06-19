# terraform {
#   cloud {
#     organization = "rsoft"

#     workspaces {
#       name = "online-delivery-app"
#     }
#   }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }
resource "aws_vpc" "amc-vpc" {
  tags       = merge(var.tags, {})
  cidr_block = var.vpc_cidr
}
