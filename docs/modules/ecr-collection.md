# ecr-collection #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_constants"></a> [constants](#module\_constants) | ../constants | n/a |
| <a name="module_ecr_repository"></a> [ecr\_repository](#module\_ecr\_repository) | ../ecr | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_ecr_account_arns"></a> [ecr\_account\_arns](#input\_ecr\_account\_arns) | A list of account-based ARNs to allow ECR read-only access | `list(any)` | `[]` | no |
| <a name="input_ecr_principal_org_paths"></a> [ecr\_principal\_org\_paths](#input\_ecr\_principal\_org\_paths) | List of organization Ids/unit Ids to allow ECR read-only access | `list(string)` | `[]` | no |
| <a name="input_ecr_repositories"></a> [ecr\_repositories](#input\_ecr\_repositories) | ecr\_repositories | `list(string)` | `[]` | no |
| <a name="input_flag_ecr_account_policies"></a> [flag\_ecr\_account\_policies](#input\_flag\_ecr\_account\_policies) | flag\_ecr\_account\_policies | `bool` | `false` | no |
| <a name="input_flag_ecr_org_unit_policies"></a> [flag\_ecr\_org\_unit\_policies](#input\_flag\_ecr\_org\_unit\_policies) | flag\_ecr\_org\_unit\_policies | `bool` | `true` | no |
| <a name="input_flag_ecr_repositories"></a> [flag\_ecr\_repositories](#input\_flag\_ecr\_repositories) | flag\_ecr\_repositories | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_registry_ids"></a> [registry\_ids](#output\_registry\_ids) | registry\_ids |
| <a name="output_repository_arns"></a> [repository\_arns](#output\_repository\_arns) | repository\_arns |
| <a name="output_repository_names"></a> [repository\_names](#output\_repository\_names) | repository\_names |
| <a name="output_repository_urls"></a> [repository\_urls](#output\_repository\_urls) | repository\_urls |
