#Module      : KEYPAIR
#Description : Terraform module for generating or importing an SSH public key file into AWS.
output "key_name" {
  value       = module.keypair.key_name
  description = "The key pair name."
}

output "tags" {
  value       = module.keypair.tags
  description = "The tags associated to resources."
}