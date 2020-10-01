provider "aws" {
  profile    = "default"
   region     = "eu-west-1"
}

terraform {
  backend "s3" {
    region = "eu-west-1"
    bucket = "techbleat-simple-bucket"
    key    = "techbleat.tfstate"
  }
}

resource "aws_instance" "my_ec2" {
  count                  = 1
  ami                    = "ami-0bb3fad3c0286ebd5"
  subnet_id              = "subnet-42641b18"
  instance_type          = "t2.micro"
  key_name               = "Yemi5times"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    "Name" = "Yemi5times-${count.index + 1}"
    Provisioner = "Terraform"
    Test = "yes_no"
  }

}
