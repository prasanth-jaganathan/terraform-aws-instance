## root module
terraform {
  backend "remote" {
    organization = "prasanth_jagan"
    workspaces  {
       name = "terraform-aws-instance"
    }
  }
}
module "test-module" {
   source = "./modules/ec2"  ## child module
}
