resource "aws_instance" "MyEC2" {
  ami           = "ami-0e97ea97a2f374e3d" # Change to a valid Windows AMI ID in your region
  instance_type = "t2.nano"
   
  tags = {
    Name = "Amazon Linux"
  }
}
