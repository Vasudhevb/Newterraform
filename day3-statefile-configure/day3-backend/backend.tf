terraform {
  backend "s3" {
    bucket = "lkjhoiuadsfnmvb"
    key ="folder-2/terraform.tfstate"
    region = "ap-south-1"
    
  }
}