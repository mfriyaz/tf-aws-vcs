variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string
}
variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type = string
  }
variable "sg_name" {
    description = "Name of the security group"
    type = string  
}
variable "avavailability_zone" {
    description = "AWS availability zone for the subnet"
    type = string  
}
variable "ingress_port" {
    description = "Ingress port for the security group"
    type = number
}
variable "ingress_cidr_blocks" {
    description = "allowed CIDR block for ingress"
    type = list(string)  
}