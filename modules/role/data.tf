resource "random_string" "random" {
  count = var.role_name == null ? 1 : 0

  length  = 8
  lower   = true
  special = false
}

module "repo" {
  for_each = toset(var.repos != null ? var.repos : [])

  source = "../repo"

  repo = each.key
}
