provider "aws" {
 region = "us-east-2"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-06c68f701d8090592" # Replace this with the valid AMI ID
  instance_type = "t2.micro"
  # other configurations
}



resource "aws_s3_bucket" "my_bucket" {
 bucket = "joseaugusto"
 tags = {
 Name = "MyS3Bucket"
  Environment = "Test"
 }
}
