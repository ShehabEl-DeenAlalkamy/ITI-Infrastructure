# Bastion Key Generation
resource "tls_private_key" "key_pair_gen" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key_pair" {
  key_name   = "ssh-key"
  public_key = tls_private_key.key_pair_gen.public_key_openssh
}

resource "local_file" "key_pair" {
  content  = tls_private_key.key_pair_gen.private_key_pem
  filename = "${var.env_name}_private_key.pem"
}
