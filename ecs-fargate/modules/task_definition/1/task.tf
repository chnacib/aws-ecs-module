resource "aws_ecs_task_definition" "main" {
  family                   = var.task_name
  cpu                      = var.cpu
  memory                   = var.memory
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  execution_role_arn       = aws_iam_role.main.arn
  task_role_arn            = aws_iam_role.main.arn
  container_definitions = jsonencode([{
      name        = var.container_name
      image       = var.container_image
      essential   = true
      environmentFiles = [
        {
          "value" : var.environment_s3_arn,
          "type" : "s3"
        }
      ]
      portMappings = [
        {
          containerPort = var.container_port
          hostPort      = var.container_port
        }
      ]
      logConfiguration = {
        logDriver = "awslogs"
        options = {
          awslogs-group         = "${aws_cloudwatch_log_group.log_group.name}"
          awslogs-region        = "${var.region}"
          awslogs-stream-prefix = "${var.container_name}"

        }
      }
    }])

}

resource "aws_cloudwatch_log_group" "log_group" {
  name              = "${var.container_name}-log"
  retention_in_days = var.log_retention_days
}

resource "aws_iam_role" "main" {
  name = "${var.task_name}-IAM-Role"

  assume_role_policy = <<EOF
{
"Version": "2012-10-17",
"Statement": [
 {
   "Effect": "Allow",
   "Principal": {
     "Service": ["ecs.amazonaws.com", "ecs-tasks.amazonaws.com"]
   },
   "Action": "sts:AssumeRole"
  }
  ]
 }
EOF
}

output "role_id" {
  value = aws_iam_role.main.id
  
}

output "arn" {
  value = aws_ecs_task_definition.main.arn
  
}

output "container_port" {
  value = var.container_port
  
}

output "container_name" {
  value = var.container_name
  
}