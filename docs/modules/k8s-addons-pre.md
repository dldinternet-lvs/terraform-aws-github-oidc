# k8s-addons-pre #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.14 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.16.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.8.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.16.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_constants"></a> [constants](#module\_constants) | ../constants | n/a |
| <a name="module_external_secrets"></a> [external\_secrets](#module\_external\_secrets) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/kubernetes-addons/external-secrets | b2b-0.34.58 |
| <a name="module_onepassword_connect"></a> [onepassword\_connect](#module\_onepassword\_connect) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/kubernetes-addons/helm-addon | b2b-0.34.58 |

## Resources

| Name | Type |
|------|------|
| [helm_release.datadog_api_key](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.datadog_operator_api_key](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.op_aws_external_secrets](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_manifest.onepassworditem](https://registry.terraform.io/providers/hashicorp/kubernetes/2.16.1/docs/resources/manifest) | resource |
| [time_sleep.dataplane](https://registry.terraform.io/providers/hashicorp/time/0.9.1/docs/resources/sleep) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_argocd_manage_add_ons"></a> [argocd\_manage\_add\_ons](#input\_argocd\_manage\_add\_ons) | Enable managing add-on configuration via ArgoCD App of Apps | `bool` | `false` | no |
| <a name="input_data_plane_wait_arn"></a> [data\_plane\_wait\_arn](#input\_data\_plane\_wait\_arn) | Addon deployment will not proceed until this value is known. Set to node group/Fargate profile ARN to wait for data plane to be ready before provisioning addons | `string` | `""` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#input\_eks\_cluster\_endpoint) | Endpoint for your Kubernetes API server | `string` | `null` | no |
| <a name="input_eks_cluster_id"></a> [eks\_cluster\_id](#input\_eks\_cluster\_id) | EKS Cluster Id | `string` | n/a | yes |
| <a name="input_eks_cluster_region"></a> [eks\_cluster\_region](#input\_eks\_cluster\_region) | eks\_cluster\_region | `string` | `""` | no |
| <a name="input_eks_oidc_provider"></a> [eks\_oidc\_provider](#input\_eks\_oidc\_provider) | The OpenID Connect identity provider (issuer URL without leading `https://`) | `string` | `null` | no |
| <a name="input_enable_datadog_api_key"></a> [enable\_datadog\_api\_key](#input\_enable\_datadog\_api\_key) | Enable Datadog add-on API key | `bool` | `true` | no |
| <a name="input_enable_external_secrets"></a> [enable\_external\_secrets](#input\_enable\_external\_secrets) | Enable External Secrets operator add-on | `bool` | `false` | no |
| <a name="input_enable_onepassword"></a> [enable\_onepassword](#input\_enable\_onepassword) | Enable OnePassword add-on | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | environment | `string` | `""` | no |
| <a name="input_environment_class"></a> [environment\_class](#input\_environment\_class) | environment\_class | `string` | `"Applications"` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | environment\_name | `string` | `""` | no |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | environment\_tag | `string` | `""` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | environment\_type | `string` | `"DEV"` | no |
| <a name="input_environment_type_tag"></a> [environment\_type\_tag](#input\_environment\_type\_tag) | environment\_type\_tag | `string` | `""` | no |
| <a name="input_external_secrets_helm_config"></a> [external\_secrets\_helm\_config](#input\_external\_secrets\_helm\_config) | External Secrets operator Helm Chart config | `any` | `{}` | no |
| <a name="input_external_secrets_irsa_policies"></a> [external\_secrets\_irsa\_policies](#input\_external\_secrets\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_external_secrets_secrets_manager_arns"></a> [external\_secrets\_secrets\_manager\_arns](#input\_external\_secrets\_secrets\_manager\_arns) | List of Secrets Manager ARNs that contain secrets to mount using External Secrets | `list(string)` | <pre>[<br>  "arn:aws:secretsmanager:*:*:secret:*"<br>]</pre> | no |
| <a name="input_external_secrets_ssm_parameter_arns"></a> [external\_secrets\_ssm\_parameter\_arns](#input\_external\_secrets\_ssm\_parameter\_arns) | List of Systems Manager Parameter ARNs that contain secrets to mount using External Secrets | `list(string)` | <pre>[<br>  "arn:aws:ssm:*:*:parameter/*"<br>]</pre> | no |
| <a name="input_geo_location_country"></a> [geo\_location\_country](#input\_geo\_location\_country) | geo\_location\_country | `string` | `"us"` | no |
| <a name="input_irsa_iam_permissions_boundary"></a> [irsa\_iam\_permissions\_boundary](#input\_irsa\_iam\_permissions\_boundary) | IAM permissions boundary for IRSA roles | `string` | `""` | no |
| <a name="input_irsa_iam_role_path"></a> [irsa\_iam\_role\_path](#input\_irsa\_iam\_role\_path) | IAM role path for IRSA roles | `string` | `"/"` | no |
| <a name="input_onepassword_connect_chart_version"></a> [onepassword\_connect\_chart\_version](#input\_onepassword\_connect\_chart\_version) | OnePassword Connect Chart Version | `string` | `"1.15.1"` | no |
| <a name="input_onepassword_helm_config"></a> [onepassword\_helm\_config](#input\_onepassword\_helm\_config) | OnePassword Helm Chart config | `any` | `{}` | no |
| <a name="input_onepassword_refresh_interval"></a> [onepassword\_refresh\_interval](#input\_onepassword\_refresh\_interval) | OnePassword refresh interval | `string` | `"10m"` | no |
| <a name="input_onepassworditems"></a> [onepassworditems](#input\_onepassworditems) | OnePasswordItems to expose in the cluster | `map(any)` | `{}` | no |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | project\_url | `string` | `"https://github.com/SandsB2B/b2b-infrastructure"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit`,`XYZ`) | `map(string)` | `{}` | no |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | team\_name | `string` | `"cloud-engineering"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_default_tags"></a> [default\_tags](#output\_default\_tags) | Default tags |
| <a name="output_external_secrets"></a> [external\_secrets](#output\_external\_secrets) | Map of attributes of the Helm release and IRSA created |
| <a name="output_helm_release_datadog_api_key_metadata"></a> [helm\_release\_datadog\_api\_key\_metadata](#output\_helm\_release\_datadog\_api\_key\_metadata) | Datadog API key metadata for the Helm release |
| <a name="output_helm_release_datadog_operator_api_key_metadata"></a> [helm\_release\_datadog\_operator\_api\_key\_metadata](#output\_helm\_release\_datadog\_operator\_api\_key\_metadata) | Datadog API key metadata for the Helm release |
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
