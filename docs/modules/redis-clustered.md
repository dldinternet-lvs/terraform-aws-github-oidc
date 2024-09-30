# redis-clustered #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.10 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

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
| [aws_cloudwatch_log_group.ec_log_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_elasticache_parameter_group.ec_param_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_parameter_group) | resource |
| [aws_elasticache_replication_group.elasticache](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group) | resource |
| [aws_elasticache_subnet_group.ec_subnet_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group) | resource |
| [aws_security_group.ec_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.ec_security_group_rule_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ec_security_group_rule_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_cidr_blocks"></a> [allowed\_cidr\_blocks](#input\_allowed\_cidr\_blocks) | List of CIDR blocks that can access redis | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_allowed_security_groups"></a> [allowed\_security\_groups](#input\_allowed\_security\_groups) | List of security group id that can access redis | `list(string)` | `[]` | no |
| <a name="input_create"></a> [create](#input\_create) | Create redis cluster | `bool` | `true` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the redis cluster | `string` | `"Redis Cluster"` | no |
| <a name="input_engine_major_version"></a> [engine\_major\_version](#input\_engine\_major\_version) | Major Redis Version | `string` | `"7"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Specific Redis Version | `string` | `"7.0"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment full name | `string` | `""` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | Environment name - resource friendly e.g. meets the 1-38 character prefix limitation. May be the same as 'environment' | `string` | `""` | no |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | environment\_tag | `string` | `""` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | environment\_type | `string` | `"DEV"` | no |
| <a name="input_environment_type_tag"></a> [environment\_type\_tag](#input\_environment\_type\_tag) | environment\_type\_tag | `string` | `""` | no |
| <a name="input_from_port"></a> [from\_port](#input\_from\_port) | Start/low TCP Port Number | `number` | `6379` | no |
| <a name="input_geo_location_country"></a> [geo\_location\_country](#input\_geo\_location\_country) | geo\_location\_country | `string` | `"us"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the redis cluster | `string` | `""` | no |
| <a name="input_node_instance_type"></a> [node\_instance\_type](#input\_node\_instance\_type) | Name used across resources created | `string` | `"cache.r6g.large"` | no |
| <a name="input_num_node_groups"></a> [num\_node\_groups](#input\_num\_node\_groups) | Name used across resources created | `number` | `2` | no |
| <a name="input_num_replicas_per_node_group"></a> [num\_replicas\_per\_node\_group](#input\_num\_replicas\_per\_node\_group) | Name used across resources created | `number` | `1` | no |
| <a name="input_port"></a> [port](#input\_port) | End/High TCP Port Number | `number` | `6379` | no |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | project\_url | `string` | `"https://github.com/SandsB2B/b2b-infrastructure"` | no |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | VPC Security Groups to create cluster in | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `map(string)` | `{}` | no |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | team\_name | `string` | `"cloud-engineering"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC to create redis cluster in | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_arn"></a> [cluster\_arn](#output\_cluster\_arn) | Amazon Resource Name (ARN) of cluster |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | The Redis Cluster Name |
| <a name="output_confiuguration_endpoint"></a> [confiuguration\_endpoint](#output\_confiuguration\_endpoint) | The configuration/write endpoint for the elasticache cluster |
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_primary_endpoint"></a> [primary\_endpoint](#output\_primary\_endpoint) | The primary node endpoint for the elasticache cluster |
| <a name="output_reader_endpoint"></a> [reader\_endpoint](#output\_reader\_endpoint) | The reader endpoint for the elasticache cluster |
