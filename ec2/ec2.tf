resource "aws_instance" "ec2" {
  ami           = var.name
  instance_type = var.instancetype

  tags = {
    for_each = var.tag
    Name = each.value
  }
}