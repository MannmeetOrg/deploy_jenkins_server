# terraform-jenkins-server

module "jenkins" {

  source = "./modules/jenkins"

  instance_type        = var.instance_type
  ami_id               = var.ami_id
  key_name             = var.key_name
  vpc_id               = var.vpc_id
  subnet_id            = var.subnet_id
  security_group_ids   = var.security_group_ids
  user_data            = var.user_data

  tags = {
    Name        = "Jenkins-Server"
  }
}
