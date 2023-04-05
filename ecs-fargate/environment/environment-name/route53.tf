module "record_1" {
  source  = "../../modules/route53_record"
  zone_id = "XXXXXX"
  record  = "xxxxxxxxxxxxxxx"
  value   = ["xxxxxxxxxxxxxxxxx"]
}