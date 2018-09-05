resource "aws_route53_zone" "test" {
   name = "test.com"

   tags {
       Environment = "test"
   }
}

resource "aws_route53_record" "server1-record" {
   zone_id = "${aws_route53_zone.test.zone_id}"
   name = "server1.test.com"
   type = "A"
   ttl = "300"
   records = ["${aws_instance.example.private_ip}"]
}
