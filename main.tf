resource "aws_key_pair" "example" {
  key_name   = "example-key" # Change to your desired key pair name
  public_key = file("D:/AUTOMATION/2024") # Change to your public key file path
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

resource "aws_instance" "windows" {
  ami           = "ami-0c55b159cbfafe1f0" # Change to a valid Windows AMI ID in your region
  instance_type = "t2.micro"
  key_name      = aws_key_pair.example.key_name
  security_groups = [aws_security_group.rdp.name]
  
  tags = {
    Name = "WindowsServer"
  }
}
