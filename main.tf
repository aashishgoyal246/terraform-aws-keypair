#Module      : LABELS
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
module "labels" {
  source = "git::https://github.com/aashishgoyal246/terraform-labels.git?ref=tags/0.12.0"

  name        = var.name
  application = var.application
  environment = var.environment
  enabled     = var.enabled
  label_order = var.label_order
  tags        = var.tags
}

#Module      : KEYPAIR
#Description : Terraform module for generating or importing an SSH public key file into AWS.
resource "aws_key_pair" "default" {
  count      = var.enabled ? 1 : 0
  key_name   = var.key_name
  public_key = file(var.key_path)
  tags       = module.labels.tags
}