# ecr #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.1 |

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
| [aws_ecr_repository.repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_repository_policy.repository_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository_policy) | resource |
| [aws_iam_policy_document.repository_policy_document](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_arns"></a> [account\_arns](#input\_account\_arns) | A list of account-based ARNs to allow ECR read-only access | `list(any)` | `[]` | no |
| <a name="input_flag_create"></a> [flag\_create](#input\_flag\_create) | flag\_create | `bool` | `true` | no |
| <a name="input_flag_create_account_policy"></a> [flag\_create\_account\_policy](#input\_flag\_create\_account\_policy) | flag\_create\_account\_policy | `bool` | `false` | no |
| <a name="input_flag_create_org_unit_policy"></a> [flag\_create\_org\_unit\_policy](#input\_flag\_create\_org\_unit\_policy) | flag\_create\_org\_unit\_policy | `bool` | `false` | no |
| <a name="input_principal_org_paths"></a> [principal\_org\_paths](#input\_principal\_org\_paths) | List of organization Ids/unit Ids to allow ECR read-only access | `list(string)` | `[]` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | Repository name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | The registry ID of the AWS ECR repository |
| <a name="output_repository_arn"></a> [repository\_arn](#output\_repository\_arn) | The ARN of the AWS ECR repository |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | The URL of the AWS ECR repository |
