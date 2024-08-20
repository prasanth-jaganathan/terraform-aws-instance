variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_tags" {
  type = map
  default = {
    Name = "Test server"
    Description = "This is test server created by devops"
  }
}

variable "instances" {
  type = map
}

variable "region" {
  type = string
}
