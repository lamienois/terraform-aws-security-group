terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 3.73.0"
    }
  }
  required_version = "v1.1.2"
}