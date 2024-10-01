resource "aws_iam_role_policy_attachment" "custom" {
  count = length(var.role_policy_arns)

  role       = join("", aws_iam_role.main.*.name)
  policy_arn = var.role_policy_arns[count.index]
}
