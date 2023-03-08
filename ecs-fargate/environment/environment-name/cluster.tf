module "cluster_main" {
  source           = "../../modules/fargate_cluster"
  ecs_cluster_name = "Cluster-Main-Prod"
}