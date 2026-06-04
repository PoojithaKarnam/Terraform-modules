resource "aws_instance" "ec21" {
    ami="ami-01b40e1bcccae197a"
    instance_type = "t3.micro"
    key_name = "poojikeypair"
    subnet_id = "subnet-05a8862a482b34683"
}
