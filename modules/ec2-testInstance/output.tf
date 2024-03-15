output "instance1-output" {
  value = aws_instance.TestInstance[0].public_ip
}
