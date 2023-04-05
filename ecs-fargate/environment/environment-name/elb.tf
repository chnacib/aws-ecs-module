module "alb_main" {
  source          = "../../modules/alb"
  alb_name        = "alb-main"
  internal        = false
  vpc_id          = module.vpc_main.vpc_id
  subnets         = [module.vpc_main_vpc.public_subnet-1_id, module.vpc_main_vpc.public_subnet-2_id, module.vpc_main_vpc.public_subnet-3_id]
  certificate_arn = "arn:aws:acm:us-east-1:xxxxxxxxxxx:certificate/xxxxxxxxxxxxxxxx"
}

module "tg_main" {
  source       = "../../modules/target_group"
  name         = "tg-main"
  port         = 80
  vpc_id       = module.vpc_main.vpc_id
  listener_arn = module.alb_main.listener_arn
  host_header  = ["api.example.com"]
  health_check = "/"
}