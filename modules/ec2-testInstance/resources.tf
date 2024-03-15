resource "aws_instance" "TestInstance" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.main.id]

    tags = {
      Name = var.instance_name
    }
  
}


resource "aws_security_group" "main" {
  dynamic "ingress" {
    for_each = local.ingress_rule
    content {
      description = ingress.value.description
      from_port = ingress.value.port
      to_port = ingress.value.port
      protocol = "tcp"
      cidr_blocks = [ "0.0.0.0/0" ]
    }
  }
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}