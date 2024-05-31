variable "instance_names" {
    type = map 
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
  
}

variable "common_tags" {
    type = map 
    default = {
        project = "expense"
        terraform = "true"
    }
}

variable "domain_name" {
    default = ["enter the domain name"]              # enter domain name
}

variable "zone_id" {
    default =   "<replace with id>"           # need to add route53 hosted zone id
}