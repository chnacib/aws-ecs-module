variable "internal" {
    type = bool
    description = "Network Loadbalancer scheme"
}

variable "name" {
    type = string
    description = "Network Loadbalancer Name tag"
  
}

variable "subnets" {
    type = list(string)
    description = "List of subnets"
  
}

variable "enable_deletion_protection" {
    type = bool
    description = "Enable delete protection"
  
}