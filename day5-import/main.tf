resource "aws_instance" "import" {
    ami = "ami-0e1d06225679bc1c5"
    instance_type = "t2.micro"
  
  tags = {
    Name ="vasudevimport"
  }
}

# use this code to import ec2 to terraform
# terraform import aws_instance.import(Localname) i-0127b66d678a0332c (INSTANCE ID FROM EC2)