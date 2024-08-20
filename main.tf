## root module
module "test-module" {
   source = "./modules/ec2"  ## child module
   instance_tags = {
      Name = "Test-devops-instance"
      Description = "This is a test instance overridden by module"
   }
   instances = {
      dev = "t2.micro"
   }
   region = "us-east-2"
}
