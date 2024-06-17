provider "aws" {
  region  = "us-east-1"
}

terraform {
   backend "s3" {
       bucket = "withoutif-terraform-demo"
       key    = "terraform.tfstate"
       region = "us-east-1"
   }
}

resource "aws_instance" "test-instance" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"
  tags = {
    Name = "test-instance"
  }
}
