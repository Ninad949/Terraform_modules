provider "aws" {
  version = "~> 2.0"
  region  = "us-west-1"
}

module "my_vpc" {
  
    source= "/var/terraform2/new_terraform/modules"
  
    vpc_cidr = "10.0.0.0/16"

  tenancy = "default"

#  vpc_id ="${ module.vpc_module.vpc_id}"

  count_private_subnet = 2

  count_public_subnet = 2
}

