data "aws_ami" "amazonlinux2023" {
  most_recent = true
  name_regex  = "Amazon Linux 2023 kernel-6.1"
  owners = ["973714476881"]
}