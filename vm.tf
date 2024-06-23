resource "aws_instance" "MyEC201" {
  ami           = "ami-0b287aaaab87c114d"
  instance_type = "t2.micro"
}
