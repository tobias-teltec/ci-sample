  1 # Configure the AWS Provider
  2 provider "aws" {
  3   region  = "us-east-1"
  4     5   profile = "awsterraform"
  6 }
  7 
  8 
  9 resource "aws_instance" "modeloteste" {
 10   ami = "ami-00a208c7cdba991ea"
 11   instance_type = "t2.micro"
 12 }