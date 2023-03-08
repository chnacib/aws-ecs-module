module "service_main" {
  source              = "../../modules/ecs_service"
  cluster_id          = module.cluster_main.id
  service_name        = "svc-xxxxxxxxxx"
  task_definition_arn = module.task_main.arn
  service_port        = module.task_main.container_port
  desired_count       = 0
  vpc_id              = "vpc-xxxxxxxxxxxxx"
  subnets             = ["subnet-xxxxxx", "subnet-xxxxxxxxx", "subnet-xxxxxxxxx"]
  assign_public_ip    = false
  load_balancer       = true
  container_port      = module.task_main.container_port  # comment this line if load_balancer = false
  container_name      = module.task_main.container_name  # comment this line if load_balancer = false
  target_group_arn    = module.alb_main.target_group_arn # comment this line if load_balancer = false
}






