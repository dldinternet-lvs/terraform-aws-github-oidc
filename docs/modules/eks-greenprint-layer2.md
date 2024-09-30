# eks-greenprint-layer2 #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | ~> 2.2.2 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 2.4.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.14 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.10 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |
| <a name="provider_http"></a> [http](#provider\_http) | 2.4.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.10 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_eks_fargate_profiles"></a> [aws\_eks\_fargate\_profiles](#module\_aws\_eks\_fargate\_profiles) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/aws-eks-fargate-profiles | b2b-0.34.58 |
| <a name="module_aws_eks_managed_node_groups"></a> [aws\_eks\_managed\_node\_groups](#module\_aws\_eks\_managed\_node\_groups) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/aws-eks-managed-node-groups | b2b-0.34.58 |
| <a name="module_aws_eks_self_managed_node_groups"></a> [aws\_eks\_self\_managed\_node\_groups](#module\_aws\_eks\_self\_managed\_node\_groups) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/aws-eks-self-managed-node-groups | b2b-0.34.58 |
| <a name="module_aws_eks_teams"></a> [aws\_eks\_teams](#module\_aws\_eks\_teams) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/aws-eks-teams | b2b-0.34.58 |
| <a name="module_common_data"></a> [common\_data](#module\_common\_data) | ../common-data | n/a |
| <a name="module_constants"></a> [constants](#module\_constants) | ../constants | n/a |
| <a name="module_emr_on_eks"></a> [emr\_on\_eks](#module\_emr\_on\_eks) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/emr-on-eks | b2b-0.34.58 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.eks_fallback_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_policy.eks_fallback_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy) | resource |
| [kubernetes_config_map.amazon_vpc_cni](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_config_map.aws_auth](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [http_http.eks_cluster_readiness](https://registry.terraform.io/providers/terraform-aws-modules/http/2.4.1/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_application_teams"></a> [application\_teams](#input\_application\_teams) | Map of maps of Application Teams to create | `any` | `{}` | no |
| <a name="input_aws_administrator_role_arn"></a> [aws\_administrator\_role\_arn](#input\_aws\_administrator\_role\_arn) | AWS Administrator Role ARN | `string` | `""` | no |
| <a name="input_aws_auth_additional_labels"></a> [aws\_auth\_additional\_labels](#input\_aws\_auth\_additional\_labels) | Additional kubernetes labels applied on aws-auth ConfigMap | `map(string)` | `{}` | no |
| <a name="input_aws_poweruser_role_arn"></a> [aws\_poweruser\_role\_arn](#input\_aws\_poweruser\_role\_arn) | AWS PowerUser Role ARN | `string` | `""` | no |
| <a name="input_cicd_administrator_role_arns"></a> [cicd\_administrator\_role\_arns](#input\_cicd\_administrator\_role\_arns) | CICD Administrator Role ARNs list | `list(string)` | `[]` | no |
| <a name="input_cicd_administrator_user_arns"></a> [cicd\_administrator\_user\_arns](#input\_cicd\_administrator\_user\_arns) | CICD Administrator User ARNs list | `list(string)` | `[]` | no |
| <a name="input_cluster_ca_base64"></a> [cluster\_ca\_base64](#input\_cluster\_ca\_base64) | The cluster certificate authority data | `string` | n/a | yes |
| <a name="input_cluster_endpoint"></a> [cluster\_endpoint](#input\_cluster\_endpoint) | The cluster endpoint | `string` | n/a | yes |
| <a name="input_cluster_id"></a> [cluster\_id](#input\_cluster\_id) | The name/id of the EKS cluster. | `string` | `""` | no |
| <a name="input_cluster_labels"></a> [cluster\_labels](#input\_cluster\_labels) | cluster\_labels | `map(string)` | `{}` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Name of the EKS cluster | `string` | `""` | no |
| <a name="input_cluster_node_security_group_id"></a> [cluster\_node\_security\_group\_id](#input\_cluster\_node\_security\_group\_id) | The cluster node security group id | `string` | n/a | yes |
| <a name="input_cluster_region"></a> [cluster\_region](#input\_cluster\_region) | cluster\_region | `string` | `""` | no |
| <a name="input_cluster_service_ipv4_cidr"></a> [cluster\_service\_ipv4\_cidr](#input\_cluster\_service\_ipv4\_cidr) | The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks | `string` | `"192.168.0.0/16"` | no |
| <a name="input_cluster_service_ipv6_cidr"></a> [cluster\_service\_ipv6\_cidr](#input\_cluster\_service\_ipv6\_cidr) | The IPV6 Service CIDR block to assign Kubernetes service IP addresses | `string` | `null` | no |
| <a name="input_cluster_tags"></a> [cluster\_tags](#input\_cluster\_tags) | A map of additional tags to add to the cluster | `map(string)` | `{}` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.22`) | `string` | `null` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_eks_readiness_timeout"></a> [eks\_readiness\_timeout](#input\_eks\_readiness\_timeout) | The maximum time (in seconds) to wait for EKS API server endpoint to become healthy | `number` | `600` | no |
| <a name="input_emr_on_eks_teams"></a> [emr\_on\_eks\_teams](#input\_emr\_on\_eks\_teams) | EMR on EKS Teams config | `any` | `{}` | no |
| <a name="input_enable_emr_on_eks"></a> [enable\_emr\_on\_eks](#input\_enable\_emr\_on\_eks) | Enable EMR on EKS | `bool` | `false` | no |
| <a name="input_enable_windows_support"></a> [enable\_windows\_support](#input\_enable\_windows\_support) | Enable Windows support | `bool` | `true` | no |
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
| <a name="input_iam_role_path"></a> [iam\_role\_path](#input\_iam\_role\_path) | Cluster IAM role path | `string` | `null` | no |
| <a name="input_iam_role_permissions_boundary"></a> [iam\_role\_permissions\_boundary](#input\_iam\_role\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the IAM role | `string` | `null` | no |
| <a name="input_managed_node_groups"></a> [managed\_node\_groups](#input\_managed\_node\_groups) | Managed node groups configuration | `any` | `{}` | no |
| <a name="input_map_accounts"></a> [map\_accounts](#input\_map\_accounts) | Additional AWS account numbers to add to the aws-auth ConfigMap | `list(string)` | `[]` | no |
| <a name="input_map_roles"></a> [map\_roles](#input\_map\_roles) | Additional IAM roles to add to the aws-auth ConfigMap | `list(object({ rolearn : string, username : string, groups : list(string) }))` | `[]` | no |
| <a name="input_map_users"></a> [map\_users](#input\_map\_users) | Additional IAM users to add to the aws-auth ConfigMap | `list(object({ userarn : string, username : string, groups : list(string) }))` | `[]` | no |
| <a name="input_mng_capacity_type"></a> [mng\_capacity\_type](#input\_mng\_capacity\_type) | Capacity type (ON-DEMAND / SPOT) for managed node group | `string` | `"ON_DEMAND"` | no |
| <a name="input_mng_desired_size"></a> [mng\_desired\_size](#input\_mng\_desired\_size) | Desired number of nodes for managed node group | `number` | `2` | no |
| <a name="input_mng_instance_types"></a> [mng\_instance\_types](#input\_mng\_instance\_types) | Allowed instance types of nodes for managed node group | `list(string)` | <pre>[<br>  "t3.xlarge"<br>]</pre> | no |
| <a name="input_mng_max_size"></a> [mng\_max\_size](#input\_mng\_max\_size) | Maximum number of nodes for managed node group | `number` | `3` | no |
| <a name="input_mng_min_size"></a> [mng\_min\_size](#input\_mng\_min\_size) | Minimum number of nodes for managed node group | `number` | `1` | no |
| <a name="input_mng_name"></a> [mng\_name](#input\_mng\_name) | Name for the managed node group | `string` | `"bootstrap"` | no |
| <a name="input_platform_teams"></a> [platform\_teams](#input\_platform\_teams) | Map of maps of platform teams to create | `any` | `{}` | no |
| <a name="input_private_subnet_ids"></a> [private\_subnet\_ids](#input\_private\_subnet\_ids) | List of private subnets Ids for the cluster and worker nodes | `list(string)` | `[]` | no |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | project\_url | `string` | `"https://github.com/SandsB2B/b2b-infrastructure"` | no |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnets Ids for the worker nodes | `list(string)` | `[]` | no |
| <a name="input_regulatory_gli_user_arn"></a> [regulatory\_gli\_user\_arn](#input\_regulatory\_gli\_user\_arn) | Regulatory GLI User ARN | `string` | `""` | no |
| <a name="input_self_managed_node_groups"></a> [self\_managed\_node\_groups](#input\_self\_managed\_node\_groups) | Self-managed node groups configuration | `any` | `{}` | no |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | team\_name | `string` | `"cloud-engineering"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC where the cluster and its nodes will be provisioned | `string` | n/a | yes |
| <a name="input_worker_additional_security_group_ids"></a> [worker\_additional\_security\_group\_ids](#input\_worker\_additional\_security\_group\_ids) | A list of additional security group ids to attach to worker instances | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_teams_configure_kubectls"></a> [application\_teams\_configure\_kubectls](#output\_application\_teams\_configure\_kubectls) | Configure kubectl for each Application Teams: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig |
| <a name="output_application_teams_iam_role_arns"></a> [application\_teams\_iam\_role\_arns](#output\_application\_teams\_iam\_role\_arns) | IAM role ARN for Teams |
| <a name="output_eks_fargate_profile_arns"></a> [eks\_fargate\_profile\_arns](#output\_eks\_fargate\_profile\_arns) | Amazon Resource Name (ARN) of the EKS Fargate Profile |
| <a name="output_eks_fargate_profile_ids"></a> [eks\_fargate\_profile\_ids](#output\_eks\_fargate\_profile\_ids) | EKS Cluster name and EKS Fargate Profile name separated by a colon |
| <a name="output_eks_fargate_profile_role_names"></a> [eks\_fargate\_profile\_role\_names](#output\_eks\_fargate\_profile\_role\_names) | Name of the EKS Fargate Profile IAM role |
| <a name="output_emr_on_eks_role_arns"></a> [emr\_on\_eks\_role\_arns](#output\_emr\_on\_eks\_role\_arns) | IAM execution role ARN for EMR on EKS |
| <a name="output_emr_on_eks_role_ids"></a> [emr\_on\_eks\_role\_ids](#output\_emr\_on\_eks\_role\_ids) | IAM execution role ID for EMR on EKS |
| <a name="output_launch_template_arns"></a> [launch\_template\_arns](#output\_launch\_template\_arns) | Launch Template ARNs for EKS Self Managed Node Group |
| <a name="output_launch_template_ids"></a> [launch\_template\_ids](#output\_launch\_template\_ids) | Launch Template IDs for EKS Self Managed Node Group |
| <a name="output_launch_template_latest_versions"></a> [launch\_template\_latest\_versions](#output\_launch\_template\_latest\_versions) | Launch Template latest versions for EKS Self Managed Node Group |
| <a name="output_managed_nodegroup_arns"></a> [managed\_nodegroup\_arns](#output\_managed\_nodegroup\_arns) | EKS Managed node group id |
| <a name="output_managed_nodegroup_iam_instance_profile_arns"></a> [managed\_nodegroup\_iam\_instance\_profile\_arns](#output\_managed\_nodegroup\_iam\_instance\_profile\_arns) | IAM instance profile arn for EKS Managed Node Group |
| <a name="output_managed_nodegroup_iam_instance_profile_ids"></a> [managed\_nodegroup\_iam\_instance\_profile\_ids](#output\_managed\_nodegroup\_iam\_instance\_profile\_ids) | IAM instance profile id for EKS Managed Node Group |
| <a name="output_managed_nodegroup_iam_role_arns"></a> [managed\_nodegroup\_iam\_role\_arns](#output\_managed\_nodegroup\_iam\_role\_arns) | IAM role ARN for EKS Managed Node Group |
| <a name="output_managed_nodegroup_iam_role_names"></a> [managed\_nodegroup\_iam\_role\_names](#output\_managed\_nodegroup\_iam\_role\_names) | IAM role name for EKS Managed Node Group |
| <a name="output_managed_nodegroup_ids"></a> [managed\_nodegroup\_ids](#output\_managed\_nodegroup\_ids) | EKS Managed node group id |
| <a name="output_managed_nodegroup_launch_template_arns"></a> [managed\_nodegroup\_launch\_template\_arns](#output\_managed\_nodegroup\_launch\_template\_arns) | Launch Template ARN for EKS Managed Node Group |
| <a name="output_managed_nodegroup_launch_template_ids"></a> [managed\_nodegroup\_launch\_template\_ids](#output\_managed\_nodegroup\_launch\_template\_ids) | Launch Template ID for EKS Managed Node Group |
| <a name="output_managed_nodegroup_launch_template_latest_versions"></a> [managed\_nodegroup\_launch\_template\_latest\_versions](#output\_managed\_nodegroup\_launch\_template\_latest\_versions) | Launch Template version for EKS Managed Node Group |
| <a name="output_managed_nodegroup_statuses"></a> [managed\_nodegroup\_statuses](#output\_managed\_nodegroup\_statuses) | EKS Managed Node Group status |
| <a name="output_platform_teams_configure_kubectls"></a> [platform\_teams\_configure\_kubectls](#output\_platform\_teams\_configure\_kubectls) | Configure kubectl for each Platform Team: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig |
| <a name="output_platform_teams_iam_role_arns"></a> [platform\_teams\_iam\_role\_arns](#output\_platform\_teams\_iam\_role\_arns) | IAM role ARN for Platform Teams |
| <a name="output_self_managed_asg_names"></a> [self\_managed\_asg\_names](#output\_self\_managed\_asg\_names) | Self managed group ASG names |
| <a name="output_self_managed_iam_role_names"></a> [self\_managed\_iam\_role\_names](#output\_self\_managed\_iam\_role\_names) | Self managed groups IAM role names |
| <a name="output_self_managed_nodegroup_iam_instance_profile_arns"></a> [self\_managed\_nodegroup\_iam\_instance\_profile\_arns](#output\_self\_managed\_nodegroup\_iam\_instance\_profile\_arns) | IAM Instance Profile and for EKS Self Managed Node Group |
| <a name="output_self_managed_nodegroup_iam_instance_profile_ids"></a> [self\_managed\_nodegroup\_iam\_instance\_profile\_ids](#output\_self\_managed\_nodegroup\_iam\_instance\_profile\_ids) | IAM Instance Profile ID for EKS Self Managed Node Group |
| <a name="output_self_managed_nodegroup_iam_role_arns"></a> [self\_managed\_nodegroup\_iam\_role\_arns](#output\_self\_managed\_nodegroup\_iam\_role\_arns) | Self managed groups IAM role arns |
| <a name="output_self_managed_nodegroup_names"></a> [self\_managed\_nodegroup\_names](#output\_self\_managed\_nodegroup\_names) | EKS Self Managed node group id |
| <a name="output_team_sa_irsa_iam_role_arns"></a> [team\_sa\_irsa\_iam\_role\_arns](#output\_team\_sa\_irsa\_iam\_role\_arns) | IAM role ARN for Teams EKS Service Account (IRSA) |
| <a name="output_team_sa_irsa_iam_roles"></a> [team\_sa\_irsa\_iam\_roles](#output\_team\_sa\_irsa\_iam\_roles) | IAM role name for Teams EKS Service Account (IRSA) |
