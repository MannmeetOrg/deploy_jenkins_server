# terraform-jenkins-server

module "jenkins" {
  source = "./modules/jenkins"

  ami_id        = var.ami_id
  vpc_id        = var.vpc_id
  region        = var.region
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_pair      = var.key_name
  jenkins_s3    = var.jenkins_s3

}


