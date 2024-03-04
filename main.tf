################ module for VPC #################

module "for_vpc" {
  source = "./vpc"
  vpc_tag = var.root_vpc_tag
  my_vpc = var.root_vpc
}

############### module for vpc peering ######################

module "for_vpc_peering" {
  providers = {
    aws.jenkins = aws.jenkins
    aws.peer = aws.peer
  }
  source = "./vpc_peering"
  peer_vpc_id_created = module.for_vpc.vpc_output
  peer_vpc_cidr = var.root_vpc
  vpc_id_jenkins = var.root_vpc_id_jenkins
  vpc_id_jenkins_cidr = var.root_vpc_id_jenkins_cidr
  jenkins_route_table_id = var.jenkins_route_table_id
  peer_route_table_id = [module.for_route.private_route_output, module.for_route.public_route_output]
  peer_owner_id = var.root_peer_owner_id
  peer_region = var.peer_region
}

################ module for public/private subnet#################


module "for_public_subnet" {
    source = "./subnet"
    vpc_id_from_subnet = module.for_vpc.vpc_output
    public_subnet_cidr = var.root_public_subnet_cidr
    public_subnet_tag = var.root_public_subnet_tag 
    
}

module "for_private_subnet" {
    source = "./subnet"
    vpc_id_from_subnet = module.for_vpc.vpc_output
    private_subnet_cidr = var.root_private_subnet_cidr 
    private_subnet_tag = var.root_private_subnet_tag 
    
}

################ module for Internet gateway #################

module "for_IGW" {
    source = "./IGW"
    vpc_id_from_IGW = module.for_vpc.vpc_output
    internet_gateway_tag = var.root_internet_gateway_tag
}

################ module for NAT gateway #################

module "for_NAT_gateway" {
    source = "./NAT"
    public_subnet_id_at_NAT_gateway = module.for_public_subnet.public_subnet_output
    NAT_gateway_tag = var.root_NAT_gateway_tag
}


#=========== public/private route table =============



module "for_route" {
    source = "./route_table"

    vpc_id_from_RT = module.for_vpc.vpc_output
    public_route_cidr_block = var.root_public_route_cidr_block
    public_route_IGW = module.for_IGW.IGW_output
    public_route_tag = var.root_public_route_tag

    route_public_subnet = module.for_public_subnet.public_subnet_output



    private_route_cidr_block = var.root_private_route_cidr_block
    private_route_NAT_gateway = module.for_NAT_gateway.NAT_gateway_output
    private_route_tag = var.root_private_route_tag

    route_private_subnet = module.for_private_subnet.private_subnet_output
}


#################### Security group ###########

module "for_SG" {
    source = "./security_group"
    SG_name = var.root_SG_name
    SG_description = var.root_SG_description
    vpc_id_from_SG = module.for_vpc.vpc_output
    SG_tag = var.root_SG_tag
}

#################### key pair ###########

module "for_key_pair" {
  source = "./key"
  public_key_pair = var.root_public_key
  private_key_pair = var.root_private_key
}

#################### private/public instances ###########

module "for_instances" {
  source = "./instances"

  private_instance_count_number =  var.root_private_instance_count_number
  instance_ami = var.root_instance_ami
  private_instance_type = var.root_private_instance_type
  private_instance_name = var.root_private_instance_name
  instance_private_subnet = module.for_private_subnet.private_subnet_output
  private_instance_volume_size = var.root_private_instance_volume_size
  private_instance_volume_type = var.root_private_instance_volume_type
  SG_from_instances = module.for_SG.security_group_output

    key_pair_from_instance = module.for_key_pair.public_key_file_output

  public_instance_count_number = var.root_public_instance_count_number
  public_instance_type = var.root_public_instance_type
  public_instance_name = var.root_public_instance_name
  instance_public_subnet = module.for_public_subnet.public_subnet_output
  public_instance_volume_size = var.root_public_instance_volume_size
  public_instance_volume_type = var.root_public_instance_volume_type
}



