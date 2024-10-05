resource "aws_iam_role" "repo_role" {
  count = var.repos != null && length(var.repos) > 0 ? 1 : 0

  name                 = local.role_name
  path                 = var.role_path
  permissions_boundary = var.role_permissions_boundary
  assume_role_policy   = data.aws_iam_policy_document.github_actions_assume_role_policy[0].json
  max_session_duration = var.role_max_session_duration
}
