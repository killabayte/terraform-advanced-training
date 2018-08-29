provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-529fb82a"
  instance_type = "t2.micro"

  subnet_id= "YOU_DEFAULT_SUBNET"

  tags {
    Name = "Example"
  }
}
