output "instance_id" {
    value = aws_instance.inported_ec2.id  
}
output "sg_id" {
    value = aws_security_group.imported_sg.id
}