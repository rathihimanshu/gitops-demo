terraform {
  backend "s3" {
    bucket = "nov23terraformbackend-himanshu"
    access_key = "AKIAXYKJQHVOIT2UIU6M"
    secret_key = "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"
    key    = "terraformbitproject.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = "us-east-1"
  access_key = "AKIAXYKJQHVOIT2UIU6M"
  secret_key = "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"
}
resource "aws_instance" "my-vms" {
  ami = "ami-07caf09b362be10b8"
  instance_type = "t2.micro"
  tags = {
    Name = "demovm-1"
  }
}
