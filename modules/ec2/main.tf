terraform {
   required_version = "1.9.4"
   required_providers {
     aws = {
       source = "hashicorp/aws"
       version = "~> 5.0"
    }
  }
}


data "aws_ami" "test" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "test-instance" {
   for_each = var.instances
   ami = data.aws_ami.test.id
   instance_type = each.value
   tags = var.instance_tags
}

