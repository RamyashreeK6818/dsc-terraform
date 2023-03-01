terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.56"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami = "ami-086b3de06dafe36c5"
  instance_type = "t3.medium"

  tags = {
    Name = "EC2_Instance"
  }
}
