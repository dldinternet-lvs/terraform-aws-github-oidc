# postgres-setup #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_postgresql"></a> [postgresql](#requirement\_postgresql) | 1.19.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |
| <a name="provider_postgresql"></a> [postgresql](#provider\_postgresql) | 1.19.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret.db_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.db_secret](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [postgresql_database.database](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.19.0/docs/resources/database) | resource |
| [postgresql_role.db_role](https://registry.terraform.io/providers/cyrilgdn/postgresql/1.19.0/docs/resources/role) | resource |
| [random_password.db_password](https://registry.terraform.io/providers/hashicorp/random/3.3.2/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_db"></a> [create\_db](#input\_create\_db) | Database created? | `bool` | `true` | no |
| <a name="input_create_secret"></a> [create\_secret](#input\_create\_secret) | Secret(s) created? | `bool` | `true` | no |
| <a name="input_create_user"></a> [create\_user](#input\_create\_user) | User created? | `bool` | `true` | no |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | RDS database name | `string` | `""` | no |
| <a name="input_db_port"></a> [db\_port](#input\_db\_port) | RDS cluster TCP port | `string` | `"5432"` | no |
| <a name="input_db_read_endpoint"></a> [db\_read\_endpoint](#input\_db\_read\_endpoint) | RDS cluster read endpoint | `string` | `""` | no |
| <a name="input_db_write_endpoint"></a> [db\_write\_endpoint](#input\_db\_write\_endpoint) | RDS cluster write endpoint | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `string` | n/a | yes |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Secret Name used across resources created | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_role_name"></a> [db\_role\_name](#output\_db\_role\_name) | Role |
| <a name="output_db_secret_arn"></a> [db\_secret\_arn](#output\_db\_secret\_arn) | n/a |
| <a name="output_db_secret_id"></a> [db\_secret\_id](#output\_db\_secret\_id) | secrets manager |
| <a name="output_db_secret_version_arn"></a> [db\_secret\_version\_arn](#output\_db\_secret\_version\_arn) | n/a |
| <a name="output_db_secret_version_id"></a> [db\_secret\_version\_id](#output\_db\_secret\_version\_id) | n/a |
