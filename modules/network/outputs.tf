output "vpc_id" {
    value = aws_vpc.main_01.id  
}

output "Subnet_id" {
    value = aws_subnet.main_01.id 
}

output "aws_security_group_id" {
    value = aws_security_group.sg01.id
  
}