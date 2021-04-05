resource "aws_instance" "bastion" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.bastion.id]
  subnet_id              = module.network.public1_id
  key_name               = aws_key_pair.key_pair.key_name

  root_block_device {
    delete_on_termination = true
    volume_size           = 8
  }

  provisioner "local-exec" {
    command = "echo Bastion Public IP Address: ${self.public_ip}"
  }

  tags = {
    Name = "bastion"
    Env  = var.env_name
  }
}

resource "aws_instance" "application" {
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.application.id]
  subnet_id              = module.network.public2_id
  key_name               = aws_key_pair.key_pair.key_name

  root_block_device {
    delete_on_termination = true
    volume_size           = 8
  }

  provisioner "local-exec" {
    command = "echo Application Public IP Address: ${self.public_ip}"
  }

  tags = {
    Name = "application"
    Env  = var.env_name
  }
}
