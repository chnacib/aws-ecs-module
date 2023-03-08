variable "task_name" {
    type = string
    description = "Task definition name"
}

variable "cpu" {
    type = number
    description = "Task definition CPU"
}

variable "memory" {
    type = number
    description = "Task deifnition memory"
}

variable "container_name" {
    type = string
    description = "Container name"
}

variable "container_image" {
    type = string
    description = "Container Image"
}

variable "essential" {
    type = bool
    description = "Container essential"
}

variable "environment_s3_arn" {
    type = string
    description = "Environment S3 file ARN"
}

variable "container_port" {
    type = number
    description = "Container Port"
}

variable "log_retention_days" {
    type = number
    description = "Log retention in days"
  
}

variable "region" {
    type = string
    description = "awslogs region"
  
}
