variable "ami" {
    type = string
    default = "ami-0e1d06225679bc1c5"

  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "anuraj"
  
}
variable "sandboxes" {
    type = list(string)
    default = [ "dev","prod" ]


}