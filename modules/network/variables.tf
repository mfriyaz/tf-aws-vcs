variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string       
}

variable "subnet_cidr" {
    description = "CIDR block for subnet"
    type = string  
}
variable "availability_zone" {
    description = "AWS availability zone for subnet"  
}
variable "sg_name" {
    description = "SG main 01"
    type = string 
  }
  variable "ingress_port" {
    description = "Ingress port for the security group"
    type = number    
  }
  variable "ingress_cidr_blocks" {
    description = "Allowed CIDR blocks for ingress"
    type = list(string)
  }