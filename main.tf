terraform {
  backend "s3" {
    bucket = "giopsdemo-himanshu"
    key    = "terraformbitproject.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "my-vms" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  tags = {
    Name = "demovm-1"
  }
}
