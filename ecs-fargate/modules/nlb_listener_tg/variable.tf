variable "load_balancer_arn" {
    type = string
    description = "Load Balancer ARN"
  
}

variable "listener_port" {
    type = number
    description = "Listener port"
  
}

variable "target_group_port" {
    type = number
    description = "Target group port"
  
}

variable "health_check" {
    type = string
    description = "Health check path"
  
}

variable "target_group_name" {
    type = string
    description = "Target group name"
  
}

variable "vpc_id" {
    type = string
    description = "VPC ID"
  
}