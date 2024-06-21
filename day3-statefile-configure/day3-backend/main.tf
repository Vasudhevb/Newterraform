provider "aws"{

}
resource "aws_instance" "name" {
    ami = "ami-0e1d06225679bc1c5"
    key_name = "anuraj"
    instance_type = "t2.micro"

    tags = {
      Name ="vasu_backend"
    }

  
}