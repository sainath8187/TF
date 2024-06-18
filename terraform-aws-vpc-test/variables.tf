variable "project_name" {
    type = string
    default = "expense"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}

variable "environment" {
    type = string
    default = "dev"
}
variable "public_subnet_cidrs" {
    default = ["10.0.0.0/24","10.0.1.0/24"]
  
}