
resource "aws_instance" "webserver1" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.web-subnet-1.id
  key_name               = var.key_name
  user_data              = data.template_file.user_data.rendered
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]


  tags = {
    Name        = "Web Server1"
    Environment = "dev"
  }
}

resource "aws_instance" "webserver2" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.web-subnet-2.id
  key_name               = var.key_name
  user_data              = data.template_file.user_data.rendered
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]


  tags = {
    Name        = "Web Server2"
    Environment = "dev"
  }
}

data "template_file" "user_data" {
  template = file("./userdata.yaml")
}