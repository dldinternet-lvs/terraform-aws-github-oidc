locals {
  github_environments = (
    length(var.github_environments) > 0 && var.repos != null && length(var.repos) > 0
    ? [for e in var.github_environments
    : "repo:${module.repo[var.repos[0]].repo}:environment:${e}"] : ["ensurethereisnotmatch"]
  )
  role_name           = ((var.repos != null && length(var.repos) > 0 && var.role_name != null)
    ? var.role_name
    : "${substr(replace(module.repo[var.repos[0]].repo, "/", "-"), 0, 64 - 8)}-${random_string.random[0].id}"
  )

  repos = [ for repo in var.repos : module.repo[repo].repo ]

  variable_sub = "${var.github_oidc_issuer}:sub"

  default_allow_main = contains(var.default_conditions, "allow_main") ? [{
    test     = "StringLike"
    variable = local.variable_sub
    values   = [for repo in local.repos : "repo:${repo}:ref:refs/heads/${var.repo_mainline_branch}"]
  }] : []

  default_allow_environment = contains(var.default_conditions, "allow_environment") ? [{
    test     = "StringLike"
    variable = local.variable_sub
    values   = local.github_environments
  }] : []

  default_allow_all = contains(var.default_conditions, "allow_all") ? [{
    test     = "StringLike"
    variable = local.variable_sub
    values   = [for repo in local.repos : "repo:${module.repo[repo].repo}:*"]
  }] : []

  default_deny_pull_request = contains(var.default_conditions, "deny_pull_request") ? [{
    test     = "StringNotLike"
    variable = local.variable_sub
    values   = [for repo in local.repos : "repo:${module.repo[repo].repo}:pull_request"]
  }] : []

  conditions = setunion(
    local.default_allow_main,
    local.default_allow_environment,
    local.default_allow_all,
    local.default_deny_pull_request,
    var.conditions
  )
  merge_conditions = [
    for k, v in { for c in local.conditions : "${c.test}|${c.variable}" => c... } : # group by test & variable
    {
      "test" : k,
      "values" : flatten([for index, sp in v[*].values : v[index].values if v[index].variable == v[0].variable]) # loop again to build the values inner map
    }
  ]

  root_principal_arns   = [for acc in var.account_ids : "arn:aws:iam::${acc}:root"]
  merged_principal_arns = concat(local.root_principal_arns, var.custom_principal_arns)
}
