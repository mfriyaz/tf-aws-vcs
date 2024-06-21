resource "aws_instance" "MyEC2" {
  ami           = "ami-0b287aaaab87c114d"
  instance_type = "t2.nano"
}
