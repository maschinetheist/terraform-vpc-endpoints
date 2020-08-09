output "vpc_endpoint_arn" {
  value = aws_vpc_endpoint.ec2.*.arn
}
