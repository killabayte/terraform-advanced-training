resource "aws_launch_configuration" "new-launchconfig" {
  name_prefix          = "new-launchconfig"
  image_id             = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type        = "t2.small"
  key_name             = "${aws_key_pair.mykeypair.key_name}"
  security_groups      = ["${aws_security_group.allow-ssh.id}"]
}

resource "aws_autoscaling_group" "new-autoscaling" {
  name                 = "new-autoscaling"
  vpc_zone_identifier  = ["${aws_subnet.main-public-1.id}", "${aws_subnet.main-public-2.id}"]
  launch_configuration = "${aws_launch_configuration.new-launchconfig.name}"
  min_size             = 1
  max_size             = 2
  health_check_grace_period = 300
  health_check_type = "EC2"
  force_delete = true

  tag {
      key = "Name"
      value = "ec2 pure instance from new ASG"
      propagate_at_launch = true
  }
}
