output "vpc_output" {
   value = aws_vpc.kafka_vpc.id
   description = "this is output for VPC"
}