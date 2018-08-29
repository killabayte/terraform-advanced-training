variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-west-2"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-5c150e23"
    us-west-2 = "ami-529fb82a"
    eu-west-1 = "ami-0a8458313ef39d6f6"
  }
}
