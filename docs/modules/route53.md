# route53 #

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
| [aws_route53_record.delegation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.route53_zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route53domains_registered_domain.route53_registered_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53domains_registered_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name | `string` | `""` | no |
| <a name="input_domain_name_servers"></a> [domain\_name\_servers](#input\_domain\_name\_servers) | domain\_name\_servers | `list(string)` | `[]` | no |
| <a name="input_domain_parent_zone_id"></a> [domain\_parent\_zone\_id](#input\_domain\_parent\_zone\_id) | domain\_parent\_zone\_id | `string` | `""` | no |
| <a name="input_flag_hosted_zone"></a> [flag\_hosted\_zone](#input\_flag\_hosted\_zone) | flag\_hosted\_zone | `bool` | `true` | no |
| <a name="input_flag_registered_domain"></a> [flag\_registered\_domain](#input\_flag\_registered\_domain) | flag\_registered\_domain | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_zone_arn"></a> [zone\_arn](#output\_zone\_arn) | zone\_arn |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | zone\_id |
| <a name="output_zone_name"></a> [zone\_name](#output\_zone\_name) | zone\_id |
| <a name="output_zone_name_servers"></a> [zone\_name\_servers](#output\_zone\_name\_servers) | zone\_name\_servers |
