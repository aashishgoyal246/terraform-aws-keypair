provider "aws" {
  region = "ap-south-1"
}

module "keypair" {
  source = "../"

  name        = "keypair"
  application = "aashish"
  environment = "test"
  label_order = ["environment", "application", "name"]

  enabled  = true
  key_name = "devops"
  key_path = "~/.ssh/id_rsa.pub"
}