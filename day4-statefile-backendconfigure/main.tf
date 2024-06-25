resource "aws_instance" "dev" {
    ami = var.ami
    key_name = var.key_name
    instance_type = var.instance_type
    availability_zone = "ap-south-1a"

    tags = {
      Name = "Vasudev"
    }
}