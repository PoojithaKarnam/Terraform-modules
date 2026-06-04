provider "aws" {
  region = "ap-south-1"
}

module "route53" {
  source = "../../modules/Route53"

  domain_name = "example.com"
}