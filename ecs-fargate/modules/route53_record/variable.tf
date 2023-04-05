variable "zone_id" {
    type = string
    description = "Route53 Hosted Zone ID"
  
}

variable "record" {
    type = string
    description = "DNS Record"
}

variable "value" {
    type = list(string)
    description = "DNS Record value"
  
}