resource "aws_instance" "InstanceName" {
  ami = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  provisioner "local-exec" {
     command = "echo ${aws_instance.InstanceName.private_ip} >> private_ips.txt"
  }

  tags {
    Name = "InstanceName"
  }
}
output "ip" {
    value = "${aws_instance.InstanceName.public_ip}"
}
