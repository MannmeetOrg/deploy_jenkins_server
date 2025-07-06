# terraform-jenkins-server

module "jenkins" {
  source = "./modules/jenkins"

  ami_id        = var.ami_id
  vpc_id        = var.vpc_id
  region        = var.region
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  sg_ids        = var.sg_ids
  key_pair      = var.key_name
}




#code with vpc map not used in main.tf file
# ami_id             = var.vpc["ami_id"]
# vpc_id             = var.vpc["vpc_id"]
# region             = var.vpc["region"]
# instance_type      = var.vpc["instance_type"]
# subnet_id          = var.vpc["subnet_id"]
# sg_ids             = var.vpc["security_group_ids"]
# key_pair           = var.vpc["key_name"]