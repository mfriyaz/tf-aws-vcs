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