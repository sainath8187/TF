##### PROJECT NAME ######

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "common_tags" {
    type = map
}

###### VPC #########
variable "cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    type = bool
    default = true 
}

variable "vpc_tags" {
    type = map
    default = {}
}

####### INTERNET GATEWAY ######
variable "igw_tags" {
    type = map
    default = {}
}

###### PUBLIC SUBNET ####
variable "public_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please provide 2 valid public subnet CIDR's"
    }
}

variable "public_subnet_cidrs_tags" {
    type = map
    default = {}
}


###### PRIVATE SUBNET ####
variable "private_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "please provide 2 valid private subnet CIDR's"
    }
}

variable "private_subnet_cidrs_tags" {
    type = map
    default = {}
}


###### DATABASE SUBNET ####
variable "database_subnet_cidrs" {
    type = list 
    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "please provide 2 valid database subnet CIDR's"
    }
}

variable "database_subnet_cidrs_tags" {
    type = map
    default = {}
}

variable "database_subnet_group_tags" {
    type = map 
    default = {}
}


variable "nat_gateway_tags" {
    type = map 
    default = {}
}


######### ROUTE TABLE TAGS #########
variable "public_route_table_tags" {
    type = map 
    default = {}
}

variable "private_route_table_tags" {
    type = map 
    default = {}
}

variable "database_route_table_tags" {
    type = map 
    default = {}
}


############## PEERING #############
variable "is_peering_required" {
    type = bool
    default = false
}

variable "acceptor_vpc_id" {
    type = string
    default = ""
}

variable "vpc_peering_tags" {
    type = map 
    default = {}
}