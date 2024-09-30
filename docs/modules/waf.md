# waf #

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
| [aws_wafv2_rule_group.rule_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_rule_group) | resource |
| [aws_wafv2_web_acl.web_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_action"></a> [default\_action](#input\_default\_action) | Default action for the ACL | `string` | `"allow"` | no |
| <a name="input_enable_cloudwatch_metrics"></a> [enable\_cloudwatch\_metrics](#input\_enable\_cloudwatch\_metrics) | Enable cloudwatch metrics | `bool` | `false` | no |
| <a name="input_enable_sampled_requests"></a> [enable\_sampled\_requests](#input\_enable\_sampled\_requests) | Enable sampled requests | `bool` | `false` | no |
| <a name="input_rule_group_action"></a> [rule\_group\_action](#input\_rule\_group\_action) | Override action for the rule. | `string` | `"none"` | no |
| <a name="input_rule_group_name"></a> [rule\_group\_name](#input\_rule\_group\_name) | Rule group name | `string` | `""` | no |
| <a name="input_rule_group_rules"></a> [rule\_group\_rules](#input\_rule\_group\_rules) | Rule group for the alb ingress web acl | `list(any)` | `[]` | no |
| <a name="input_web_acl_name"></a> [web\_acl\_name](#input\_web\_acl\_name) | Web ACL name | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_rule_group_arn"></a> [rule\_group\_arn](#output\_rule\_group\_arn) | rule\_group\_arn |
| <a name="output_rule_group_id"></a> [rule\_group\_id](#output\_rule\_group\_id) | rule\_group\_id |
| <a name="output_web_acl_arn"></a> [web\_acl\_arn](#output\_web\_acl\_arn) | web\_acl\_arn |
