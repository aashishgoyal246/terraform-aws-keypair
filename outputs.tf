#Module      : KEYPAIR
#Description : Terraform module for generating or importing an SSH public key file into AWS.
output "key_arn" {
  value       = join("", aws_key_pair.default.*.arn)
  description = "The key pair ARN."
}

output "key_name" {
  value       = join("", aws_key_pair.default.*.key_name)
  description = "The key pair name."
}

output "tags" {
  value       = module.labels.tags
  description = "The tags associated to resources."
}