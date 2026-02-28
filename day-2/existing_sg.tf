resource "aws_instance" "my-sg" {
    ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"
  key_name      = "ansi-key"
  vpc_security_group_ids = [ "sg-0cf08d85f43e392fe","sg-0990dbc307ccc0300" ]
  tags = {
    Name = "demo-sg"
  }
  
  
}