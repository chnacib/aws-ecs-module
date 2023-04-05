resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = var.record
  type    = "CNAME"
  ttl     = 60
  records = var.value
}