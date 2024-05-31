resource "aws_instance" "server" {
  ami           = "ami-090252cbe067a9e58"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0e49c4c0572a7c284"]  
  tags = {
    Name = "server"
  }
}