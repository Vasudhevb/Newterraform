provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "name" {
    ami ="ami-0e1d06225679bc1c5"
    instance_type = "t2.nano"
    key_name = "anuraj"

    tags = {
      Name ="nikki"
    }
  #lifecycle {
   # prevent_destroy =  true
  #}

  #lifecycle {
   # ignore_changes = [ tags,instance_type ]
  #}
    #lifecycle {
    #create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
 # }

}