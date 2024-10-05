resource "aws_iam_role_policy_attachment" "attachment" {
  for_each   = toset(var.policies)
  role       = data.aws_iam_role.role.arn
  policy_arn = each.value
}
