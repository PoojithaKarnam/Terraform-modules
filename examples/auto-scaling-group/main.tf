provider "aws" {
  region = "ap-south-1"
}

module "auto_scaling_group" {
  source = "../../modules/auto-scaling-group"

  launch_template_name = "my-lt"

  ami_id        = "ami-0f58b397bc5c1f2e8" # Replace with valid AMI
  instance_type = "t2.micro"

  asg_name         = "my-asg"
  min_size         = 1
  max_size         = 3
  desired_capacity = 2

  subnet_ids = [
    "subnet-xxxxxxxx",
    "subnet-yyyyyyyy"
  ]
}