resource "aws_instance" "terraform-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet_1.id
  key_name               = var.PUB_KEY
  vpc_security_group_ids = [aws_security_group.terrafrom_sg.id]
  tags = {
    Name = "Terraform_Instance"
  }
}

output "PublicIP" {
  value = aws_instance.terraform-instance.public_ip
}