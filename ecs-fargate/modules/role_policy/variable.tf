variable "role_id" {
    type = string
    description = "IAM Role Id"
  
}

variable "policy_name" {
    type = string
    description = "IAM Policy Name"
  
}

variable "policy" {
    type = any
    description = "Policy JSON"
  
}