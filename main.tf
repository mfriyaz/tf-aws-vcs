/*resource "aws_instance" "MyEC2" {
  ami           = "ami-0e97ea97a2f374e3d" # Change to a valid Windows AMI ID in your region
  instance_type = "t2.micro"
   
  tags = {
    Name = "Amazon EC2 Linux"
  }
}
*/
module "network" {
  source = "./modules/network"
  vpc_cidr = "10.0.0.0/16"  
  subnet_cidr = "10.0.1.0/24" 
  availability_zone = "ap-southeast-1a"
  sg_name = "my-security-group"
  ingress_port = 22
  ingress_cidr_blocks = [ "0.0.0.0/0" ]
}
module "compute" {
  source            = "./modules/compute"
  ami_id            = "ami-039454f12c36e7620" # Replace with a valid AMI ID
  instance_type     = "t2.micro"
  subnet_id         = module.network.subnet_id
  security_group_id = module.network.security_group_id
  instance_name     = "my-instance"
}
