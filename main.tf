resource "aws_instance" "MyEC2" {
  ami           = "ami-0e97ea97a2f374e3d" # Change to a valid Windows AMI ID in your region
  instance_type = "t2.micro"
   
  tags = {
    Name = "Amazon Linux"
  }

resource "aws_security_group" "rdp" {
  name        = "allow_rdp"
  description = "Allow RDP inbound traffic"
  
  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
}
