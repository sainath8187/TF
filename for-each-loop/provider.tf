terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "daws-sai-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "daws-locking"
  }
}
provider "aws" {
  region = "us-east-1"
}  