
resource "aws_instance" "zeus" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["sg_olimpo"]
    key_name = "aws-terraform"
    tags = {
        Name = var.ec2name
}
}