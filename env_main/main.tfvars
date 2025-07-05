env  = "main"



vpc = {

  default_vpc_cidr        = "172.31.0.0/16"
  region                  = "us-east-1"
  ami_id                  = "ami-05ffe3c48a9991133"
  instance_type           = "t3.micro"
  key_name                = "aws-key-pair"
  subnet_id               = "[us-east-1a, us-east-1b]"
  default_vpc_id          = "vpc-01b0e42325efca6e6"
  security_group_ids      = ["sg-04d1ac6f01f77056a"]

}
