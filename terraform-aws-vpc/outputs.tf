# output "azs" {
#     value = data.aws_availability_zones.available.names # because we require available zone names
# }

output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet" {
    value = aws_subnet.public[*].id
}

output "private_subnet" {
    value = aws_subnet.private[*].id
}

output "database_subnet" {
    value = aws_subnet.database[*].id
}