# acm #

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
| [aws_acm_certificate.certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.dns_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.certificate_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | A host/subdomain name (CN) | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Specific to your setup, pick a domain you have in route53 | `string` | n/a | yes |
| <a name="input_san_domain"></a> [san\_domain](#input\_san\_domain) | SANs domain name (defaults to domain\_name) | `string` | `""` | no |
| <a name="input_san_zone_id"></a> [san\_zone\_id](#input\_san\_zone\_id) | SAN Zone Id | `string` | `""` | no |
| <a name="input_subject_alternative_names"></a> [subject\_alternative\_names](#input\_subject\_alternative\_names) | A list of SANs | `list(string)` | `[]` | no |
| <a name="input_validation_domain"></a> [validation\_domain](#input\_validation\_domain) | Validation domain name (defaults to domain\_name) | `string` | `""` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone Id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_certificate_arn"></a> [certificate\_arn](#output\_certificate\_arn) | certificate\_arn |
| <a name="output_certificate_domain_name"></a> [certificate\_domain\_name](#output\_certificate\_domain\_name) | certificate\_domain\_name |
| <a name="output_certificate_expiration"></a> [certificate\_expiration](#output\_certificate\_expiration) | certificate\_expiration |
| <a name="output_certificate_status"></a> [certificate\_status](#output\_certificate\_status) | certificate\_status |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | dns\_name |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | domain\_name |
| <a name="output_domain_validation_options"></a> [domain\_validation\_options](#output\_domain\_validation\_options) | domain\_validation\_options |
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_route53_record_certificate_validations"></a> [route53\_record\_certificate\_validations](#output\_route53\_record\_certificate\_validations) | certificate\_validation\_fqdns |
| <a name="output_subject_alternative_names"></a> [subject\_alternative\_names](#output\_subject\_alternative\_names) | subject\_alternative\_names |
| <a name="output_validation_record_fqdns"></a> [validation\_record\_fqdns](#output\_validation\_record\_fqdns) | validation\_record\_fqdns |
