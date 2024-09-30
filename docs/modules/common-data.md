# common-data #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_constants"></a> [constants](#module\_constants) | ../constants | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_roles.cicd_administrators](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |
| [aws_iam_roles.engineer_admin_administrator](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |
| [aws_iam_roles.sso_aws_administrator_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |
| [aws_iam_roles.sso_aws_poweruser_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_roles) | data source |
| [aws_iam_users.cicd_administrators](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_users) | data source |
| [aws_region.current_region](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_administrator_access_arn"></a> [aws\_administrator\_access\_arn](#output\_aws\_administrator\_access\_arn) | aws\_administrator\_access\_arn |
| <a name="output_aws_poweruser_access_arn"></a> [aws\_poweruser\_access\_arn](#output\_aws\_poweruser\_access\_arn) | aws\_poweruser\_access\_arn |
| <a name="output_caller_identity"></a> [caller\_identity](#output\_caller\_identity) | caller\_identity |
| <a name="output_cicd_administrator_role_arn"></a> [cicd\_administrator\_role\_arn](#output\_cicd\_administrator\_role\_arn) | cicd\_administrator\_role\_arn |
| <a name="output_cicd_administrator_role_arns"></a> [cicd\_administrator\_role\_arns](#output\_cicd\_administrator\_role\_arns) | cicd\_administrator\_role\_arns |
| <a name="output_cicd_administrator_roles"></a> [cicd\_administrator\_roles](#output\_cicd\_administrator\_roles) | cicd\_administrator\_roles |
| <a name="output_cicd_administrator_user_arn"></a> [cicd\_administrator\_user\_arn](#output\_cicd\_administrator\_user\_arn) | cicd\_administrator\_user\_arn |
| <a name="output_cicd_administrator_user_arns"></a> [cicd\_administrator\_user\_arns](#output\_cicd\_administrator\_user\_arns) | cicd\_administrator\_user\_arns |
| <a name="output_cicd_administrator_users"></a> [cicd\_administrator\_users](#output\_cicd\_administrator\_users) | cicd\_administrator\_users |
| <a name="output_current_region"></a> [current\_region](#output\_current\_region) | current\_region |
| <a name="output_engineer_admin_administrator_arn"></a> [engineer\_admin\_administrator\_arn](#output\_engineer\_admin\_administrator\_arn) | engineer\_admin\_administrator\_arn |
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
