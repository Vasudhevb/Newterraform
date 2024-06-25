resource "aws_instance" "name" {
    ami = "ami-0e1d06225679bc1c5"
    instance_type = "t2.micro"
    key_name = "anuraj"
  
}

resource "aws_s3_bucket" "name" {
    bucket = "vasudhevvnikihtharoy"
    depends_on = [ aws_instance.name ]
  
}