resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    enable_dns_support = true
    enable_dns_hostnames = true  

    tags = {
      Name = "Riyaz VPC"
    }
}
resource "aws_subnet" "main" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  
}