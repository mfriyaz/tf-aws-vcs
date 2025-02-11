resource "aws_vpc" "main_01" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true  

    tags = {
      Name = "Riyaz VPC01"
    }
}
resource "aws_subnet" "main_01" {
  vpc_id = aws_vpc.main_01.id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Riyaz Sub01"
  }
  
}