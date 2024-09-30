# web-acl #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.47.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.47.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_wafv2_rule_group.rule_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_rule_group) | resource |
| [aws_wafv2_web_acl.web_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_cloudwatch_metrics"></a> [enable\_cloudwatch\_metrics](#input\_enable\_cloudwatch\_metrics) | n/a | `bool` | `false` | no |
| <a name="input_enable_sampled_requests"></a> [enable\_sampled\_requests](#input\_enable\_sampled\_requests) | n/a | `bool` | `false` | no |
| <a name="input_rule_group_name"></a> [rule\_group\_name](#input\_rule\_group\_name) | n/a | `string` | `""` | no |
| <a name="input_rule_group_rules"></a> [rule\_group\_rules](#input\_rule\_group\_rules) | Rule group for the alb ingress web acl | `list(any)` | `[]` | no |
| <a name="input_web_acl_name"></a> [web\_acl\_name](#input\_web\_acl\_name) | n/a | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | n/a |
| <a name="output_rule_group_arn"></a> [rule\_group\_arn](#output\_rule\_group\_arn) | n/a |
| <a name="output_web_acl_arn"></a> [web\_acl\_arn](#output\_web\_acl\_arn) | n/a |
