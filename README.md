# terraform-aws-security-group
Terraform module to create security group with predefined rules


## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | v1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.73.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.73.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ec2_ingress_port"></a> [ec2\_ingress\_port](#input\_ec2\_ingress\_port) | List of ports to open, default configuration allows SSH and HTTP from 0.0.0.0/0 | `map` | <pre>{<br>  "http": {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": "80",<br>    "protocol": "tcp",<br>    "to_port": "80"<br>  },<br>  "ssh": {<br>    "cidr_blocks": [<br>      "0.0.0.0/0"<br>    ],<br>    "from_port": "22",<br>    "protocol": "tcp",<br>    "to_port": "22"<br>  }<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Default tags to apply on the resource | `map` | <pre>{<br>  "terraform": "true"<br>}</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID where the security group resides | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_arn"></a> [security\_group\_arn](#output\_security\_group\_arn) | Security Group ARN |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | Security Group ID |
| <a name="output_security_group_owner_od"></a> [security\_group\_owner\_od](#output\_security\_group\_owner\_od) | Security Group owner ID |
| <a name="output_security_group_tags_all"></a> [security\_group\_tags\_all](#output\_security\_group\_tags\_all) | Security Group tags all |
