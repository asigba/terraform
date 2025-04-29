resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generate_key" {
  key_name   = "alyx"
  public_key = tls_private_key.my_key.public_key_openssh
}

resource "local_file" "private_keys" {
  content         = tls_private_key.my_key.private_key_pem
  filename        = "./keys/"
  file_permission = "0600"
}
