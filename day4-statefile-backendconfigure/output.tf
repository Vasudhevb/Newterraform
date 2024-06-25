output "public" {
    value = aws_instance.dev.public_ip
    sensitive = true
  
}
output "private" {
    value = aws_instance.dev.private_ip

  
}