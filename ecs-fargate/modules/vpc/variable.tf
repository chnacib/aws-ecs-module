variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS Region"
}

variable "vpc_cidr" {
  type = string
  description = "VPC CIDR"
}

variable "public_subnet_1_cidr" {
  type = string
  description = "Public subnet az1 CIDR"
}

variable "public_subnet_2_cidr" {
  type = string
  description = "Public subnet az2 CIDR"
}

variable "public_subnet_3_cidr" {
  type = string
  description = "Public subnet az3 CIDR"
}


variable "private_subnet_1_cidr" {
  type = string
  description = "Private subnet az1 CIDR"
}

variable "private_subnet_2_cidr" {
  type = string
  description = "Private subnet az2 CIDR"
}

variable "private_subnet_3_cidr" {
  type = string
  description = "Private subnet az3 CIDR"
}

variable "proj_name" {
  type = string
  description = "Project Name"

}
