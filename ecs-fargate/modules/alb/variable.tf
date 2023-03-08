variable "alb_name" {
  type = string
  description = "Application Load Balancer name"
}

variable "internal" {
    type = bool
    description = "Loadbalancer Internal(True or false)"
}

variable "vpc_id" {
    type = string
    description = "VPC ID"
}

variable "subnets" {
    type = list(string)
    description = "List of Subnets"  
}

variable "target_group_port" {
    type = number
    description = "Target group port"
  
}

variable "certificate_arn" {
    type = string
    description = "ACM Certificate ARN"
  
}

variable "health_check" {
    type = string
    description = "Target group healthcheck path"
  
}