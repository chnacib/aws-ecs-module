resource "aws_lb_target_group" "main" {
  name        = var.name
  port        = var.port
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"

  health_check {
    path = var.health_check
  }


  tags = {
    Name = var.name
  }
}

output "arn" {
  value = aws_lb_target_group.main.arn  
}

resource "aws_lb_listener_rule" "main" {
  listener_arn = var.listener_arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main.arn
  }

  condition {
    host_header {
      values = var.host_header
    }
  }
}