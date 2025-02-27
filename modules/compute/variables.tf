variable "ami_id" {
    description = "AMI ID for the instance"
    type = string  
}
variable "instance_type" {
    description = "Instnce Type"
    type = string  
}
variable "subnet_id" {
    description = "Subnet ID for instance"
    type = string
  }
variable "security_group_id" {
    description = "Security group ID"
    type = string  
}
variable "instance_name" {
    description = "Name tag for the instance"
    type = string  
}