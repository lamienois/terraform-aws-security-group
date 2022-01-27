resource "aws_security_group" "this" {
  vpc_id = var.vpc_id

    dynamic ingress {
      for_each  = var.ec2_ingress_port
      content {
        description = ingress.key
        from_port   = ingress.value.from_port
        to_port     = ingress.value.to_port
        protocol    = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks
      }
  }

  ingress {
    from_port = "-1"
    to_port = "-1"
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"] 
  }

  tags = var.tags
}