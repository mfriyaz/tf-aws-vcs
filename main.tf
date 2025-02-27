module "network" {
 source = "./modules/network" 
    vpc_cidr = "10.0.0.0/16"  
    subnet_cidr = "10.0.1.0/24"
    availability_zone   = "us-east-1a"
  sg_name             = "my-security-group"
  ingress_port        = 22
  ingress_cidr_blocks = ["0.0.0.0/0"]
}

module "compute" {
  source            = "./modules/compute"
  ami_id            = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID
  instance_type     = "t2.micro"
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
  instance_name     = "my-instance"
}