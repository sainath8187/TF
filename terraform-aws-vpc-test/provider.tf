terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "sai-tf"
    key    = "expense-vpc"
    region = "us-east-1"
    dynamodb_table = "daws-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}