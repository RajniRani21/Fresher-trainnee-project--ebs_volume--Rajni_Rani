module "ebs_module" {
  
  source = "../"
  for_each = var.device_name
  ami = each.key
  size=each.value.size
  encrypted = each.value.encrypted
  type = each.value.type
  throughput = each.value.throughput
  name = each.value.name
  device_name = each.value.device_name
  instance_type = each.value.instance_type
  availability_zone = each.value.availability_zone
}
