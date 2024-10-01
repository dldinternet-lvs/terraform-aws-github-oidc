output "roles" {
  description = "The role created which can be assumed for the configured repository."
  value       = { for consumer in var.role_repos : consumer["role"] => module.oidc_repo[consumer["role"]].role }
}

output "conditions" {
  description = "The assume conditions added to the role."
  value       = { for consumer in var.role_repos : consumer["role"] => module.oidc_repo[consumer["role"]].conditions }
}

output "iac_version" {
  description = "The version of the IaC module."
  value       = "0.9.0"
}
