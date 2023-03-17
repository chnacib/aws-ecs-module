#terraform {
#  backend "s3" {
#    bucket = "tfbackend-sample-s3"
#    key    = "terraform.tfstate"
#    region = "us-east-1"
#  }
#}

locals {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = "~> 4.51.0"
  }

  required_version = "> 1.0.0"

}


provider "aws" {
  region = local.region
}