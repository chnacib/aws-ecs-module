variable "service_name" {
    type = string
    description = "ECS Service name"
  
}

variable "cluster_id" {
    type = string
    description = "ECS Cluster ID"
  
}

variable "task_definition_arn" {
    type = string
    description = "ECS Task Definition ID"
  
}

variable "desired_count" {
    type = string
    description = "ECS Service desired count"
  
}

variable "subnets" {
    type = list(string)
    description = "Subnet list"
  
}

variable "assign_public_ip" {
    type = bool
    description = "Assign public ip"
  
}

variable "container_name" {
    type = string
    description = "ECS Task Definition container name"
    default = null
}

variable "container_port" {
    type = string
    description = "ECS Task Definition container port"
    default = null
  
}

variable "target_group_arn" {
    type = string
    description = "Target Group ARN"
    default = null
  
}

variable "load_balancer" {
    description = "Loadbalancer"
    type = bool
    default = false
  
}

variable "vpc_id" {
  type = string
  description = "VPC Id"
}

variable "service_port" {
    type = number
    description = "ECS Service port"
  
}