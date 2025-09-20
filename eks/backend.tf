terraform {
  required_version = ">= 1.9.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-yash-tf-bucket"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    # dynamodb_table = "Lock-Files"  # Commented out for now
    encrypt        = true
  }
}
provider "aws" {
  region = var.aws-region
}
