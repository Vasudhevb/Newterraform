provider "aws" {
    region ="ap-south-1"
  
}
resource "aws_instance" "name" {
    ami="ami-0e1d06225679bc1c5"
    key_name = "anuraj"
    instance_type = "t2.micro"
    user_data = file("test.sh")

tags = {
  Name ="vasu"
}

  
}