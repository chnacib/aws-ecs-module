module "service_main" {
  source              = "../../modules/ecs_service"
  cluster_id          = module.cluster_main.id
  service_name        = "svc-xxxxxxxxxx"
  task_definition_arn = module.task_main.arn
  service_port        = module.task_main.container_port
  desired_count       = 0
  vpc_id              = module.vpc_main.vpc_id
  subnets             = [module.vpc_main_vpc.private_subnet-1_id, module.vpc_main_vpc.private_subnet-2_id, module.vpc_main_vpc.private_subnet-3_id]
  assign_public_ip    = false
  load_balancer       = true
  container_port      = module.task_main.container_port # comment this line if load_balancer = false
  container_name      = module.task_main.container_name # comment this line if load_balancer = false
  target_group_arn    = module.tg_main.arn              # comment this line if load_balancer = false
}






