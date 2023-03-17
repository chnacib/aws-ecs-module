variable "name" {
    type = string
    description = "Target group name"
}

variable "port" {
    type = number
    description = "Target group port"
  
}

variable "vpc_id" {
    type = string
    description = "VPC Id"
  
}

variable "health_check" {
    type = string
    description = "Health Check path"
  
}

variable "listener_arn" {
    type = string
    description = "Listener ARN"
  
}

variable "host_header" {
    type = list(string)
    description = "Host Header rule"
  
}