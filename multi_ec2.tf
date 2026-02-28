resource "aws_instance" "count" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  key_name      = "ansi-key"
  tags = {
    Name = "demo ${count.index + 1}"
  }
  count = 2

}