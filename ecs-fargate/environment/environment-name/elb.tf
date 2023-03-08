module "alb_main" {
  source            = "../../modules/alb"
  alb_name          = "alb-main"
  internal          = false
  vpc_id            = "vpc-xxxxxxxxx"
  subnets           = ["subnet-xxxxxxxxx", "subnet-xxxxxxxxxxxx", "subnet-xxxxxxxxxxxxxx"]
  target_group_port = 3000
  certificate_arn   = "arn:aws:acm:us-east-1:xxxxxxxxxxx:certificate/xxxxxxxxxxxxxxxx"
  health_check = "/"
}

