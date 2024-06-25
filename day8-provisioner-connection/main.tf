resource "aws_instance" "server" {
    ami = "ami-0e1d06225679bc1c5"
    key_name = "anuraj"
    instance_type = "t2.micro"

    connection {
      type = "ssh"
      user = "ec2-user"
      private_key = file("~/.ssh/id_rsa")
      host = self.public_ip
    }
  
   #local execution process
   provisioner "local-exec" {
    command = "touch file500"
     
   }
  #file provisioners to copy a file from local to the remote ec2 instance
   provisioner "file" {
    source = "file10"
    destination = "/home/ec2-user/file500"
     
   }
   #remote exeution process
    provisioner "remote-exec" {
        inline = [ 
            "touch file200",
            "echo hello from aws >>file200",
         ]
      
    }

}

