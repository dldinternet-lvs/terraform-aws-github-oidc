data "aws_iam_policy_document" "github_actions_assume_role_policy" {
  count = var.repos != null && length(var.repos) > 0 ? 1 : 0

  dynamic "statement" {
    for_each = length(local.merged_principal_arns) > 0 ? [1] : []
    content {
      actions = ["sts:AssumeRole"]

      principals {
        type        = "AWS"
        identifiers = local.merged_principal_arns
      }
    }
  }

  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    principals {
      type        = "Federated"
      identifiers = [var.openid_connect_provider_arn]
    }

    condition {
      test     = "StringEquals"
      variable = "${var.github_oidc_issuer}:aud"
      values   = ["sts.amazonaws.com"]
    }

    dynamic "condition" {
      for_each = local.merge_conditions

      content {
        test     = split("|", condition.value.test)[0]
        variable = split("|", condition.value.test)[1]
        values   = condition.value.values
      }
    }
  }
}
