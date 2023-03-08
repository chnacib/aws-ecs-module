resource "aws_ecs_cluster" "fargate-cluster" {
  name = var.ecs_cluster_name

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

output "id" {
  value = aws_ecs_cluster.fargate-cluster.id
}