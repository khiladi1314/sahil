root_region = "ap-southeast-1"

################ for VPC #################

root_vpc = "10.0.0.0/16"

root_vpc_tag = "kafka_vpc"

################ for public/private subnet #################
root_public_subnet_count_number = 1

root_public_subnet_cidr = ["10.0.64.0/18"]

root_public_subnet_tag = "kafka_public_subnet"

root_private_subnet_count_number = 1

root_private_subnet_cidr = ["10.0.16.0/20"]

root_private_subnet_tag = "kafka_private_subnet"

################ for Internat gateway #################

root_internet_gateway_tag = "kafka_IGW"

################ for NAT gateway #################

root_NAT_gateway_tag = "kafka_NAT"

################ for public/private RT #################

root_public_route_cidr_block = "0.0.0.0/0"

root_public_route_tag = "kafka_pub_RT"

root_private_route_cidr_block = "0.0.0.0/0"

root_private_route_tag = "kafka_private_RT"

#################### for security group ###########

root_SG_name = "kafka_SG"

root_SG_description = "I am providing SSH, http, https, kafka, ports"

root_SG_tag = "kafka_SG"

#################### for key pair ###########

root_public_key = "key_for_kafka"

root_private_key = "kafka_private_key"

#################### for private instances ###########

root_private_instance_count_number = 1

root_instance_ami = "ami-0fa377108253bf620"

root_private_instance_type = "t2.medium"

root_private_instance_name = "kafka_private_slave"


root_private_instance_volume_size = 8

root_private_instance_volume_type = "gp3"

#################### for public instances ###########

root_public_instance_count_number = 1

root_public_instance_type = "t2.micro"

root_public_instance_name = "kafka_public_slave"


root_public_instance_volume_size = 8

root_public_instance_volume_type = "gp3"