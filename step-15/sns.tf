# Uncomment if you want to have autoscaling notifications

#resource "aws_sns_topic" "new-sns" {
#  name         = "sg-sns"
#  display_name = "new ASG SNS topic"
#} # email subscription is currently unsupported in terraform and can be done using the AWS Web Console
#
#resource "aws_autoscaling_notification" "new-notify" {
#  group_names = ["${aws_autoscaling_group.new-autoscaling.name}"]
#  topic_arn     = "${aws_sns_topic.new-sns.arn}"
#  notifications  = [
#    "autoscaling:EC2_INSTANCE_LAUNCH",
#    "autoscaling:EC2_INSTANCE_TERMINATE",
#    "autoscaling:EC2_INSTANCE_LAUNCH_ERROR"
#  ]
#}
