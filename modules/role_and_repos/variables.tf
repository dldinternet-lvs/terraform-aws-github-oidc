variable "openid_connect_provider_arn" {
  description = "Set the openid connect provider ARN when the provider is not managed by the module."
  type        = string
}
variable "role_repos" {
  description = "OIDC Idp consumer GitHub repos"
  type = list(object({
    repos        = list(string)
    role         = string
    presets      = list(string)
    policies     = list(string)
    accounts     = list(string)
    environments = list(string)
    principals   = list(string)
    main         = string
    role_path    = string
    boundary     = string
    duration     = string
  }))
  default = []
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
