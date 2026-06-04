resource "aws_route53_zone" "hosted" {
  name = var.domain_name
}