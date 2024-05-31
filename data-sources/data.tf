data "aws_ami" "aws_id" {
    most_recent = true
    owners = ["973714476881"]
    filter {
    name   = "AMI_name"
    values = ["RHEL-9-DevOps-Practice"]
    }

}