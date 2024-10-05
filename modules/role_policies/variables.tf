variable "role" {
  description = "IAM Role name"
  type = string
}
variable "policies" {
  description = "Policy ARNs to attach to the role"
  type = list(string)
}
