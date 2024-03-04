resource "aws_vpc" "kafka_vpc" {
  cidr_block = var.my_vpc
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_tag
  }
}
