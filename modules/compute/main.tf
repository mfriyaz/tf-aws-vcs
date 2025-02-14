resource "aws_instance" "main_01" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    security_groups = [ var.aws_security_group_id ]
    tags = {
      Name = var.instance_name
    }
  
}