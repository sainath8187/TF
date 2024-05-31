##### vpc #####
variable cidr_block {
    type = string
    default = "10.0.0.1/16"
}

variable enable_dns_hostnames {
    type = bool
    default = true
}