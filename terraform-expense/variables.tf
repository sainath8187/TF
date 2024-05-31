variable "instance_names" {
    type = list
    default = ["db","frontend","backend"]
}

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

variable "common_tags" {
    default = {
        project = "Expense"
        environment = "Dev"
        terraform = "true"
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

######### r53 ###########
variable "zone_id" {
    default =   "<replace with id>"           # need to add route53 hosted zone id
}

variable "domain_name" {
    default = "<domain-name>"           # need to replace with domain name   
}