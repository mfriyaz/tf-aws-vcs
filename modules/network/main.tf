resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support = true
  }

  resource "aws_subnet" "main" {
   vpc_id = aws_vpc.main.id
   cidr_block = var.aws_subnet
   availability_zone = var.availability_zone
   map_public_ip_on_launch = true
      }
  
  resource "aws_security_group" "main" {
    vpc_id = aws_vpc.main.id
    name = var.sg_name

    ingress {
      from_port = var.ingress_port
      to_port = var.ingress_port
      protoprotocol = "tcp"
      cidr_block = var.ingress_cidr_blocks   
       }
     egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
     }
      }
  