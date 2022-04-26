#Dynamic block with Security group
resource "aws_vpc" "main" {
  cidr_block="10.0.0.0/16"
}

resource "aws_security_group" "allow_tls" {
 name = "allow_tls" 
 description = "allow TLS inbound traffic"
 vpc_id = aws_vpc.main.id
}

dynamic "ingress"{
  for-each = var.web_inbound
  content{
    description = "TLS from vpc"
    from_port = ingress.value.port
    to_port = ingress.value.port
    protocol = "tcp"
    cidr_blocks = ingress.value.cidr
  }
}

 #ingress {
   # description      = "TLS from VPC"
   # from_port        = 443
   # to_port          = 443
   # protocol         = "tcp"
   # cidr_blocks      = [aws_vpc.main.cidr_block]
   #  ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  # }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }