resource "aws_db_subnet_group" "main" {
  name        = var.use_prefix ? null : var.name
  name_prefix = var.use_prefix ? format("%s-", var.name) : null
  subnet_ids  = local.subnets
  tags = merge(
    map(
      "Name", var.name
    ),
    var.tags
  )
}
