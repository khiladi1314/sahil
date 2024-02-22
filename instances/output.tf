output "kafka_private_instance_output" {
  value = aws_instance.kafka_private_instance[*].id
  description = "this is the output for my kafka private instance"
}

output "kafka_public_instance_output" {
  value = aws_instance.kafka_public_instance[*].id
  description = "this is the output for my kafka public instance"
}