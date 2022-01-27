output "security_group_id" {
    description = "Security Group ID"
    value = aws_security_group.this.id
}

output "security_group_arn" {
    description = "Security Group ARN"
    value = aws_security_group.this.arn
}

output "security_group_owner_od" {
    description = "Security Group owner ID"
    value = aws_security_group.this.owner_id
}

output "security_group_tags_all" {
    description = "Security Group tags all"
    value = aws_security_group.this.security_group_tags_all
}