terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # backend "s3" {
  #   bucket = "sai-terraform"
  #   key    = "aws-vpc"
  #   region = "us-east-1"
  # }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}