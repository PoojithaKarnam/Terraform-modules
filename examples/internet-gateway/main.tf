provider "aws" {
  region = "ap-south-1"
}

module "igw" {
    source = "../../modules/internet-gateway"
    vpc_id = "aws.vpc_id.id"
}