variable "AWS_REGION" {
  default = "us-west-2"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-5c150e23"
    us-west-2 = "ami-6cd6f714"
    eu-west-1 = "ami-0a8458313ef39d6f6"
  }
}
variable "RDS_PASSWORD" { }
