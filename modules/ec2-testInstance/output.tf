output "instance-output" {
  value = aws_instance.TestInstance.public_ip
}