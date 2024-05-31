#1 command line variables
#2 tfvars
#3 environment variables
#4 default variable variables




############### Instance #########################
variable "image_id" {
    type = string
    default = "ami-090252cbe067a9e58"
    description = "RHEL-9 AMI ID"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        project = "Expense"
        environment = "Dev"
        module = "DB"
        name = "DB"
    }
}

############### Security Group #########################
variable "secgrp_name" {
    type = string
    default = "allow_ssh"
}

variable "secgrp_description" {
    type = string
    default = "Allowing port 22 as inbound and all outbound traffic"
}

variable "inbound_port" {
    type = number
    default = "22"
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}