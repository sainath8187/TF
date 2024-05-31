resource "aws_instance" "expense" {
    for_each =var.instance_names
    ami           = data.aws_ami.aws_id.id
    instance_type = each.value
    vpc_security_group_ids = ["sg-0e49c4c0572a7c284"]  
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}