resource "aws_ebs_volume" "example" {
  availability_zone = var.availability_zone
  encrypted = var.encrypted
  size = var.size
  type = var.type
  tags = {
    name = var.name
  }
  throughput = var.throughput
}

resource "aws_instance" "web" {
  ami               = var.ami
  availability_zone = var.availability_zone
  instance_type     = var.instance_type
}

resource "aws_volume_attachment" "ebs_att" {
  
  device_name = var.device_name
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.web.id
  
 
}