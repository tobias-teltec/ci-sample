# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "awsterraform"
}
resource "aws_instance" "modeloteste" {
  ami = "ami-00a208c7cdba991ea"
  instance_type = "t2.micro"
}