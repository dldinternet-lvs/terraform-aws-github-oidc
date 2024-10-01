variable "repo" {
  description = "(Optional) GitHub repository to grant access to assume a role via OIDC. When the repo is set, a role will be created."
  type        = string
  default     = null
  validation {
    condition     = var.repo == null || can(regex("^.+\\/.+", var.repo))
    error_message = "Repo name is not matching the pattern <owner>/<repo>."
  }
  validation {
    condition     = var.repo == null || !can(regex("^.*\\*.*$", var.repo))
    error_message = "Wildcards are not allowed."
  }
}
variable "repo_mainline_branch" {
  description = "(Optional) Mainline branch of the GitHub repository, defaults to 'main'. This will be the main/default branch that `allow_main` provides access to."
  type        = string
  default     = "main"
}
