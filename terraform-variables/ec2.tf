resource "aws_instance" "server" {
  ami           = var.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]  
  tags = var.tags
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

