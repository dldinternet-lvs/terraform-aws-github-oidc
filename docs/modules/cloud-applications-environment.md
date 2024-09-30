# cloud-applications-environment #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | 2.2.0 |
| <a name="requirement_external"></a> [external](#requirement\_external) | 2.2.3 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.8.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.14 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.16.1 |
| <a name="requirement_local"></a> [local](#requirement\_local) | 2.3.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | 3.2.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.9.1 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloud_applications"></a> [cloud\_applications](#module\_cloud\_applications) | ../../modules/app | n/a |
| <a name="module_common_data"></a> [common\_data](#module\_common\_data) | ../../modules/common-data | n/a |
| <a name="module_constants"></a> [constants](#module\_constants) | ../../modules/constants | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acm_certificates"></a> [acm\_certificates](#input\_acm\_certificates) | ACM Certificates | `map(any)` | `{}` | no |
| <a name="input_alb_ingress_default_action"></a> [alb\_ingress\_default\_action](#input\_alb\_ingress\_default\_action) | Default action for the ACL | `string` | `"allow"` | no |
| <a name="input_alb_ingress_default_timeout"></a> [alb\_ingress\_default\_timeout](#input\_alb\_ingress\_default\_timeout) | Default load balancer timeout in seconds | `number` | `300` | no |
| <a name="input_alb_ingress_hostname"></a> [alb\_ingress\_hostname](#input\_alb\_ingress\_hostname) | Hostname to use for the ingress - default is *.{eks\_cluster\_domain} | `string` | `""` | no |
| <a name="input_alb_ingress_name"></a> [alb\_ingress\_name](#input\_alb\_ingress\_name) | Name of the ingress to create | `string` | `""` | no |
| <a name="input_alb_ingress_rule_group"></a> [alb\_ingress\_rule\_group](#input\_alb\_ingress\_rule\_group) | Rule group for the alb ingress web acl | `list(any)` | `[]` | no |
| <a name="input_alb_ingress_web_acl_rule_action"></a> [alb\_ingress\_web\_acl\_rule\_action](#input\_alb\_ingress\_web\_acl\_rule\_action) | Override action for the rule. | `string` | `"none"` | no |
| <a name="input_argocd_applications"></a> [argocd\_applications](#input\_argocd\_applications) | Argo CD Applications config to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_argocd_applicationsets"></a> [argocd\_applicationsets](#input\_argocd\_applicationsets) | ArgoCD ApplicationSets config to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_argocd_helm_config"></a> [argocd\_helm\_config](#input\_argocd\_helm\_config) | Argo CD Kubernetes add-on config | `map(any)` | `{}` | no |
| <a name="input_argocd_helm_variables"></a> [argocd\_helm\_variables](#input\_argocd\_helm\_variables) | argocd\_helm\_variables | `map(any)` | `{}` | no |
| <a name="input_argocd_manage_add_ons"></a> [argocd\_manage\_add\_ons](#input\_argocd\_manage\_add\_ons) | Enable managing add-on configuration via ArgoCD App of Apps | `bool` | `false` | no |
| <a name="input_argocd_onepassworditems"></a> [argocd\_onepassworditems](#input\_argocd\_onepassworditems) | ArgoCD OnePasswordItems to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_aws_load_balancer_controller_helm_config"></a> [aws\_load\_balancer\_controller\_helm\_config](#input\_aws\_load\_balancer\_controller\_helm\_config) | AWS Load Balancer Controller Helm Chart config | `map(any)` | `{}` | no |
| <a name="input_cert_manager_domain_names"></a> [cert\_manager\_domain\_names](#input\_cert\_manager\_domain\_names) | Domain names of the Route53 hosted zone to use with cert-manager | `list(string)` | `[]` | no |
| <a name="input_cicd_administrator_role_arns"></a> [cicd\_administrator\_role\_arns](#input\_cicd\_administrator\_role\_arns) | cicd\_administrator\_role\_arns | `list(string)` | `[]` | no |
| <a name="input_cicd_administrator_user_arns"></a> [cicd\_administrator\_user\_arns](#input\_cicd\_administrator\_user\_arns) | cicd\_administrator\_user\_arns | `list(string)` | `[]` | no |
| <a name="input_crossplane_aws_provider"></a> [crossplane\_aws\_provider](#input\_crossplane\_aws\_provider) | AWS Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_contrib_provider_sql_version"></a> [crossplane\_contrib\_provider\_sql\_version](#input\_crossplane\_contrib\_provider\_sql\_version) | crossplane\_contrib\_provider\_sql\_version | `string` | `"0.6.0"` | no |
| <a name="input_crossplane_helm_config"></a> [crossplane\_helm\_config](#input\_crossplane\_helm\_config) | Crossplane Helm Chart config | `map(any)` | `{}` | no |
| <a name="input_crossplane_helm_variables"></a> [crossplane\_helm\_variables](#input\_crossplane\_helm\_variables) | Crossplane Helm variables | `map(any)` | `{}` | no |
| <a name="input_crossplane_jet_aws_provider"></a> [crossplane\_jet\_aws\_provider](#input\_crossplane\_jet\_aws\_provider) | AWS Provider Jet AWS config for Crossplane | <pre>object({<br>    enable                   = bool<br>    provider_aws_version     = string<br>    additional_irsa_policies = list(string)<br>  })</pre> | <pre>{<br>  "additional_irsa_policies": [],<br>  "enable": false,<br>  "provider_aws_version": "v0.24.1"<br>}</pre> | no |
| <a name="input_datadog_api_key"></a> [datadog\_api\_key](#input\_datadog\_api\_key) | datadog\_api\_key | `string` | `""` | no |
| <a name="input_datadog_helm_config"></a> [datadog\_helm\_config](#input\_datadog\_helm\_config) | datadog\_helm\_config | `map(any)` | `{}` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | domain\_name | `string` | n/a | yes |
| <a name="input_domain_name_servers"></a> [domain\_name\_servers](#input\_domain\_name\_servers) | domain\_name\_servers | `list(string)` | `[]` | no |
| <a name="input_domain_parent_zone_id"></a> [domain\_parent\_zone\_id](#input\_domain\_parent\_zone\_id) | domain\_parent\_zone\_id | `string` | `""` | no |
| <a name="input_eks_cluster_service_ipv4_cidr"></a> [eks\_cluster\_service\_ipv4\_cidr](#input\_eks\_cluster\_service\_ipv4\_cidr) | The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks | `string` | `"192.168.0.0/16"` | no |
| <a name="input_eks_cluster_service_ipv6_cidr"></a> [eks\_cluster\_service\_ipv6\_cidr](#input\_eks\_cluster\_service\_ipv6\_cidr) | The IPV6 Service CIDR block to assign Kubernetes service IP addresses | `string` | `null` | no |
| <a name="input_enable_addons"></a> [enable\_addons](#input\_enable\_addons) | enable\_addons | `bool` | `true` | no |
| <a name="input_enable_alb_ingress"></a> [enable\_alb\_ingress](#input\_enable\_alb\_ingress) | Create a wildcard ingress for the ALB? | `bool` | `true` | no |
| <a name="input_enable_alb_ingress_cloudwatch_metrics"></a> [enable\_alb\_ingress\_cloudwatch\_metrics](#input\_enable\_alb\_ingress\_cloudwatch\_metrics) | Enable ALB ingress cloudwatch metrics | `bool` | `false` | no |
| <a name="input_enable_alb_ingress_sampled_requests"></a> [enable\_alb\_ingress\_sampled\_requests](#input\_enable\_alb\_ingress\_sampled\_requests) | Enable ALB ingress sampled requests | `bool` | `false` | no |
| <a name="input_enable_alb_ingress_web_acl"></a> [enable\_alb\_ingress\_web\_acl](#input\_enable\_alb\_ingress\_web\_acl) | Create a Web ACL for the ALB ingress? | `bool` | `true` | no |
| <a name="input_enable_argocd"></a> [enable\_argocd](#input\_enable\_argocd) | Enable Argo CD Kubernetes add-on | `bool` | `false` | no |
| <a name="input_enable_aws_cloudwatch_metrics"></a> [enable\_aws\_cloudwatch\_metrics](#input\_enable\_aws\_cloudwatch\_metrics) | Enable AWS CloudWatch Metrics add-on for Container Insights | `bool` | `false` | no |
| <a name="input_enable_aws_load_balancer_controller"></a> [enable\_aws\_load\_balancer\_controller](#input\_enable\_aws\_load\_balancer\_controller) | Enable AWS Load Balancer Controller add-on | `bool` | `true` | no |
| <a name="input_enable_cert_manager"></a> [enable\_cert\_manager](#input\_enable\_cert\_manager) | Enable Cert Manager add-on | `bool` | `true` | no |
| <a name="input_enable_cluster_autoscaler"></a> [enable\_cluster\_autoscaler](#input\_enable\_cluster\_autoscaler) | Enable Cluster autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_crossplane"></a> [enable\_crossplane](#input\_enable\_crossplane) | Enable Crossplane add-on | `bool` | `false` | no |
| <a name="input_enable_datadog"></a> [enable\_datadog](#input\_enable\_datadog) | enable\_datadog | `bool` | `true` | no |
| <a name="input_enable_external_dns"></a> [enable\_external\_dns](#input\_enable\_external\_dns) | External DNS add-on | `bool` | `true` | no |
| <a name="input_enable_external_secrets"></a> [enable\_external\_secrets](#input\_enable\_external\_secrets) | Enable External Secrets operator add-on | `bool` | `true` | no |
| <a name="input_enable_ingress_nginx"></a> [enable\_ingress\_nginx](#input\_enable\_ingress\_nginx) | Enable Ingress Nginx add-on | `bool` | `true` | no |
| <a name="input_enable_karpenter"></a> [enable\_karpenter](#input\_enable\_karpenter) | Enable Karpenter autoscaler add-on | `bool` | `true` | no |
| <a name="input_enable_ksg"></a> [enable\_ksg](#input\_enable\_ksg) | Enable kubernetes-secret-generator add-on | `bool` | `true` | no |
| <a name="input_enable_kube_prometheus_stack"></a> [enable\_kube\_prometheus\_stack](#input\_enable\_kube\_prometheus\_stack) | Enable Community kube-prometheus-stack add-on | `bool` | `false` | no |
| <a name="input_enable_kubernetes_dashboard"></a> [enable\_kubernetes\_dashboard](#input\_enable\_kubernetes\_dashboard) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_metrics_server"></a> [enable\_metrics\_server](#input\_enable\_metrics\_server) | Enable metrics server add-on | `bool` | `true` | no |
| <a name="input_enable_onepassword"></a> [enable\_onepassword](#input\_enable\_onepassword) | enable\_onepassword | `bool` | `true` | no |
| <a name="input_enable_prometheus"></a> [enable\_prometheus](#input\_enable\_prometheus) | Enable Community Prometheus add-on | `bool` | `true` | no |
| <a name="input_enable_secrets_store_csi_driver"></a> [enable\_secrets\_store\_csi\_driver](#input\_enable\_secrets\_store\_csi\_driver) | Enable CSI Secrets Store Provider | `bool` | `true` | no |
| <a name="input_enable_secrets_store_csi_driver_provider_aws"></a> [enable\_secrets\_store\_csi\_driver\_provider\_aws](#input\_enable\_secrets\_store\_csi\_driver\_provider\_aws) | Enable AWS CSI Secrets Store Provider | `bool` | `true` | no |
| <a name="input_enable_sysdig_agent"></a> [enable\_sysdig\_agent](#input\_enable\_sysdig\_agent) | Enable Sysdig Agent add-on | `bool` | `true` | no |
| <a name="input_enable_velero"></a> [enable\_velero](#input\_enable\_velero) | Enable Kubernetes Dashboard add-on | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment full name | `string` | `""` | no |
| <a name="input_environment_class"></a> [environment\_class](#input\_environment\_class) | environment\_class | `string` | `"Applications"` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | Environment name - resource friendly e.g. meets the 1-38 character prefix limitation. May be the same as 'environment' | `string` | `""` | no |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | environment\_tag | `string` | `""` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | environment\_type | `string` | `"DEV"` | no |
| <a name="input_environment_type_tag"></a> [environment\_type\_tag](#input\_environment\_type\_tag) | environment\_type\_tag | `string` | `""` | no |
| <a name="input_external_dns_helm_config"></a> [external\_dns\_helm\_config](#input\_external\_dns\_helm\_config) | External DNS Helm Chart config | `any` | `{}` | no |
| <a name="input_external_dns_route53_zone_arns"></a> [external\_dns\_route53\_zone\_arns](#input\_external\_dns\_route53\_zone\_arns) | List of Route53 zones ARNs which external-dns will have access to create/manage records | `list(string)` | `[]` | no |
| <a name="input_flag_hosted_zone"></a> [flag\_hosted\_zone](#input\_flag\_hosted\_zone) | flag\_hosted\_zone | `bool` | `false` | no |
| <a name="input_flag_k8s_cluster"></a> [flag\_k8s\_cluster](#input\_flag\_k8s\_cluster) | Create a Kubernetes cluster? | `bool` | `true` | no |
| <a name="input_flag_registered_domain"></a> [flag\_registered\_domain](#input\_flag\_registered\_domain) | flag\_registered\_domain | `bool` | `false` | no |
| <a name="input_geo_location_country"></a> [geo\_location\_country](#input\_geo\_location\_country) | geo\_location\_country | `string` | `"us"` | no |
| <a name="input_ingress_nginx_helm_config"></a> [ingress\_nginx\_helm\_config](#input\_ingress\_nginx\_helm\_config) | Ingress Nginx Helm Chart config | `map(any)` | `{}` | no |
| <a name="input_k8s_cluster_enabled_log_types"></a> [k8s\_cluster\_enabled\_log\_types](#input\_k8s\_cluster\_enabled\_log\_types) | A list of the desired control plane logging to enable | `list(string)` | <pre>[<br>  "api",<br>  "audit",<br>  "authenticator",<br>  "controllerManager",<br>  "scheduler"<br>]</pre> | no |
| <a name="input_k8s_cluster_encryption_config"></a> [k8s\_cluster\_encryption\_config](#input\_k8s\_cluster\_encryption\_config) | Configuration block with encryption configuration for the cluster | <pre>list(object({<br>    provider_key_arn = string<br>    resources        = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_k8s_cluster_kms_key_additional_admin_arns"></a> [k8s\_cluster\_kms\_key\_additional\_admin\_arns](#input\_k8s\_cluster\_kms\_key\_additional\_admin\_arns) | A list of additional IAM ARNs that should have FULL access (kms:*) in the KMS key policy | `list(string)` | `[]` | no |
| <a name="input_k8s_cluster_kms_key_arn"></a> [k8s\_cluster\_kms\_key\_arn](#input\_k8s\_cluster\_kms\_key\_arn) | A valid EKS Cluster KMS Key ARN to encrypt Kubernetes secrets | `string` | `null` | no |
| <a name="input_k8s_cluster_kms_key_deletion_window_in_days"></a> [k8s\_cluster\_kms\_key\_deletion\_window\_in\_days](#input\_k8s\_cluster\_kms\_key\_deletion\_window\_in\_days) | The waiting period, specified in number of days (7 - 30). After the waiting period ends, AWS KMS deletes the KMS key | `number` | `30` | no |
| <a name="input_k8s_cluster_labels"></a> [k8s\_cluster\_labels](#input\_k8s\_cluster\_labels) | k8s\_cluster\_labels | `map(string)` | `{}` | no |
| <a name="input_k8s_cluster_name"></a> [k8s\_cluster\_name](#input\_k8s\_cluster\_name) | k8s\_cluster\_name | `string` | `""` | no |
| <a name="input_k8s_cluster_region"></a> [k8s\_cluster\_region](#input\_k8s\_cluster\_region) | k8s\_cluster\_region | `string` | `""` | no |
| <a name="input_k8s_cluster_tags"></a> [k8s\_cluster\_tags](#input\_k8s\_cluster\_tags) | k8s\_cluster\_tags | `map(string)` | `{}` | no |
| <a name="input_k8s_cluster_version"></a> [k8s\_cluster\_version](#input\_k8s\_cluster\_version) | Kubernetes `<major>.<minor>` version to use for the EKS cluster (i.e.: `1.22`) | `string` | `"1.22"` | no |
| <a name="input_k8s_launch_template_name"></a> [k8s\_launch\_template\_name](#input\_k8s\_launch\_template\_name) | k8s\_launch\_template\_name | `string` | `""` | no |
| <a name="input_k8s_managed_node_group_capacity_type"></a> [k8s\_managed\_node\_group\_capacity\_type](#input\_k8s\_managed\_node\_group\_capacity\_type) | Capacity type (ON-DEMAND / SPOT) for managed node group | `string` | `"ON_DEMAND"` | no |
| <a name="input_k8s_managed_node_group_desired_size"></a> [k8s\_managed\_node\_group\_desired\_size](#input\_k8s\_managed\_node\_group\_desired\_size) | Desired number of nodes for managed node group | `number` | `2` | no |
| <a name="input_k8s_managed_node_group_instance_types"></a> [k8s\_managed\_node\_group\_instance\_types](#input\_k8s\_managed\_node\_group\_instance\_types) | Allowed instance types of nodes for managed node group | `list(string)` | <pre>[<br>  "t3.large"<br>]</pre> | no |
| <a name="input_k8s_managed_node_group_max_size"></a> [k8s\_managed\_node\_group\_max\_size](#input\_k8s\_managed\_node\_group\_max\_size) | Maximum number of nodes for managed node group | `number` | `3` | no |
| <a name="input_k8s_managed_node_group_min_size"></a> [k8s\_managed\_node\_group\_min\_size](#input\_k8s\_managed\_node\_group\_min\_size) | Minimum number of nodes for managed node group | `number` | `1` | no |
| <a name="input_k8s_managed_node_group_name"></a> [k8s\_managed\_node\_group\_name](#input\_k8s\_managed\_node\_group\_name) | Default managed node group name | `string` | `""` | no |
| <a name="input_karpenter_enable_spot_termination_handling"></a> [karpenter\_enable\_spot\_termination\_handling](#input\_karpenter\_enable\_spot\_termination\_handling) | Determines whether to enable native spot termination handling | `bool` | `true` | no |
| <a name="input_ksg_helm_config"></a> [ksg\_helm\_config](#input\_ksg\_helm\_config) | kubernetes-secret-generator add-on config | `any` | `{}` | no |
| <a name="input_ksg_helm_variables"></a> [ksg\_helm\_variables](#input\_ksg\_helm\_variables) | ksg\_helm\_variables | `map(any)` | `{}` | no |
| <a name="input_ksg_onepassworditems"></a> [ksg\_onepassworditems](#input\_ksg\_onepassworditems) | kubernetes-secret-generator OnePasswordItems to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_kube_prometheus_stack_helm_config"></a> [kube\_prometheus\_stack\_helm\_config](#input\_kube\_prometheus\_stack\_helm\_config) | Community kube-prometheus-stack Helm Chart config | `any` | `{}` | no |
| <a name="input_onepassword_helm_config"></a> [onepassword\_helm\_config](#input\_onepassword\_helm\_config) | onepassword\_helm\_config | `map(any)` | `{}` | no |
| <a name="input_onepassworditems"></a> [onepassworditems](#input\_onepassworditems) | OnePasswordItems to expose in the cluster | `map(any)` | `{}` | no |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | project\_url | `string` | `"https://github.com/SandsB2B/b2b-infrastructure"` | no |
| <a name="input_prometheus_helm_config"></a> [prometheus\_helm\_config](#input\_prometheus\_helm\_config) | Community Prometheus Helm Chart config | `any` | `{}` | no |
| <a name="input_s3_buckets"></a> [s3\_buckets](#input\_s3\_buckets) | S3 buckets to create and expose in the cluster | `map(any)` | `{}` | no |
| <a name="input_sysdig_agent_helm_config"></a> [sysdig\_agent\_helm\_config](#input\_sysdig\_agent\_helm\_config) | Sysdig Helm Chart config | `map(any)` | `{}` | no |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | team\_name | `string` | `"cloud-engineering"` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | zone\_id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acm_certificate_arns"></a> [acm\_certificate\_arns](#output\_acm\_certificate\_arns) | acm\_certificate\_arns |
| <a name="output_acm_certificate_dns_names"></a> [acm\_certificate\_dns\_names](#output\_acm\_certificate\_dns\_names) | acm\_certificate\_dns\_names |
| <a name="output_acm_certificate_domain_validation_options"></a> [acm\_certificate\_domain\_validation\_options](#output\_acm\_certificate\_domain\_validation\_options) | acm\_certificate\_domain\_validation\_options |
| <a name="output_acm_certificate_expirations"></a> [acm\_certificate\_expirations](#output\_acm\_certificate\_expirations) | acm\_certificate\_expirations |
| <a name="output_acm_certificate_fqdns"></a> [acm\_certificate\_fqdns](#output\_acm\_certificate\_fqdns) | acm\_certificate\_fqdns |
| <a name="output_acm_certificate_status"></a> [acm\_certificate\_status](#output\_acm\_certificate\_status) | acm\_certificate\_status |
| <a name="output_argocd_helm_config"></a> [argocd\_helm\_config](#output\_argocd\_helm\_config) | argocd\_helm\_config |
| <a name="output_argocd_helm_variables"></a> [argocd\_helm\_variables](#output\_argocd\_helm\_variables) | argocd\_helm\_variables |
| <a name="output_argocd_values"></a> [argocd\_values](#output\_argocd\_values) | argocd\_values |
| <a name="output_argocd_values_yaml"></a> [argocd\_values\_yaml](#output\_argocd\_values\_yaml) | argocd\_values\_yaml |
| <a name="output_aws_administrator_role_arn"></a> [aws\_administrator\_role\_arn](#output\_aws\_administrator\_role\_arn) | aws\_administrator\_role\_arn |
| <a name="output_aws_administrator_role_arn_data"></a> [aws\_administrator\_role\_arn\_data](#output\_aws\_administrator\_role\_arn\_data) | aws\_administrator\_role\_arn\_data |
| <a name="output_aws_load_balancer_controller_helm_config"></a> [aws\_load\_balancer\_controller\_helm\_config](#output\_aws\_load\_balancer\_controller\_helm\_config) | aws\_load\_balancer\_controller\_helm\_config |
| <a name="output_cicd_administrator_role_arns"></a> [cicd\_administrator\_role\_arns](#output\_cicd\_administrator\_role\_arns) | cicd\_administrator\_role\_arns |
| <a name="output_cicd_administrator_user_arns"></a> [cicd\_administrator\_user\_arns](#output\_cicd\_administrator\_user\_arns) | cicd\_administrator\_user\_arns |
| <a name="output_cluster_primary_security_group_id"></a> [cluster\_primary\_security\_group\_id](#output\_cluster\_primary\_security\_group\_id) | Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication. Referred to as 'Cluster security group' in the EKS console |
| <a name="output_cluster_region"></a> [cluster\_region](#output\_cluster\_region) | cluster\_region |
| <a name="output_cluster_security_group_arn"></a> [cluster\_security\_group\_arn](#output\_cluster\_security\_group\_arn) | Amazon Resource Name (ARN) of the cluster security group |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | EKS Control Plane Security Group ID |
| <a name="output_configure_kubectl"></a> [configure\_kubectl](#output\_configure\_kubectl) | Configure kubectl: make sure you're logged in with the correct AWS profile and run the following command to update your kubeconfig |
| <a name="output_eks_cluster_arn"></a> [eks\_cluster\_arn](#output\_eks\_cluster\_arn) | Amazon EKS Cluster Name |
| <a name="output_eks_cluster_auth_token"></a> [eks\_cluster\_auth\_token](#output\_eks\_cluster\_auth\_token) | The auth token for the cluster |
| <a name="output_eks_cluster_certificate_authority_data"></a> [eks\_cluster\_certificate\_authority\_data](#output\_eks\_cluster\_certificate\_authority\_data) | Base64 encoded certificate data required to communicate with the cluster |
| <a name="output_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#output\_eks\_cluster\_endpoint) | Endpoint for your Kubernetes API server |
| <a name="output_eks_cluster_id"></a> [eks\_cluster\_id](#output\_eks\_cluster\_id) | Amazon EKS Cluster Name |
| <a name="output_eks_cluster_status"></a> [eks\_cluster\_status](#output\_eks\_cluster\_status) | Amazon EKS Cluster Status |
| <a name="output_eks_cluster_version"></a> [eks\_cluster\_version](#output\_eks\_cluster\_version) | The Kubernetes version for the cluster |
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
| <a name="output_mng_capacity_type"></a> [mng\_capacity\_type](#output\_mng\_capacity\_type) | mng\_capacity\_type |
| <a name="output_mng_desired_size"></a> [mng\_desired\_size](#output\_mng\_desired\_size) | mng\_desired\_size |
| <a name="output_mng_instance_types"></a> [mng\_instance\_types](#output\_mng\_instance\_types) | mng\_instance\_types |
| <a name="output_mng_max_size"></a> [mng\_max\_size](#output\_mng\_max\_size) | mng\_max\_size |
| <a name="output_mng_min_size"></a> [mng\_min\_size](#output\_mng\_min\_size) | mng\_min\_size |
| <a name="output_oidc_provider"></a> [oidc\_provider](#output\_oidc\_provider) | The OpenID Connect identity provider (issuer URL without leading `https://`) |
| <a name="output_role_list"></a> [role\_list](#output\_role\_list) | role\_list |
| <a name="output_route53_zone_arn"></a> [route53\_zone\_arn](#output\_route53\_zone\_arn) | route53\_zone\_arn |
| <a name="output_route53_zone_id"></a> [route53\_zone\_id](#output\_route53\_zone\_id) | route53\_zone\_id |
| <a name="output_route53_zone_name_servers"></a> [route53\_zone\_name\_servers](#output\_route53\_zone\_name\_servers) | route53\_zone\_name\_servers |
| <a name="output_rule_group_arn"></a> [rule\_group\_arn](#output\_rule\_group\_arn) | rule\_group\_arn |
| <a name="output_rule_group_id"></a> [rule\_group\_id](#output\_rule\_group\_id) | rule\_group\_id |
| <a name="output_self_managed_node_group_autoscaling_groups"></a> [self\_managed\_node\_group\_autoscaling\_groups](#output\_self\_managed\_node\_group\_autoscaling\_groups) | Autoscaling group names of self managed node groups |
| <a name="output_self_managed_node_group_aws_auth_config_map"></a> [self\_managed\_node\_group\_aws\_auth\_config\_map](#output\_self\_managed\_node\_group\_aws\_auth\_config\_map) | Self managed node groups AWS auth map |
| <a name="output_self_managed_node_group_iam_instance_profile_id"></a> [self\_managed\_node\_group\_iam\_instance\_profile\_id](#output\_self\_managed\_node\_group\_iam\_instance\_profile\_id) | IAM instance profile id of managed node groups |
| <a name="output_self_managed_node_group_iam_role_arns"></a> [self\_managed\_node\_group\_iam\_role\_arns](#output\_self\_managed\_node\_group\_iam\_role\_arns) | IAM role arn's of self managed node groups |
| <a name="output_self_managed_node_groups"></a> [self\_managed\_node\_groups](#output\_self\_managed\_node\_groups) | Outputs from EKS Self-managed node groups |
| <a name="output_teams"></a> [teams](#output\_teams) | Outputs from EKS Fargate profiles groups |
| <a name="output_user_list"></a> [user\_list](#output\_user\_list) | user\_list |
| <a name="output_vpc_arn"></a> [vpc\_arn](#output\_vpc\_arn) | The ARN of the VPC |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_database_subnet_arns"></a> [vpc\_database\_subnet\_arns](#output\_vpc\_database\_subnet\_arns) | List of ARNs of database subnets |
| <a name="output_vpc_database_subnets"></a> [vpc\_database\_subnets](#output\_vpc\_database\_subnets) | List of IDs of database subnets |
| <a name="output_vpc_database_subnets_cidr_blocks"></a> [vpc\_database\_subnets\_cidr\_blocks](#output\_vpc\_database\_subnets\_cidr\_blocks) | List of cidr\_blocks of database subnets |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
| <a name="output_vpc_peer_arn"></a> [vpc\_peer\_arn](#output\_vpc\_peer\_arn) | The ARN of the VPC |
| <a name="output_vpc_peer_cidr_block"></a> [vpc\_peer\_cidr\_block](#output\_vpc\_peer\_cidr\_block) | The CIDR block of the VPC |
| <a name="output_vpc_peer_database_subnet_arns"></a> [vpc\_peer\_database\_subnet\_arns](#output\_vpc\_peer\_database\_subnet\_arns) | List of ARNs of database subnets |
| <a name="output_vpc_peer_database_subnets"></a> [vpc\_peer\_database\_subnets](#output\_vpc\_peer\_database\_subnets) | List of IDs of database subnets |
| <a name="output_vpc_peer_database_subnets_cidr_blocks"></a> [vpc\_peer\_database\_subnets\_cidr\_blocks](#output\_vpc\_peer\_database\_subnets\_cidr\_blocks) | List of cidr\_blocks of database subnets |
| <a name="output_vpc_peer_id"></a> [vpc\_peer\_id](#output\_vpc\_peer\_id) | The ID of the VPC |
| <a name="output_vpc_peer_private_subnet_arns"></a> [vpc\_peer\_private\_subnet\_arns](#output\_vpc\_peer\_private\_subnet\_arns) | List of ARNs of private subnets |
| <a name="output_vpc_peer_private_subnets"></a> [vpc\_peer\_private\_subnets](#output\_vpc\_peer\_private\_subnets) | List of IDs of private subnets |
| <a name="output_vpc_peer_private_subnets_cidr_blocks"></a> [vpc\_peer\_private\_subnets\_cidr\_blocks](#output\_vpc\_peer\_private\_subnets\_cidr\_blocks) | List of cidr\_blocks of private subnets |
| <a name="output_vpc_peer_public_subnet_arns"></a> [vpc\_peer\_public\_subnet\_arns](#output\_vpc\_peer\_public\_subnet\_arns) | List of ARNs of public subnets |
| <a name="output_vpc_peer_public_subnets"></a> [vpc\_peer\_public\_subnets](#output\_vpc\_peer\_public\_subnets) | List of IDs of public subnets |
| <a name="output_vpc_peer_public_subnets_cidr_blocks"></a> [vpc\_peer\_public\_subnets\_cidr\_blocks](#output\_vpc\_peer\_public\_subnets\_cidr\_blocks) | List of cidr\_blocks of public subnets |
| <a name="output_vpc_private_subnet_arns"></a> [vpc\_private\_subnet\_arns](#output\_vpc\_private\_subnet\_arns) | List of ARNs of private subnets |
| <a name="output_vpc_private_subnets"></a> [vpc\_private\_subnets](#output\_vpc\_private\_subnets) | List of IDs of private subnets |
| <a name="output_vpc_private_subnets_cidr_blocks"></a> [vpc\_private\_subnets\_cidr\_blocks](#output\_vpc\_private\_subnets\_cidr\_blocks) | List of cidr\_blocks of private subnets |
| <a name="output_vpc_public_subnet_arns"></a> [vpc\_public\_subnet\_arns](#output\_vpc\_public\_subnet\_arns) | List of ARNs of public subnets |
| <a name="output_vpc_public_subnets"></a> [vpc\_public\_subnets](#output\_vpc\_public\_subnets) | List of IDs of public subnets |
| <a name="output_vpc_public_subnets_cidr_blocks"></a> [vpc\_public\_subnets\_cidr\_blocks](#output\_vpc\_public\_subnets\_cidr\_blocks) | List of cidr\_blocks of public subnets |
| <a name="output_web_acl_arn"></a> [web\_acl\_arn](#output\_web\_acl\_arn) | web\_acl\_arn |
| <a name="output_windows_node_group_aws_auth_config_map"></a> [windows\_node\_group\_aws\_auth\_config\_map](#output\_windows\_node\_group\_aws\_auth\_config\_map) | Windows node groups AWS auth map |
| <a name="output_worker_node_security_group_arn"></a> [worker\_node\_security\_group\_arn](#output\_worker\_node\_security\_group\_arn) | Amazon Resource Name (ARN) of the worker node shared security group |
| <a name="output_worker_node_security_group_id"></a> [worker\_node\_security\_group\_id](#output\_worker\_node\_security\_group\_id) | ID of the worker node shared security group |
