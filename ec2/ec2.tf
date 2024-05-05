resource "aws_instance" "ec2" {
  for_each = toset(var.tag)
  ami           = var.name
  instance_type = var.instancetype

  tags = {
    Name = "${each.value}"
  }
}