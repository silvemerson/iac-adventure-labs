resource "aws_security_group" "busybox" {
  name        = var.security
  description = "Regras para liberar portas"


egress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  tags = {
    "Name" = "sg_olimpo"
    "Provider" = "terraform"
  }
  
}