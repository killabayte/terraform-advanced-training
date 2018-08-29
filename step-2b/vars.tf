variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-west-2"
}
variable "WIN_AMIS" {
  type = "map"
  default = {
    us-east-1 = ""
    us-west-2 = "ami-6d336015"
    eu-west-1 = ""
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "INSTANCE_USERNAME" {
  default = "Terraform"
}
variable "INSTANCE_PASSWORD" { }
