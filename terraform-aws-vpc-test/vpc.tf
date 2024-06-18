module "vpc" {
    source = "../terrform-aws-vpc"
    project_name = var.project_name
    common_tags = var.common_tags
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
}