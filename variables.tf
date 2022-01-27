variable "ec2_ingress_port" {
  description = "List of ports to open, default configuration allows SSH and HTTP from 0.0.0.0/0"
  type = map
  default = { 
    "ssh" = {from_port = "22",to_port = "22",protocol = "tcp", cidr_blocks = ["0.0.0.0/0"]}
    "http" = {from_port = "80",to_port = "80",protocol = "tcp", cidr_blocks = ["0.0.0.0/0"]}
  }
}

variable "vpc_id"{
  description = "VPC ID where the security group resides"
  type = string
}

variable "tags" {
  description = "Default tags to apply on the resource"
  type        = map

  default = {
    terraform = "true"
  }
}