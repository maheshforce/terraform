resource "aws_instance" "ec2" {
  ami           = var.id
  instance_type = var.instancetype

  tags = {
    for_each = var.tag
    Name = each.value
  }
}