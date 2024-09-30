# eks-blueprint #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~> 2.2.2 |
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
| <a name="module_eks_blueprint"></a> [eks\_blueprint](#module\_eks\_blueprint) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git | b2b-0.34.58 |

## Resources

| Name | Type |
|------|------|
| [aws_ebs_encryption_by_default.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ebs_encryption_by_default) | resource |
| [aws_iam_user.eks_fallback_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.eks_fallback_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_teams"></a> [application\_teams](#input\_application\_teams) | Map of maps of Application Teams to create | `any` | `{}` | no |
| <a name="input_aws_administrator_role_arn"></a> [aws\_administrator\_role\_arn](#input\_aws\_administrator\_role\_arn) | AWS Administrator Role ARN | `string` | `""` | no |
| <a name="input_aws_auth_additional_labels"></a> [aws\_auth\_additional\_labels](#input\_aws\_auth\_additional\_labels) | Additional kubernetes labels applied on aws-auth ConfigMap | `map(string)` | `{}` | no |
| <a name="input_cicd_administrator_role_arn"></a> [cicd\_administrator\_role\_arn](#input\_cicd\_administrator\_role\_arn) | CICD Administrator Role ARN | `string` | `""` | no |
| <a name="input_cicd_administrator_user_arn"></a> [cicd\_administrator\_user\_arn](#input\_cicd\_administrator\_user\_arn) | CICD Administrator User ARN | `string` | `""` | no |
| <a name="input_cloudwatch_log_group_retention_in_days"></a> [cloudwatch\_log\_group\_retention\_in\_days](#input\_cloudwatch\_log\_group\_retention\_in\_days) | Number of days to retain log events. Default retention - 90 days | `number` | `90` | no |
| <a name="input_cluster_additional_security_group_ids"></a> [cluster\_additional\_security\_group\_ids](#input\_cluster\_additional\_security\_group\_ids) | List of additional, externally created security group IDs to attach to the cluster control plane | `list(string)` | `[]` | no |
| <a name="input_cluster_enabled_log_types"></a> [cluster\_enabled\_log\_types](#input\_cluster\_enabled\_log\_types) | A list of the desired control plane logging to enable | `list(string)` | <pre>[<br>  "api",<br>  "audit",<br>  "authenticator",<br>  "controllerManager",<br>  "scheduler"<br>]</pre> | no |
| <a name="input_cluster_encryption_config"></a> [cluster\_encryption\_config](#input\_cluster\_encryption\_config) | Configuration block with encryption configuration for the cluster | <pre>list(object({<br>    provider_key_arn = string<br>    resources        = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_cluster_endpoint_private_access"></a> [cluster\_endpoint\_private\_access](#input\_cluster\_endpoint\_private\_access) | Indicates whether or not the EKS private API server endpoint is enabled. Default to EKS resource and it is false | `bool` | `false` | no |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Indicates whether or not the EKS public API server endpoint is enabled. Default to EKS resource and it is true | `bool` | `true` | no |
| <a name="input_cluster_endpoint_public_access_cidrs"></a> [cluster\_endpoint\_public\_access\_cidrs](#input\_cluster\_endpoint\_public\_access\_cidrs) | List of CIDR blocks which can access the Amazon EKS public API server endpoint | `list(string)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_cluster_identity_providers"></a> [cluster\_identity\_providers](#input\_cluster\_identity\_providers) | Map of cluster identity provider configurations to enable for the cluster. Note - this is different/separate from IRSA | `any` | `{}` | no |
| <a name="input_cluster_ip_family"></a> [cluster\_ip\_family](#input\_cluster\_ip\_family) | The IP family used to assign Kubernetes pod and service addresses. Valid values are `ipv4` (default) and `ipv6`. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created | `string` | `"ipv4"` | no |
| <a name="input_cluster_kms_key_additional_admin_arns"></a> [cluster\_kms\_key\_additional\_admin\_arns](#input\_cluster\_kms\_key\_additional\_admin\_arns) | A list of additional IAM ARNs that should have FULL access (kms:*) in the KMS key policy | `list(string)` | `[]` | no |
| <a name="input_cluster_kms_key_arn"></a> [cluster\_kms\_key\_arn](#input\_cluster\_kms\_key\_arn) | A valid EKS Cluster KMS Key ARN to encrypt Kubernetes secrets | `string` | `null` | no |
| <a name="input_cluster_kms_key_deletion_window_in_days"></a> [cluster\_kms\_key\_deletion\_window\_in\_days](#input\_cluster\_kms\_key\_deletion\_window\_in\_days) | The waiting period, specified in number of days (7 - 30). After the waiting period ends, AWS KMS deletes the KMS key | `number` | `30` | no |
| <a name="input_cluster_labels"></a> [cluster\_labels](#input\_cluster\_labels) | cluster\_labels | `map(string)` | `{}` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | EKS Cluster Name | `string` | `""` | no |
| <a name="input_cluster_region"></a> [cluster\_region](#input\_cluster\_region) | cluster\_region | `string` | `""` | no |
| <a name="input_cluster_security_group_tags"></a> [cluster\_security\_group\_tags](#input\_cluster\_security\_group\_tags) | A map of additional tags to add to the cluster security group created | `map(string)` | `{}` | no |
| <a name="input_cluster_service_ipv4_cidr"></a> [cluster\_service\_ipv4\_cidr](#input\_cluster\_service\_ipv4\_cidr) | The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks | `string` | `"192.168.0.0/16"` | no |
| <a name="input_cluster_service_ipv6_cidr"></a> [cluster\_service\_ipv6\_cidr](#input\_cluster\_service\_ipv6\_cidr) | The IPV6 Service CIDR block to assign Kubernetes service IP addresses | `string` | `null` | no |
| <a name="input_cluster_tags"></a> [cluster\_tags](#input\_cluster\_tags) | cluster\_tags | `map(string)` | `{}` | no |
| <a name="input_cluster_timeouts"></a> [cluster\_timeouts](#input\_cluster\_timeouts) | Create, update, and delete timeout configurations for the cluster | `map(string)` | `{}` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.23`) | `string` | `null` | no |
| <a name="input_control_plane_subnet_ids"></a> [control\_plane\_subnet\_ids](#input\_control\_plane\_subnet\_ids) | A list of subnet IDs where the EKS cluster control plane (ENIs) will be provisioned. Used for expanding the pool of subnets used by nodes/node groups without replacing the EKS control plane | `list(string)` | `[]` | no |
| <a name="input_create_cloudwatch_log_group"></a> [create\_cloudwatch\_log\_group](#input\_create\_cloudwatch\_log\_group) | Determines whether a log group is created by this module for the cluster logs. If not, AWS will automatically create one if logging is enabled | `bool` | `false` | no |
| <a name="input_create_cluster_security_group"></a> [create\_cluster\_security\_group](#input\_create\_cluster\_security\_group) | Toggle to create or assign cluster security group | `bool` | `true` | no |
| <a name="input_create_eks"></a> [create\_eks](#input\_create\_eks) | Create EKS cluster | `bool` | `true` | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Determines whether a an IAM role is created or to use an existing IAM role | `bool` | `true` | no |
| <a name="input_create_node_security_group"></a> [create\_node\_security\_group](#input\_create\_node\_security\_group) | Determines whether to create a security group for the node groups or use the existing `node_security_group_id` | `bool` | `true` | no |
| <a name="input_custom_oidc_thumbprints"></a> [custom\_oidc\_thumbprints](#input\_custom\_oidc\_thumbprints) | Additional list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s) | `list(string)` | `[]` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_eks_readiness_timeout"></a> [eks\_readiness\_timeout](#input\_eks\_readiness\_timeout) | The maximum time (in seconds) to wait for EKS API server endpoint to become healthy | `number` | `"600"` | no |
| <a name="input_emr_on_eks_teams"></a> [emr\_on\_eks\_teams](#input\_emr\_on\_eks\_teams) | EMR on EKS Teams config | `any` | `{}` | no |
| <a name="input_enable_emr_on_eks"></a> [enable\_emr\_on\_eks](#input\_enable\_emr\_on\_eks) | Enable EMR on EKS | `bool` | `false` | no |
| <a name="input_enable_irsa"></a> [enable\_irsa](#input\_enable\_irsa) | Determines whether to create an OpenID Connect Provider for EKS to enable IRSA | `bool` | `true` | no |
| <a name="input_enable_windows_support"></a> [enable\_windows\_support](#input\_enable\_windows\_support) | Enable Windows support | `bool` | `false` | no |
| <a name="input_engineer_admin_administrator_role_arn"></a> [engineer\_admin\_administrator\_role\_arn](#input\_engineer\_admin\_administrator\_role\_arn) | Engineering Role User ARN | `string` | `""` | no |
| <a name="input_engineer_admin_administrator_user_arn"></a> [engineer\_admin\_administrator\_user\_arn](#input\_engineer\_admin\_administrator\_user\_arn) | Engineering Administrator User ARN | `string` | `""` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | environment | `string` | `""` | no |
| <a name="input_environment_class"></a> [environment\_class](#input\_environment\_class) | environment\_class | `string` | `"Applications"` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | environment\_name | `string` | `""` | no |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | environment\_tag | `string` | `""` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | environment\_type | `string` | `"DEV"` | no |
| <a name="input_environment_type_tag"></a> [environment\_type\_tag](#input\_environment\_type\_tag) | environment\_type\_tag | `string` | `""` | no |
| <a name="input_fargate_profiles"></a> [fargate\_profiles](#input\_fargate\_profiles) | Fargate profile configuration | `any` | `{}` | no |
| <a name="input_geo_location_country"></a> [geo\_location\_country](#input\_geo\_location\_country) | geo\_location\_country | `string` | `"us"` | no |
| <a name="input_iam_role_additional_policies"></a> [iam\_role\_additional\_policies](#input\_iam\_role\_additional\_policies) | Additional policies to be added to the IAM role | `list(string)` | `[]` | no |
| <a name="input_iam_role_arn"></a> [iam\_role\_arn](#input\_iam\_role\_arn) | Existing IAM role ARN for the cluster. Required if `create_iam_role` is set to `false` | `string` | `null` | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | Name to use on IAM role created | `string` | `null` | no |
| <a name="input_iam_role_path"></a> [iam\_role\_path](#input\_iam\_role\_path) | Cluster IAM role path | `string` | `null` | no |
| <a name="input_iam_role_permissions_boundary"></a> [iam\_role\_permissions\_boundary](#input\_iam\_role\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the IAM role | `string` | `null` | no |
| <a name="input_managed_node_groups"></a> [managed\_node\_groups](#input\_managed\_node\_groups) | Managed node groups configuration | `any` | `{}` | no |
| <a name="input_map_accounts"></a> [map\_accounts](#input\_map\_accounts) | Additional AWS account numbers to add to the aws-auth ConfigMap | `list(string)` | `[]` | no |
| <a name="input_map_roles"></a> [map\_roles](#input\_map\_roles) | Additional IAM roles to add to the aws-auth ConfigMap | <pre>list(object({<br>    rolearn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_map_users"></a> [map\_users](#input\_map\_users) | Additional IAM users to add to the aws-auth ConfigMap | <pre>list(object({<br>    userarn  = string<br>    username = string<br>    groups   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_mng_capacity_type"></a> [mng\_capacity\_type](#input\_mng\_capacity\_type) | Capacity type (ON-DEMAND / SPOT) for managed node group | `string` | `"ON_DEMAND"` | no |
| <a name="input_mng_desired_size"></a> [mng\_desired\_size](#input\_mng\_desired\_size) | Desired number of nodes for managed node group | `number` | `2` | no |
| <a name="input_mng_instance_types"></a> [mng\_instance\_types](#input\_mng\_instance\_types) | Allowed instance types of nodes for managed node group | `list(string)` | <pre>[<br>  "t3.xlarge"<br>]</pre> | no |
| <a name="input_mng_max_size"></a> [mng\_max\_size](#input\_mng\_max\_size) | Maximum number of nodes for managed node group | `number` | `3` | no |
| <a name="input_mng_min_size"></a> [mng\_min\_size](#input\_mng\_min\_size) | Minimum number of nodes for managed node group | `number` | `1` | no |
| <a name="input_mng_name"></a> [mng\_name](#input\_mng\_name) | Name for the managed node group | `string` | `"bootstrap"` | no |
| <a name="input_node_security_group_additional_rules"></a> [node\_security\_group\_additional\_rules](#input\_node\_security\_group\_additional\_rules) | List of additional security group rules to add to the node security group created. Set `source_cluster_security_group = true` inside rules to set the `cluster_security_group` as source | `any` | `{}` | no |
| <a name="input_node_security_group_tags"></a> [node\_security\_group\_tags](#input\_node\_security\_group\_tags) | A map of additional tags to add to the node security group created | `map(string)` | `{}` | no |
| <a name="input_openid_connect_audiences"></a> [openid\_connect\_audiences](#input\_openid\_connect\_audiences) | List of OpenID Connect audience client IDs to add to the IRSA provider | `list(string)` | `[]` | no |
| <a name="input_platform_teams"></a> [platform\_teams](#input\_platform\_teams) | Map of maps of platform teams to create | `any` | `{}` | no |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | List of private subnets Ids for the cluster and worker nodes | `list(string)` | `[]` | no |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | project\_url | `string` | `"https://github.com/SandsB2B/b2b-infrastructure"` | no |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnets Ids for the worker nodes | `list(string)` | `[]` | no |
| <a name="input_regulatory_gli_user_arn"></a> [regulatory\_gli\_user\_arn](#input\_regulatory\_gli\_user\_arn) | Regulatory GLI User ARN | `string` | `""` | no |
| <a name="input_self_managed_node_groups"></a> [self\_managed\_node\_groups](#input\_self\_managed\_node\_groups) | Self-managed node groups configuration | `any` | `{}` | no |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | team\_name | `string` | `"cloud-engineering"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id | `string` | n/a | yes |
| <a name="input_worker_additional_security_group_ids"></a> [worker\_additional\_security\_group\_ids](#input\_worker\_additional\_security\_group\_ids) | A list of additional security group ids to attach to worker instances | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_administrator_role_arn"></a> [aws\_administrator\_role\_arn](#output\_aws\_administrator\_role\_arn) | AWS Administrator Role ARN |
| <a name="output_cicd_administrator_role_arn"></a> [cicd\_administrator\_role\_arn](#output\_cicd\_administrator\_role\_arn) | CICD Administrator Role ARN |
| <a name="output_cicd_administrator_user_arn"></a> [cicd\_administrator\_user\_arn](#output\_cicd\_administrator\_user\_arn) | CICD Administrator User ARN |
| <a name="output_cluster_primary_security_group_id"></a> [cluster\_primary\_security\_group\_id](#output\_cluster\_primary\_security\_group\_id) | Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication. Referred to as 'Cluster security group' in the EKS console |
| <a name="output_cluster_region"></a> [cluster\_region](#output\_cluster\_region) | Cluster region |
| <a name="output_cluster_security_group_arn"></a> [cluster\_security\_group\_arn](#output\_cluster\_security\_group\_arn) | Amazon Resource Name (ARN) of the cluster security group |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | EKS Control Plane Security Group ID |
| <a name="output_configure_kubectl"></a> [configure\_kubectl](#output\_configure\_kubectl) | Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig |
| <a name="output_eks_cluster_arn"></a> [eks\_cluster\_arn](#output\_eks\_cluster\_arn) | Amazon EKS Cluster Name |
| <a name="output_eks_cluster_certificate_authority_data"></a> [eks\_cluster\_certificate\_authority\_data](#output\_eks\_cluster\_certificate\_authority\_data) | Base64 encoded certificate data required to communicate with the cluster |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | Endpoint for your Kubernetes API server |
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | Amazon EKS Cluster Name |
| <a name="output_eks_cluster_status"></a> [eks\_cluster\_status](#output\_eks\_cluster\_status) | Amazon EKS Cluster Status |
| <a name="output_eks_cluster_version"></a> [eks\_cluster\_version](#output\_eks\_cluster\_version) | The Kubernetes version for the cluster |
| <a name="output_eks_fallback_user_arn"></a> [eks\_fallback\_user\_arn](#output\_eks\_fallback\_user\_arn) | IAM execution role ARN for EMR on EKS |
| <a name="output_eks_oidc_issuer_url"></a> [eks\_oidc\_issuer\_url](#output\_eks\_oidc\_issuer\_url) | The URL on the EKS cluster OIDC Issuer |
| <a name="output_eks_oidc_provider_arn"></a> [eks\_oidc\_provider\_arn](#output\_eks\_oidc\_provider\_arn) | The ARN of the OIDC Provider if `enable_irsa = true`. |
| <a name="output_emr_on_eks_role_arn"></a> [emr\_on\_eks\_role\_arn](#output\_emr\_on\_eks\_role\_arn) | IAM execution role ARN for EMR on EKS |
| <a name="output_emr_on_eks_role_id"></a> [emr\_on\_eks\_role\_id](#output\_emr\_on\_eks\_role\_id) | IAM execution role ID for EMR on EKS |
| <a name="output_fargate_profiles"></a> [fargate\_profiles](#output\_fargate\_profiles) | Outputs from EKS Fargate profiles groups |
| <a name="output_fargate_profiles_aws_auth_config_map"></a> [fargate\_profiles\_aws\_auth\_config\_map](#output\_fargate\_profiles\_aws\_auth\_config\_map) | Fargate profiles AWS auth map |
| <a name="output_fargate_profiles_iam_role_arns"></a> [fargate\_profiles\_iam\_role\_arns](#output\_fargate\_profiles\_iam\_role\_arns) | IAM role arn's for Fargate Profiles |
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_managed_node_group_arn"></a> [managed\_node\_group\_arn](#output\_managed\_node\_group\_arn) | Managed node group arn |
| <a name="output_managed_node_group_aws_auth_config_map"></a> [managed\_node\_group\_aws\_auth\_config\_map](#output\_managed\_node\_group\_aws\_auth\_config\_map) | Managed node groups AWS auth map |
| <a name="output_managed_node_group_iam_instance_profile_arns"></a> [managed\_node\_group\_iam\_instance\_profile\_arns](#output\_managed\_node\_group\_iam\_instance\_profile\_arns) | IAM instance profile arn's of managed node groups |
| <a name="output_managed_node_group_iam_instance_profile_id"></a> [managed\_node\_group\_iam\_instance\_profile\_id](#output\_managed\_node\_group\_iam\_instance\_profile\_id) | IAM instance profile id of managed node groups |
| <a name="output_managed_node_group_iam_role_arns"></a> [managed\_node\_group\_iam\_role\_arns](#output\_managed\_node\_group\_iam\_role\_arns) | IAM role arn's of managed node groups |
| <a name="output_managed_node_group_iam_role_names"></a> [managed\_node\_group\_iam\_role\_names](#output\_managed\_node\_group\_iam\_role\_names) | IAM role names of managed node groups |
| <a name="output_managed_node_groups"></a> [managed\_node\_groups](#output\_managed\_node\_groups) | Outputs from EKS Managed node groups |
| <a name="output_managed_node_groups_id"></a> [managed\_node\_groups\_id](#output\_managed\_node\_groups\_id) | EKS Managed node groups id |
| <a name="output_managed_node_groups_status"></a> [managed\_node\_groups\_status](#output\_managed\_node\_groups\_status) | EKS Managed node groups status |
| <a name="output_mng_capacity_type"></a> [mng\_capacity\_type](#output\_mng\_capacity\_type) | Capacity type (ON-DEMAND / SPOT) for managed node group |
| <a name="output_mng_desired_size"></a> [mng\_desired\_size](#output\_mng\_desired\_size) | Desired number of nodes for managed node group |
| <a name="output_mng_instance_types"></a> [mng\_instance\_types](#output\_mng\_instance\_types) | Allowed instance types of nodes for managed node group |
| <a name="output_mng_max_size"></a> [mng\_max\_size](#output\_mng\_max\_size) | Maximum number of nodes for managed node group |
| <a name="output_mng_min_size"></a> [mng\_min\_size](#output\_mng\_min\_size) | Minimum number of nodes for managed node group |
| <a name="output_oidc_provider"></a> [oidc\_provider](#output\_oidc\_provider) | The OpenID Connect identity provider (issuer URL without leading `https://`) |
| <a name="output_role_list"></a> [role\_list](#output\_role\_list) | Role list |
| <a name="output_self_managed_node_group_autoscaling_groups"></a> [self\_managed\_node\_group\_autoscaling\_groups](#output\_self\_managed\_node\_group\_autoscaling\_groups) | Autoscaling group names of self managed node groups |
| <a name="output_self_managed_node_group_aws_auth_config_map"></a> [self\_managed\_node\_group\_aws\_auth\_config\_map](#output\_self\_managed\_node\_group\_aws\_auth\_config\_map) | Self managed node groups AWS auth map |
| <a name="output_self_managed_node_group_iam_instance_profile_id"></a> [self\_managed\_node\_group\_iam\_instance\_profile\_id](#output\_self\_managed\_node\_group\_iam\_instance\_profile\_id) | IAM instance profile id of managed node groups |
| <a name="output_self_managed_node_group_iam_role_arns"></a> [self\_managed\_node\_group\_iam\_role\_arns](#output\_self\_managed\_node\_group\_iam\_role\_arns) | IAM role arn's of self managed node groups |
| <a name="output_self_managed_node_groups"></a> [self\_managed\_node\_groups](#output\_self\_managed\_node\_groups) | Outputs from EKS Self-managed node groups |
| <a name="output_teams"></a> [teams](#output\_teams) | Outputs from EKS Fargate profiles groups |
| <a name="output_user_list"></a> [user\_list](#output\_user\_list) | User list |
| <a name="output_windows_node_group_aws_auth_config_map"></a> [windows\_node\_group\_aws\_auth\_config\_map](#output\_windows\_node\_group\_aws\_auth\_config\_map) | Windows node groups AWS auth map |
| <a name="output_worker_node_security_group_arn"></a> [worker\_node\_security\_group\_arn](#output\_worker\_node\_security\_group\_arn) | Amazon Resource Name (ARN) of the worker node shared security group |
| <a name="output_worker_node_security_group_id"></a> [worker\_node\_security\_group\_id](#output\_worker\_node\_security\_group\_id) | ID of the worker node shared security group |
