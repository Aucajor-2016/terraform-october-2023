resource "aws_key_pair" "homework1" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

output key_type {
    value = aws_key_pair.homework1.key_type
}