resource "aws_vpc" "aws-vpc" {
    tags = {
      Name = "aws-vpc"
    }
  cidr_block = "10.0.0.0/24"
}
resource "aws_internet_gateway" "aws-ig" {
    vpc_id = var.vpc_id
    tags = {
        Name = "aws-igw"
        }
}
