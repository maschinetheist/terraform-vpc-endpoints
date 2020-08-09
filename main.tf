locals {
  endpoints = "${formatlist("%s", var.vpc_endpoints)}"
}

resource "aws_vpc_endpoint" "ec2" {
  vpc_id              = var.vpc_id
  service_name        = element(var.vpc_endpoints, count.index)
  count               = length(var.vpc_endpoints)
  vpc_endpoint_type   = "Interface"
  security_group_ids  = var.sg_ids
  private_dns_enabled = true
}
