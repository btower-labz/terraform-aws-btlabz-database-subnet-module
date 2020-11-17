output "id" {
  description = "The db subnet group name."
  value       = aws_db_subnet_group.main.id
}

output "arn" {
  description = "The ARN of the db subnet group."
  value       = aws_db_subnet_group.main.arn
}

output "vpc" {
  description = "VPC in which the db subnet group is deployed"
  value       = data.aws_vpc.main.id
}

output "subnets" {
  description = "A list of VPC subnet IDs."
  value       = aws_db_subnet_group.main.subnet_ids
}
