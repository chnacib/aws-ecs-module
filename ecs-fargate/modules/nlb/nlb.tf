resource "aws_lb" "main" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = "network"
  subnets            = var.subnets
  enable_deletion_protection = var.enable_deletion_protection
}

output "name" {
    value = aws_lb.main.name
  
}

output "arn" {
    value = aws_lb.main.arn
  
}

output "dns_name" {
  value = aws_lb.main.dns_name
  
}