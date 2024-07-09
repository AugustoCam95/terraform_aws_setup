provider "aws" {
 region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
	  ami = "ami-0195204d5dce06d99"
	  instance_type = "t2.micro"
	  tags = {
		  Name = "eccezinho"
	  }
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "joseaugusto"
  tags = {
    Name = "MyBucket"
    Environment = "Test"
  }
}
