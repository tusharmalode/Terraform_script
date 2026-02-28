provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "my_security_grp" {
  ami                    = "ami-0b6c6ebed2801a5cb"
  instance_type          = "t3.micro"
  key_name               = "ansi-key"
  vpc_security_group_ids = [aws_security_group.my_sgg.id]
  tags = {
    Name = "demo-sg"
  }


}
resource "aws_security_group" "my_sgg" {
  ingress {
    description = "allow shh"
    to_port     = 22
    from_port   = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "allow 80"
    to_port     = 80
    from_port   = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "allow all traffic"
    to_port     = 0
    from_port   = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}