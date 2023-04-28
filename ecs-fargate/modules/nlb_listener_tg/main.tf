resource "aws_lb_listener" "main" {
  load_balancer_arn = var.load_balancer_arn
  port              = var.listener_port
  protocol          = "TCP"
  
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }
  
}

resource "aws_lb_target_group" "main" {
  name        = var.target_group_name
  port        = var.target_group_port
  protocol    = "TCP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    path = var.health_check
  }


  tags = {
    Name = var.target_group_name
  }
}

output "arn" {
  value = aws_lb_target_group.main.arn
  
}

output "listener_port" {
  value = aws_lb_listener.main.port
}