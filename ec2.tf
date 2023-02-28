provider "aws" {
  region = "ap-south-1"
} resource "aws_instance" "example" {
  ami           = "ami-0e742cca61fb65051"
  instance_type = "t2.micro"
  key_name      = "git-runner"
  security_groups = [
    "sg-01d7551c4608b027b"
  ]
    tags = {
    Name = "my-instance"
  }
}
