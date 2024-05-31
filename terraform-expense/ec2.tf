resource "aws_instance" "expense" {
    count = length(var.instance_names)
    ami           = var.image_id
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]  
    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }
    )
}

resource "aws_security_group" "allow_ssh" {
    name        = var.secgrp_name
    description = var.secgrp_description

    ingress {
        from_port       = var.inbound_port
        to_port         = var.inbound_port
        protocol        = var.protocol
        cidr_blocks     = var.cidr_blocks
    }
    egress {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"  #all protocols
        cidr_blocks     = var.cidr_blocks
    }
  
    tags = {
        Name = "allow_ssh"
        Createdby = "Sainath"
    }
}

