resource "aws_instance" "sandbox" {
    ami = var.ami
    instance_type = var.instance_type
    for_each = toset(var.sandboxes)
    tags = {
      Name =each.value
    }
  
}