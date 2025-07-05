
resource "aws_instance" "jenkins" {
  ami_id                         = data.aws_ami.amazonlinux2023.image_id
  instance_type               = var.jenkins_instance_type
  subnet_id                   = var.subnet_ids[0]
  associate_public_ip_address = true
  key_name                    = var.jenkins_key_pair
  vpc_security_group_ids      = [aws_security_group.jenkins-sg.id]
  iam_instance_profile        = "jenkins-profile"
  user_data = file("${path.module}/jenkins/bootstrap.sh")

  tags = {
    name = "jenkins-server"
  }
}

resource "aws_security_group" "jenkins-sg" {
  name        = "jenkins-sg"
  description = "Allow SSH"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    security_groups = [aws_security_group.jenkins-sg.id]
  }

  ingress {
    from_port       = 8080
    to_port         = 8080
    protocol        = "tcp"
    security_groups = [aws_security_group.jenkins-sg.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "jenkins-sg"
  }
}




