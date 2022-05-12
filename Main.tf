terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "local" {
    path = "./temp/terraform.tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {
  region                  = local.region
  shared_credentials_file = "~/.aws/credentials"
}

locals {
  region = "eu-west-2"
}
