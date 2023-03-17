module "alb_main" {
  source            = "../../modules/alb"
  alb_name          = "alb-main"
  internal          = false
  vpc_id            = "vpc-xxxxxxxxx"
  subnets           = ["subnet-xxxxxxxxx", "subnet-xxxxxxxxxxxx", "subnet-xxxxxxxxxxxxxx"]
  certificate_arn   = "arn:aws:acm:us-east-1:xxxxxxxxxxx:certificate/xxxxxxxxxxxxxxxx"
}

module "tg_main" {
  source = "../../modules/target_group"
  name = "tg-main"
  port = 80
  vpc_id = "vpc-xxxxxxxxx"
  listener_arn = module.alb_main.listener_arn
  host_header = ["api.example.com"]
  health_check = "/"
}