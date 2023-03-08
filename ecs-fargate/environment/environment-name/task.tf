module "task_main" {
  source             = "../../modules/task_definition/1"
  task_name          = "task-main"
  container_name     = "container-main"
  container_port     = 3000
  container_image    = module.ecr_main.repository_uri
  essential          = true
  cpu                = 1024
  memory             = 2048
  log_retention_days = 7
  environment_s3_arn = "arn:aws:s3:::xxxxxxxxxx"
  region             = local.region
}



