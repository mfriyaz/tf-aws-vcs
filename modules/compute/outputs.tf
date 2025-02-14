output "instance_id" {
  value = aws_instance.main_01.id
}

output "instance_public_ip" {
  value = aws_instance.main_01.public_ip
}
