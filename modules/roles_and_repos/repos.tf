module "oidc_repo" {
  source   = "../role"
  for_each = { for rar in var.roles_repos : rar["role"] => rar }

  openid_connect_provider_arn = var.openid_connect_provider_arn
  repos                       = each.value["repos"]
  role_name                   = each.value["role"]
  tags                        = var.tags

  repo_mainline_branch        = try(each.value["main"], null) != null ? each.value["main"] : "main"

  role_path                   = try(each.value["role_path"], null) != null ? each.value["role_path"] : "/github-actions/"
  role_permissions_boundary   = try(each.value["boundary"], null) != null ? each.value["boundary"] : null
  role_max_session_duration   = try(each.value["duration"], null) != null ? each.value["duration"] : null

  account_ids                 = try(each.value["accounts"], null) != null ? each.value["accounts"] : [data.aws_caller_identity.current.account_id]
  default_conditions          = try(each.value["presets"], null) != null ? each.value["presets"] : ["allow_main", "deny_pull_request"]
  github_environments         = try(each.value["environments"], null) != null ? each.value["environments"] : ["*"]
  role_policy_arns            = try(each.value["policies"], [])
  custom_principal_arns       = try(each.value["principals"], null) != null ? each.value["principals"] : []
}
