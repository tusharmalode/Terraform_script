resource "aws_instance" "demo" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  key_name      = "ansi-key"
  tags = {
    Name = each.key
  }
  for_each = toset(["web", "app", "db"])

}