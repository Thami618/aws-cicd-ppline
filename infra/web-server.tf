resource "aws_instance" "webserver1" {
  ami                    = "ami-026b57f3c383c2eec"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.public_subnet_az1.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server"
  }
}

resource "aws_instance" "webserver2" {
  ami                    = "ami-026b57f3c383c2eec"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.public_subnet_az2.id
  user_data              = file("install_apache.sh")

  tags = {
    Name = "Web Server"
  }

}