resource "aws_vpc" "main_vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true  

    tags = {
      Name = "Riyaz VPC01"
    }
}
resource "aws_subnet" "main_sub01" {
  vpc_id = aws_vpc.main_vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Riyaz Sub01"
  }
  
}
resource "aws_security_group" "sg01" {
  vpc_id = aws_vpc.main_vpc
  name = var.sg_name
  ingress {
    from_port = var.ingress_port
    to_port = var.ingress_port
    protocol = "tcp"
    cidr_blocks = var.ingress_cidr_blocks
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    
  }
  
}