resource "aws_vpc" "kafka_vpc" {
  cidr_block = var.my_vpc

  tags = {
    Name = var.vpc_tag
  }
}