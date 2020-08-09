variable "region" {
  description = "AWS Region"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "sg_ids" {
  description = "Security Groups"
  type        = list(string)
}

variable "vpc_endpoints" {
  description = "VPC Endpoints"
  type        = list(string)
  default = [
    "com.amazonaws.us-west-2.ec2",
    "com.amazonaws.us-west-2.ssm",
    "com.amazonaws.us-west-2.logs"
  ]
}
