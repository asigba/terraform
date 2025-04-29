resource "aws_instance" "my_web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "MyWebServer"
  }
}
