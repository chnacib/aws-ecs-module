variable "name" {
    type = string
    description = "API Gateway name"
  
}

variable "nlb_arn" {
    type = list(string)
    description = "Network Loadbalancer ARN to VPC Link"
  
}