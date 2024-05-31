resource "aws_route53_record" "expense" {
  zone_id = var.zone_id
  for_each = aws_instance.expense
  name    = eack.key == "frontend" ? var.domain_name : "${eack.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.value == "frontend" ? [each.value.public_ip] :  [each.value.private_ip]
  # if records already exist
  allow_overwrite = true
}