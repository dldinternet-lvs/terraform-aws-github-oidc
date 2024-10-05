output "role" {
  description = "The role created which can be assumed for the configured repository."
  value       = var.repos != null && length(var.repos) > 0 ? aws_iam_role.repo_role[0] : null
}

output "conditions" {
  description = "The assume conditions added to the role."
  value       = local.merge_conditions
}
