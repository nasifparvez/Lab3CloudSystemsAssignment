terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57"
    }
  }
}

provider "aws" {
  region                   = var.aws_region
  shared_credentials_files = var.aws_credentials_file
}

resource "aws_lb" "blue_elb" {
  subnets = [
    module.vpc.blue_1a_id,
    module.vpc.blue_1b_id,
    module.vpc.blue_1c_id
  ]
  security_groups = [module.sg.blue_sg_id]
}

resource "aws_lb" "green_elb" {
  subnets = [
    module.vpc.green_1a_id,
    module.vpc.green_1b_id,
    module.vpc.green_1c_id
  ]
  security_groups = [module.sg.green_sg_id]
}



module "vpc" {
  source = "./vpc"
}

module "sg" {
  source       = "./sg"
  blue_vpc_id  = module.vpc.blue_vpc_id
  green_vpc_id = module.vpc.green_vpc_id
}


