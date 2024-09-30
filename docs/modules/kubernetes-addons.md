# kubernetes-addons #

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.67.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.8.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 2.4.1 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | >= 1.14 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.16.1 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 2.1 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.67.0 |
| <a name="provider_helm"></a> [helm](#provider\_helm) | >= 2.8.0 |
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | >= 1.14 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.16.1 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.3.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb_ingress_web_acl"></a> [alb\_ingress\_web\_acl](#module\_alb\_ingress\_web\_acl) | ../waf | n/a |
| <a name="module_argocd_ecr_auth_irsa"></a> [argocd\_ecr\_auth\_irsa](#module\_argocd\_ecr\_auth\_irsa) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/irsa | b2b-0.34.58 |
| <a name="module_argocd_image_updater_irsa"></a> [argocd\_image\_updater\_irsa](#module\_argocd\_image\_updater\_irsa) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/irsa | b2b-0.34.58 |
| <a name="module_constants"></a> [constants](#module\_constants) | ../constants | n/a |
| <a name="module_database_admin_irsa"></a> [database\_admin\_irsa](#module\_database\_admin\_irsa) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/irsa | b2b-0.34.58 |
| <a name="module_datadog"></a> [datadog](#module\_datadog) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/kubernetes-addons/helm-addon | b2b-0.34.58 |
| <a name="module_eks_blueprint_kubernetes_addons"></a> [eks\_blueprint\_kubernetes\_addons](#module\_eks\_blueprint\_kubernetes\_addons) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/kubernetes-addons | b2b-0.34.58 |
| <a name="module_karpenter_launch_templates"></a> [karpenter\_launch\_templates](#module\_karpenter\_launch\_templates) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/launch-templates | b2b-0.34.58 |
| <a name="module_onepassword_connect"></a> [onepassword\_connect](#module\_onepassword\_connect) | git@github.com:SandsB2B/terraform-aws-eks-blueprints.git//modules/kubernetes-addons/helm-addon | b2b-0.34.58 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.argocd_ecr_auth_irsa_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.argocd_image_updater_irsa_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.database_admin_irsa_iam_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_secretsmanager_secret.argocd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret) | resource |
| [aws_secretsmanager_secret_version.argocd](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |
| [helm_release.argocd_application](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.argocd_applicationset](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.argocd_image_updater](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.datadog_api_key](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.datadog_operator_api_key](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.karpenter_provisioners](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.kubernetes_secret_generator](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.op_aws_external_secrets](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.sysdig_agent_access_key](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubectl_manifest.alb_ingress](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.argocd_ecr_auth_token](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.argocd_ecr_auth_token_external_secret](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.argocd_kustomize_application](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.argocd_onepassworditem](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubectl_manifest.crossplane_contrib_provider_sql](https://registry.terraform.io/providers/gavinbunney/kubectl/latest/docs/resources/manifest) | resource |
| [kubernetes_manifest.onepassworditem](https://registry.terraform.io/providers/hashicorp/kubernetes/2.16.1/docs/resources/manifest) | resource |
| [kubernetes_secret.argocd_gitops](https://registry.terraform.io/providers/hashicorp/kubernetes/2.16.1/docs/resources/secret) | resource |
| [random_password.argocd](https://registry.terraform.io/providers/hashicorp/random/3.3.2/docs/resources/password) | resource |
| [aws_ami.latest](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_eks_addon_version.latest](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_addon_version) | data source |
| [aws_eks_cluster.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_secretsmanager_secret.ssh_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret) | data source |
| [aws_secretsmanager_secret_version.ssh_key_version](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |
| [helm_template.argocd_applicationset](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/data-sources/template) | data source |
| [kubernetes_all_namespaces.allns](https://registry.terraform.io/providers/hashicorp/kubernetes/2.16.1/docs/data-sources/all_namespaces) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adot_collector_haproxy_helm_config"></a> [adot\_collector\_haproxy\_helm\_config](#input\_adot\_collector\_haproxy\_helm\_config) | ADOT Collector HAProxy Helm Chart config | `any` | `{}` | no |
| <a name="input_adot_collector_java_helm_config"></a> [adot\_collector\_java\_helm\_config](#input\_adot\_collector\_java\_helm\_config) | ADOT Collector Java Helm Chart config | `any` | `{}` | no |
| <a name="input_adot_collector_memcached_helm_config"></a> [adot\_collector\_memcached\_helm\_config](#input\_adot\_collector\_memcached\_helm\_config) | ADOT Collector Memcached Helm Chart config | `any` | `{}` | no |
| <a name="input_adot_collector_nginx_helm_config"></a> [adot\_collector\_nginx\_helm\_config](#input\_adot\_collector\_nginx\_helm\_config) | ADOT Collector Nginx Helm Chart config | `any` | `{}` | no |
| <a name="input_agones_helm_config"></a> [agones\_helm\_config](#input\_agones\_helm\_config) | Agones GameServer Helm Chart config | `any` | `{}` | no |
| <a name="input_airflow_helm_config"></a> [airflow\_helm\_config](#input\_airflow\_helm\_config) | Apache Airflow v2 Helm Chart config | `any` | `{}` | no |
| <a name="input_alb_ingress_default_action"></a> [alb\_ingress\_default\_action](#input\_alb\_ingress\_default\_action) | Default action for the ACL | `string` | `"allow"` | no |
| <a name="input_alb_ingress_default_timeout"></a> [alb\_ingress\_default\_timeout](#input\_alb\_ingress\_default\_timeout) | Default load balancer timeout in seconds | `number` | `300` | no |
| <a name="input_alb_ingress_hostname"></a> [alb\_ingress\_hostname](#input\_alb\_ingress\_hostname) | Hostname to use for the ingress - default is *.{eks\_cluster\_domain} | `string` | `""` | no |
| <a name="input_alb_ingress_name"></a> [alb\_ingress\_name](#input\_alb\_ingress\_name) | ALB Ingress name | `string` | `""` | no |
| <a name="input_alb_ingress_rule_group"></a> [alb\_ingress\_rule\_group](#input\_alb\_ingress\_rule\_group) | Rule group for the alb ingress web acl | `list(any)` | `[]` | no |
| <a name="input_alb_ingress_web_acl_rule_action"></a> [alb\_ingress\_web\_acl\_rule\_action](#input\_alb\_ingress\_web\_acl\_rule\_action) | Override action for the rule. | `string` | `"none"` | no |
| <a name="input_amazon_eks_adot_config"></a> [amazon\_eks\_adot\_config](#input\_amazon\_eks\_adot\_config) | Configuration for Amazon EKS ADOT add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_aws_ebs_csi_driver_config"></a> [amazon\_eks\_aws\_ebs\_csi\_driver\_config](#input\_amazon\_eks\_aws\_ebs\_csi\_driver\_config) | configMap for AWS EBS CSI Driver add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_coredns_config"></a> [amazon\_eks\_coredns\_config](#input\_amazon\_eks\_coredns\_config) | Configuration for Amazon CoreDNS EKS add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_kube_proxy_config"></a> [amazon\_eks\_kube\_proxy\_config](#input\_amazon\_eks\_kube\_proxy\_config) | ConfigMap for Amazon EKS Kube-Proxy add-on | `any` | `{}` | no |
| <a name="input_amazon_eks_vpc_cni_config"></a> [amazon\_eks\_vpc\_cni\_config](#input\_amazon\_eks\_vpc\_cni\_config) | ConfigMap of Amazon EKS VPC CNI add-on | `any` | `{}` | no |
| <a name="input_amazon_prometheus_workspace_endpoint"></a> [amazon\_prometheus\_workspace\_endpoint](#input\_amazon\_prometheus\_workspace\_endpoint) | AWS Managed Prometheus WorkSpace Endpoint | `string` | `null` | no |
| <a name="input_amazon_prometheus_workspace_region"></a> [amazon\_prometheus\_workspace\_region](#input\_amazon\_prometheus\_workspace\_region) | AWS Managed Prometheus WorkSpace Region | `string` | `null` | no |
| <a name="input_appmesh_helm_config"></a> [appmesh\_helm\_config](#input\_appmesh\_helm\_config) | AppMesh Helm Chart config | `any` | `{}` | no |
| <a name="input_appmesh_irsa_policies"></a> [appmesh\_irsa\_policies](#input\_appmesh\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_argo_rollouts_helm_config"></a> [argo\_rollouts\_helm\_config](#input\_argo\_rollouts\_helm\_config) | Argo Rollouts Helm Chart config | `any` | `null` | no |
| <a name="input_argo_workflows_helm_config"></a> [argo\_workflows\_helm\_config](#input\_argo\_workflows\_helm\_config) | Argo workflows Helm Chart config | `any` | `null` | no |
| <a name="input_argocd_applications"></a> [argocd\_applications](#input\_argocd\_applications) | Argo CD Applications config to bootstrap the cluster | `any` | `{}` | no |
| <a name="input_argocd_applicationsets"></a> [argocd\_applicationsets](#input\_argocd\_applicationsets) | ArgoCD ApplicationSets config to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_argocd_ecr_registries"></a> [argocd\_ecr\_registries](#input\_argocd\_ecr\_registries) | ArgoCD ECR registries to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_argocd_helm_config"></a> [argocd\_helm\_config](#input\_argocd\_helm\_config) | Argo CD Kubernetes add-on config | `any` | `{}` | no |
| <a name="input_argocd_helm_values"></a> [argocd\_helm\_values](#input\_argocd\_helm\_values) | ArgoCD add-on helm config values | `string` | `""` | no |
| <a name="input_argocd_helm_variables"></a> [argocd\_helm\_variables](#input\_argocd\_helm\_variables) | ArgoCD Kubernetes add-on variables | `map(any)` | `{}` | no |
| <a name="input_argocd_image_updater_helm_config"></a> [argocd\_image\_updater\_helm\_config](#input\_argocd\_image\_updater\_helm\_config) | argocd-image-updater add-on config | `any` | `{}` | no |
| <a name="input_argocd_image_updater_helm_values"></a> [argocd\_image\_updater\_helm\_values](#input\_argocd\_image\_updater\_helm\_values) | argocd-image-updater add-on helm config values | `string` | `""` | no |
| <a name="input_argocd_image_updater_helm_variables"></a> [argocd\_image\_updater\_helm\_variables](#input\_argocd\_image\_updater\_helm\_variables) | argocd\_image\_updater\_helm\_variables | `map(any)` | `{}` | no |
| <a name="input_argocd_image_updater_irsa_iam_policy_map"></a> [argocd\_image\_updater\_irsa\_iam\_policy\_map](#input\_argocd\_image\_updater\_irsa\_iam\_policy\_map) | argocd-image-updater irsa policy map | `any` | `{}` | no |
| <a name="input_argocd_image_updater_kubernetes_namespace"></a> [argocd\_image\_updater\_kubernetes\_namespace](#input\_argocd\_image\_updater\_kubernetes\_namespace) | argocd-image-updater kubernetes namespace | `string` | `"argocd"` | no |
| <a name="input_argocd_image_updater_kubernetes_service_account"></a> [argocd\_image\_updater\_kubernetes\_service\_account](#input\_argocd\_image\_updater\_kubernetes\_service\_account) | argocd-image-updater kubernetes service account name | `string` | `"argocd-image-updater"` | no |
| <a name="input_argocd_manage_add_ons"></a> [argocd\_manage\_add\_ons](#input\_argocd\_manage\_add\_ons) | Enable managing add-on configuration via ArgoCD App of Apps | `bool` | `false` | no |
| <a name="input_argocd_onepassworditems"></a> [argocd\_onepassworditems](#input\_argocd\_onepassworditems) | ArgoCD OnePasswordItems to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_auto_scaling_group_names"></a> [auto\_scaling\_group\_names](#input\_auto\_scaling\_group\_names) | List of self-managed node groups autoscaling group names | `list(string)` | `[]` | no |
| <a name="input_aws_cloudwatch_metrics_helm_config"></a> [aws\_cloudwatch\_metrics\_helm\_config](#input\_aws\_cloudwatch\_metrics\_helm\_config) | AWS CloudWatch Metrics Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_cloudwatch_metrics_irsa_policies"></a> [aws\_cloudwatch\_metrics\_irsa\_policies](#input\_aws\_cloudwatch\_metrics\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_efs_csi_driver_helm_config"></a> [aws\_efs\_csi\_driver\_helm\_config](#input\_aws\_efs\_csi\_driver\_helm\_config) | AWS EFS CSI driver Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_efs_csi_driver_irsa_policies"></a> [aws\_efs\_csi\_driver\_irsa\_policies](#input\_aws\_efs\_csi\_driver\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_for_fluentbit_create_cw_log_group"></a> [aws\_for\_fluentbit\_create\_cw\_log\_group](#input\_aws\_for\_fluentbit\_create\_cw\_log\_group) | Set to false to use existing CloudWatch log group supplied via the cw\_log\_group\_name variable. | `bool` | `true` | no |
| <a name="input_aws_for_fluentbit_cw_log_group_kms_key_arn"></a> [aws\_for\_fluentbit\_cw\_log\_group\_kms\_key\_arn](#input\_aws\_for\_fluentbit\_cw\_log\_group\_kms\_key\_arn) | FluentBit CloudWatch Log group KMS Key | `string` | `null` | no |
| <a name="input_aws_for_fluentbit_cw_log_group_name"></a> [aws\_for\_fluentbit\_cw\_log\_group\_name](#input\_aws\_for\_fluentbit\_cw\_log\_group\_name) | FluentBit CloudWatch Log group name | `string` | `null` | no |
| <a name="input_aws_for_fluentbit_cw_log_group_retention"></a> [aws\_for\_fluentbit\_cw\_log\_group\_retention](#input\_aws\_for\_fluentbit\_cw\_log\_group\_retention) | FluentBit CloudWatch Log group retention period | `number` | `90` | no |
| <a name="input_aws_for_fluentbit_helm_config"></a> [aws\_for\_fluentbit\_helm\_config](#input\_aws\_for\_fluentbit\_helm\_config) | AWS for FluentBit Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_for_fluentbit_irsa_policies"></a> [aws\_for\_fluentbit\_irsa\_policies](#input\_aws\_for\_fluentbit\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_fsx_csi_driver_helm_config"></a> [aws\_fsx\_csi\_driver\_helm\_config](#input\_aws\_fsx\_csi\_driver\_helm\_config) | AWS FSx CSI driver Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_fsx_csi_driver_irsa_policies"></a> [aws\_fsx\_csi\_driver\_irsa\_policies](#input\_aws\_fsx\_csi\_driver\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_load_balancer_controller_helm_config"></a> [aws\_load\_balancer\_controller\_helm\_config](#input\_aws\_load\_balancer\_controller\_helm\_config) | AWS Load Balancer Controller Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_load_balancer_controller_helm_values"></a> [aws\_load\_balancer\_controller\_helm\_values](#input\_aws\_load\_balancer\_controller\_helm\_values) | AWS Load Balancer Controller Helm Chart values | `string` | `""` | no |
| <a name="input_aws_node_termination_handler_helm_config"></a> [aws\_node\_termination\_handler\_helm\_config](#input\_aws\_node\_termination\_handler\_helm\_config) | AWS Node Termination Handler Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_node_termination_handler_irsa_policies"></a> [aws\_node\_termination\_handler\_irsa\_policies](#input\_aws\_node\_termination\_handler\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_aws_privateca_acmca_arn"></a> [aws\_privateca\_acmca\_arn](#input\_aws\_privateca\_acmca\_arn) | ARN of AWS ACM PCA | `string` | `""` | no |
| <a name="input_aws_privateca_issuer_helm_config"></a> [aws\_privateca\_issuer\_helm\_config](#input\_aws\_privateca\_issuer\_helm\_config) | PCA Issuer Helm Chart config | `any` | `{}` | no |
| <a name="input_aws_privateca_issuer_irsa_policies"></a> [aws\_privateca\_issuer\_irsa\_policies](#input\_aws\_privateca\_issuer\_irsa\_policies) | IAM policy ARNs for AWS ACM PCA IRSA | `list(string)` | `[]` | no |
| <a name="input_calico_helm_config"></a> [calico\_helm\_config](#input\_calico\_helm\_config) | Calico add-on config | `any` | `{}` | no |
| <a name="input_cert_manager_csi_driver_helm_config"></a> [cert\_manager\_csi\_driver\_helm\_config](#input\_cert\_manager\_csi\_driver\_helm\_config) | Cert Manager CSI Driver Helm Chart config | `any` | `{}` | no |
| <a name="input_cert_manager_domain_names"></a> [cert\_manager\_domain\_names](#input\_cert\_manager\_domain\_names) | Domain names of the Route53 hosted zone to use with cert-manager | `list(string)` | `[]` | no |
| <a name="input_cert_manager_helm_config"></a> [cert\_manager\_helm\_config](#input\_cert\_manager\_helm\_config) | Cert Manager Helm Chart config | `any` | `{}` | no |
| <a name="input_cert_manager_install_letsencrypt_issuers"></a> [cert\_manager\_install\_letsencrypt\_issuers](#input\_cert\_manager\_install\_letsencrypt\_issuers) | Install Let's Encrypt Cluster Issuers | `bool` | `true` | no |
| <a name="input_cert_manager_irsa_policies"></a> [cert\_manager\_irsa\_policies](#input\_cert\_manager\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_cert_manager_istio_csr_helm_config"></a> [cert\_manager\_istio\_csr\_helm\_config](#input\_cert\_manager\_istio\_csr\_helm\_config) | Cert Manager Istio CSR Helm Chart config | `any` | `{}` | no |
| <a name="input_cert_manager_kubernetes_svc_image_pull_secrets"></a> [cert\_manager\_kubernetes\_svc\_image\_pull\_secrets](#input\_cert\_manager\_kubernetes\_svc\_image\_pull\_secrets) | list(string) of kubernetes imagePullSecrets | `list(string)` | `[]` | no |
| <a name="input_cert_manager_letsencrypt_email"></a> [cert\_manager\_letsencrypt\_email](#input\_cert\_manager\_letsencrypt\_email) | Email address for expiration emails from Let's Encrypt | `string` | `""` | no |
| <a name="input_chaos_mesh_helm_config"></a> [chaos\_mesh\_helm\_config](#input\_chaos\_mesh\_helm\_config) | Chaos Mesh Helm Chart config | `any` | `{}` | no |
| <a name="input_cilium_enable_wireguard"></a> [cilium\_enable\_wireguard](#input\_cilium\_enable\_wireguard) | Enable wireguard encryption | `bool` | `false` | no |
| <a name="input_cilium_helm_config"></a> [cilium\_helm\_config](#input\_cilium\_helm\_config) | Cilium Helm Chart config | `any` | `{}` | no |
| <a name="input_cluster_autoscaler_helm_config"></a> [cluster\_autoscaler\_helm\_config](#input\_cluster\_autoscaler\_helm\_config) | Cluster Autoscaler Helm Chart config | `any` | `{}` | no |
| <a name="input_consul_helm_config"></a> [consul\_helm\_config](#input\_consul\_helm\_config) | Consul Helm Chart config | `any` | `{}` | no |
| <a name="input_coredns_autoscaler_helm_config"></a> [coredns\_autoscaler\_helm\_config](#input\_coredns\_autoscaler\_helm\_config) | CoreDNS Autoscaler Helm Chart config | `any` | `{}` | no |
| <a name="input_coredns_cluster_proportional_autoscaler_helm_config"></a> [coredns\_cluster\_proportional\_autoscaler\_helm\_config](#input\_coredns\_cluster\_proportional\_autoscaler\_helm\_config) | Helm provider config for the CoreDNS cluster-proportional-autoscaler | `any` | `{}` | no |
| <a name="input_crossplane_aws_provider"></a> [crossplane\_aws\_provider](#input\_crossplane\_aws\_provider) | AWS Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_contrib_provider_sql_version"></a> [crossplane\_contrib\_provider\_sql\_version](#input\_crossplane\_contrib\_provider\_sql\_version) | AWS provider SQL version for Crossplane | `string` | `"0.6.0"` | no |
| <a name="input_crossplane_helm_config"></a> [crossplane\_helm\_config](#input\_crossplane\_helm\_config) | Crossplane Helm Chart config | `map(any)` | `{}` | no |
| <a name="input_crossplane_helm_provider"></a> [crossplane\_helm\_provider](#input\_crossplane\_helm\_provider) | Helm Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_helm_variables"></a> [crossplane\_helm\_variables](#input\_crossplane\_helm\_variables) | Helm variables for Crossplane | `map(any)` | `{}` | no |
| <a name="input_crossplane_jet_aws_provider"></a> [crossplane\_jet\_aws\_provider](#input\_crossplane\_jet\_aws\_provider) | AWS Provider Jet AWS config for Crossplane | <pre>object({<br>    enable                   = bool<br>    provider_aws_version     = string<br>    additional_irsa_policies = list(string)<br>  })</pre> | <pre>{<br>  "additional_irsa_policies": [],<br>  "enable": false,<br>  "provider_aws_version": "v0.24.1"<br>}</pre> | no |
| <a name="input_crossplane_kubernetes_provider"></a> [crossplane\_kubernetes\_provider](#input\_crossplane\_kubernetes\_provider) | Kubernetes Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_crossplane_upbound_aws_provider"></a> [crossplane\_upbound\_aws\_provider](#input\_crossplane\_upbound\_aws\_provider) | AWS Upbound Provider config for Crossplane | `any` | <pre>{<br>  "enable": false<br>}</pre> | no |
| <a name="input_csi_secrets_store_provider_aws_helm_config"></a> [csi\_secrets\_store\_provider\_aws\_helm\_config](#input\_csi\_secrets\_store\_provider\_aws\_helm\_config) | CSI Secrets Store Provider AWS Helm Configurations | `any` | `null` | no |
| <a name="input_custom_image_registry_uri"></a> [custom\_image\_registry\_uri](#input\_custom\_image\_registry\_uri) | Custom image registry URI map of `{region = dkr.endpoint }` | `map(string)` | `{}` | no |
| <a name="input_data_plane_wait_arn"></a> [data\_plane\_wait\_arn](#input\_data\_plane\_wait\_arn) | Addon deployment will not proceed until this value is known. Set to node group/Fargate profile ARN to wait for data plane to be ready before provisioning addons | `string` | `""` | no |
| <a name="input_database_admin_clusters"></a> [database\_admin\_clusters](#input\_database\_admin\_clusters) | Database-admin cluster list. | `list(string)` | `null` | no |
| <a name="input_database_admin_namespace"></a> [database\_admin\_namespace](#input\_database\_admin\_namespace) | Database-admin namespace. | `string` | `"database-admin"` | no |
| <a name="input_database_admin_namespace_create"></a> [database\_admin\_namespace\_create](#input\_database\_admin\_namespace\_create) | Should the module create the namespace | `bool` | `true` | no |
| <a name="input_database_admin_secret_token_create"></a> [database\_admin\_secret\_token\_create](#input\_database\_admin\_secret\_token\_create) | Should the module create the secret token | `bool` | `false` | no |
| <a name="input_database_admin_secrets"></a> [database\_admin\_secrets](#input\_database\_admin\_secrets) | Secret Name used across resources created | `list(string)` | `[]` | no |
| <a name="input_database_admin_service_account_create"></a> [database\_admin\_service\_account\_create](#input\_database\_admin\_service\_account\_create) | Should the module create the service account | `bool` | `true` | no |
| <a name="input_database_admin_service_account_name"></a> [database\_admin\_service\_account\_name](#input\_database\_admin\_service\_account\_name) | Database-admin service account name. | `string` | `"database-admin"` | no |
| <a name="input_datadog_helm_config"></a> [datadog\_helm\_config](#input\_datadog\_helm\_config) | Datadog Helm Chart config | `map(any)` | `{}` | no |
| <a name="input_datadog_operator_helm_config"></a> [datadog\_operator\_helm\_config](#input\_datadog\_operator\_helm\_config) | Datadog Operator Helm Chart config | `map(any)` | <pre>{<br>  "version": "1.0.3"<br>}</pre> | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | default\_tags | `map(string)` | `{}` | no |
| <a name="input_eks_cluster_domain"></a> [eks\_cluster\_domain](#input\_eks\_cluster\_domain) | The domain for the EKS cluster | `string` | `""` | no |
| <a name="input_eks_cluster_endpoint"></a> [eks\_cluster\_endpoint](#input\_eks\_cluster\_endpoint) | Endpoint for your Kubernetes API server | `string` | `null` | no |
| <a name="input_eks_cluster_id"></a> [eks\_cluster\_id](#input\_eks\_cluster\_id) | EKS Cluster Id | `string` | n/a | yes |
| <a name="input_eks_cluster_region"></a> [eks\_cluster\_region](#input\_eks\_cluster\_region) | eks\_cluster\_region | `string` | `""` | no |
| <a name="input_eks_cluster_service_ipv4_cidr"></a> [eks\_cluster\_service\_ipv4\_cidr](#input\_eks\_cluster\_service\_ipv4\_cidr) | The CIDR block to assign Kubernetes service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks | `string` | `"192.168.0.0/16"` | no |
| <a name="input_eks_cluster_service_ipv6_cidr"></a> [eks\_cluster\_service\_ipv6\_cidr](#input\_eks\_cluster\_service\_ipv6\_cidr) | The IPV6 Service CIDR block to assign Kubernetes service IP addresses | `string` | `null` | no |
| <a name="input_eks_cluster_version"></a> [eks\_cluster\_version](#input\_eks\_cluster\_version) | The Kubernetes version for the cluster | `string` | `null` | no |
| <a name="input_eks_managed_node_group_name"></a> [eks\_managed\_node\_group\_name](#input\_eks\_managed\_node\_group\_name) | Managed node group name required by Karpenter | `string` | `""` | no |
| <a name="input_eks_oidc_provider"></a> [eks\_oidc\_provider](#input\_eks\_oidc\_provider) | The OpenID Connect identity provider (issuer URL without leading `https://`) | `string` | `null` | no |
| <a name="input_eks_oidc_provider_arn"></a> [eks\_oidc\_provider\_arn](#input\_eks\_oidc\_provider\_arn) | The OpenID Connect identity provider ARN | `string` | `null` | no |
| <a name="input_eks_worker_security_group_id"></a> [eks\_worker\_security\_group\_id](#input\_eks\_worker\_security\_group\_id) | EKS Worker Security group Id created by EKS module | `string` | `""` | no |
| <a name="input_emr_on_eks_config"></a> [emr\_on\_eks\_config](#input\_emr\_on\_eks\_config) | EMR on EKS Helm configuration values | `any` | `{}` | no |
| <a name="input_enable_adot_collector_haproxy"></a> [enable\_adot\_collector\_haproxy](#input\_enable\_adot\_collector\_haproxy) | Enable metrics for HAProxy workloads | `bool` | `false` | no |
| <a name="input_enable_adot_collector_java"></a> [enable\_adot\_collector\_java](#input\_enable\_adot\_collector\_java) | Enable metrics for JMX workloads | `bool` | `false` | no |
| <a name="input_enable_adot_collector_memcached"></a> [enable\_adot\_collector\_memcached](#input\_enable\_adot\_collector\_memcached) | Enable metrics for Memcached workloads | `bool` | `false` | no |
| <a name="input_enable_adot_collector_nginx"></a> [enable\_adot\_collector\_nginx](#input\_enable\_adot\_collector\_nginx) | Enable metrics for Nginx workloads | `bool` | `false` | no |
| <a name="input_enable_agones"></a> [enable\_agones](#input\_enable\_agones) | Enable Agones GamServer add-on | `bool` | `false` | no |
| <a name="input_enable_airflow"></a> [enable\_airflow](#input\_enable\_airflow) | Enable Airflow add-on | `bool` | `false` | no |
| <a name="input_enable_alb_ingress"></a> [enable\_alb\_ingress](#input\_enable\_alb\_ingress) | Create a wildcard ingress for the ALB? | `bool` | `true` | no |
| <a name="input_enable_alb_ingress_cloudwatch_metrics"></a> [enable\_alb\_ingress\_cloudwatch\_metrics](#input\_enable\_alb\_ingress\_cloudwatch\_metrics) | Enable ALB ingress cloudwatch metrics | `bool` | `false` | no |
| <a name="input_enable_alb_ingress_sampled_requests"></a> [enable\_alb\_ingress\_sampled\_requests](#input\_enable\_alb\_ingress\_sampled\_requests) | Enable ALB ingress sampled requests | `bool` | `false` | no |
| <a name="input_enable_alb_ingress_web_acl"></a> [enable\_alb\_ingress\_web\_acl](#input\_enable\_alb\_ingress\_web\_acl) | Create a Web ACL for the ALB ingress? | `bool` | `true` | no |
| <a name="input_enable_amazon_eks_adot"></a> [enable\_amazon\_eks\_adot](#input\_enable\_amazon\_eks\_adot) | Enable Amazon EKS ADOT addon | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_aws_ebs_csi_driver"></a> [enable\_amazon\_eks\_aws\_ebs\_csi\_driver](#input\_enable\_amazon\_eks\_aws\_ebs\_csi\_driver) | Enable EKS Managed AWS EBS CSI Driver add-on; enable\_amazon\_eks\_aws\_ebs\_csi\_driver and enable\_self\_managed\_aws\_ebs\_csi\_driver are mutually exclusive | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_coredns"></a> [enable\_amazon\_eks\_coredns](#input\_enable\_amazon\_eks\_coredns) | Enable Amazon EKS CoreDNS add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_kube_proxy"></a> [enable\_amazon\_eks\_kube\_proxy](#input\_enable\_amazon\_eks\_kube\_proxy) | Enable Kube Proxy add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_eks_vpc_cni"></a> [enable\_amazon\_eks\_vpc\_cni](#input\_enable\_amazon\_eks\_vpc\_cni) | Enable VPC CNI add-on | `bool` | `false` | no |
| <a name="input_enable_amazon_prometheus"></a> [enable\_amazon\_prometheus](#input\_enable\_amazon\_prometheus) | Enable AWS Managed Prometheus service | `bool` | `false` | no |
| <a name="input_enable_app_2048"></a> [enable\_app\_2048](#input\_enable\_app\_2048) | Enable sample app 2048 | `bool` | `false` | no |
| <a name="input_enable_appmesh_controller"></a> [enable\_appmesh\_controller](#input\_enable\_appmesh\_controller) | Enable AppMesh add-on | `bool` | `false` | no |
| <a name="input_enable_argo_rollouts"></a> [enable\_argo\_rollouts](#input\_enable\_argo\_rollouts) | Enable Argo Rollouts add-on | `bool` | `false` | no |
| <a name="input_enable_argo_workflows"></a> [enable\_argo\_workflows](#input\_enable\_argo\_workflows) | Enable Argo workflows add-on | `bool` | `false` | no |
| <a name="input_enable_argocd"></a> [enable\_argocd](#input\_enable\_argocd) | Enable Argo CD Kubernetes add-on | `bool` | `false` | no |
| <a name="input_enable_argocd_image_updater"></a> [enable\_argocd\_image\_updater](#input\_enable\_argocd\_image\_updater) | Enable argocd-image-updater add-on | `bool` | `false` | no |
| <a name="input_enable_argocd_image_updater_irsa"></a> [enable\_argocd\_image\_updater\_irsa](#input\_enable\_argocd\_image\_updater\_irsa) | Create an IRSA role/policy for the argocd-image-updater add-on | `bool` | `false` | no |
| <a name="input_enable_aws_cloudwatch_metrics"></a> [enable\_aws\_cloudwatch\_metrics](#input\_enable\_aws\_cloudwatch\_metrics) | Enable AWS CloudWatch Metrics add-on for Container Insights | `bool` | `false` | no |
| <a name="input_enable_aws_efs_csi_driver"></a> [enable\_aws\_efs\_csi\_driver](#input\_enable\_aws\_efs\_csi\_driver) | Enable AWS EFS CSI driver add-on | `bool` | `false` | no |
| <a name="input_enable_aws_for_fluentbit"></a> [enable\_aws\_for\_fluentbit](#input\_enable\_aws\_for\_fluentbit) | Enable AWS for FluentBit add-on | `bool` | `false` | no |
| <a name="input_enable_aws_fsx_csi_driver"></a> [enable\_aws\_fsx\_csi\_driver](#input\_enable\_aws\_fsx\_csi\_driver) | Enable AWS FSx CSI driver add-on | `bool` | `false` | no |
| <a name="input_enable_aws_load_balancer_controller"></a> [enable\_aws\_load\_balancer\_controller](#input\_enable\_aws\_load\_balancer\_controller) | Enable AWS Load Balancer Controller add-on | `bool` | `false` | no |
| <a name="input_enable_aws_node_termination_handler"></a> [enable\_aws\_node\_termination\_handler](#input\_enable\_aws\_node\_termination\_handler) | Enable AWS Node Termination Handler add-on | `bool` | `false` | no |
| <a name="input_enable_aws_privateca_issuer"></a> [enable\_aws\_privateca\_issuer](#input\_enable\_aws\_privateca\_issuer) | Enable PCA Issuer | `bool` | `false` | no |
| <a name="input_enable_calico"></a> [enable\_calico](#input\_enable\_calico) | Enable Calico add-on | `bool` | `false` | no |
| <a name="input_enable_cert_manager"></a> [enable\_cert\_manager](#input\_enable\_cert\_manager) | Enable Cert Manager add-on | `bool` | `false` | no |
| <a name="input_enable_cert_manager_csi_driver"></a> [enable\_cert\_manager\_csi\_driver](#input\_enable\_cert\_manager\_csi\_driver) | Enable Cert Manager CSI Driver add-on | `bool` | `false` | no |
| <a name="input_enable_cert_manager_istio_csr"></a> [enable\_cert\_manager\_istio\_csr](#input\_enable\_cert\_manager\_istio\_csr) | Enable Cert Manager istio-csr add-on | `bool` | `false` | no |
| <a name="input_enable_chaos_mesh"></a> [enable\_chaos\_mesh](#input\_enable\_chaos\_mesh) | Enable Chaos Mesh add-on | `bool` | `false` | no |
| <a name="input_enable_cilium"></a> [enable\_cilium](#input\_enable\_cilium) | Enable Cilium add-on | `bool` | `false` | no |
| <a name="input_enable_cluster_autoscaler"></a> [enable\_cluster\_autoscaler](#input\_enable\_cluster\_autoscaler) | Enable Cluster autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_consul"></a> [enable\_consul](#input\_enable\_consul) | Enable consul add-on | `bool` | `false` | no |
| <a name="input_enable_coredns_autoscaler"></a> [enable\_coredns\_autoscaler](#input\_enable\_coredns\_autoscaler) | Enable CoreDNS autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_coredns_cluster_proportional_autoscaler"></a> [enable\_coredns\_cluster\_proportional\_autoscaler](#input\_enable\_coredns\_cluster\_proportional\_autoscaler) | Enable cluster-proportional-autoscaler for CoreDNS | `bool` | `true` | no |
| <a name="input_enable_crossplane"></a> [enable\_crossplane](#input\_enable\_crossplane) | Enable Crossplane add-on | `bool` | `false` | no |
| <a name="input_enable_datadog"></a> [enable\_datadog](#input\_enable\_datadog) | Enable Datadog add-on | `bool` | `true` | no |
| <a name="input_enable_datadog_api_key"></a> [enable\_datadog\_api\_key](#input\_enable\_datadog\_api\_key) | Enable Datadog add-on API key | `bool` | `true` | no |
| <a name="input_enable_datadog_operator"></a> [enable\_datadog\_operator](#input\_enable\_datadog\_operator) | Enable Datadog Operator add-on | `bool` | `false` | no |
| <a name="input_enable_emr_on_eks"></a> [enable\_emr\_on\_eks](#input\_enable\_emr\_on\_eks) | Enable EMR on EKS add-on | `bool` | `false` | no |
| <a name="input_enable_external_dns"></a> [enable\_external\_dns](#input\_enable\_external\_dns) | External DNS add-on | `bool` | `false` | no |
| <a name="input_enable_external_secrets"></a> [enable\_external\_secrets](#input\_enable\_external\_secrets) | Enable External Secrets operator add-on | `bool` | `false` | no |
| <a name="input_enable_fargate_fluentbit"></a> [enable\_fargate\_fluentbit](#input\_enable\_fargate\_fluentbit) | Enable Fargate FluentBit add-on | `bool` | `false` | no |
| <a name="input_enable_gatekeeper"></a> [enable\_gatekeeper](#input\_enable\_gatekeeper) | Enable Gatekeeper add-on | `bool` | `false` | no |
| <a name="input_enable_grafana"></a> [enable\_grafana](#input\_enable\_grafana) | Enable Grafana add-on | `bool` | `false` | no |
| <a name="input_enable_ingress_nginx"></a> [enable\_ingress\_nginx](#input\_enable\_ingress\_nginx) | Enable Ingress Nginx add-on | `bool` | `false` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Enable Ipv6 network. Attaches new VPC CNI policy to the IRSA role | `bool` | `false` | no |
| <a name="input_enable_karpenter"></a> [enable\_karpenter](#input\_enable\_karpenter) | Enable Karpenter autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_keda"></a> [enable\_keda](#input\_enable\_keda) | Enable KEDA Event-based autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_ksg"></a> [enable\_ksg](#input\_enable\_ksg) | Enable kubernetes-secret-generator add-on | `bool` | `true` | no |
| <a name="input_enable_kube_prometheus_stack"></a> [enable\_kube\_prometheus\_stack](#input\_enable\_kube\_prometheus\_stack) | Enable Community kube-prometheus-stack add-on | `bool` | `false` | no |
| <a name="input_enable_kube_state_metrics"></a> [enable\_kube\_state\_metrics](#input\_enable\_kube\_state\_metrics) | Enable Kube State Metrics add-on | `bool` | `false` | no |
| <a name="input_enable_kubecost"></a> [enable\_kubecost](#input\_enable\_kubecost) | Enable Kubecost add-on | `bool` | `false` | no |
| <a name="input_enable_kuberay_operator"></a> [enable\_kuberay\_operator](#input\_enable\_kuberay\_operator) | Enable KubeRay Operator add-on | `bool` | `false` | no |
| <a name="input_enable_kubernetes_dashboard"></a> [enable\_kubernetes\_dashboard](#input\_enable\_kubernetes\_dashboard) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_kyverno"></a> [enable\_kyverno](#input\_enable\_kyverno) | Enable Kyverno add-on | `bool` | `false` | no |
| <a name="input_enable_kyverno_policies"></a> [enable\_kyverno\_policies](#input\_enable\_kyverno\_policies) | Enable Kyverno policies. Requires `enable_kyverno` to be `true` | `bool` | `false` | no |
| <a name="input_enable_kyverno_policy_reporter"></a> [enable\_kyverno\_policy\_reporter](#input\_enable\_kyverno\_policy\_reporter) | Enable Kyverno UI. Requires `enable_kyverno` to be `true` | `bool` | `false` | no |
| <a name="input_enable_local_volume_provisioner"></a> [enable\_local\_volume\_provisioner](#input\_enable\_local\_volume\_provisioner) | Enable Local volume provisioner add-on | `bool` | `false` | no |
| <a name="input_enable_metrics_server"></a> [enable\_metrics\_server](#input\_enable\_metrics\_server) | Enable metrics server add-on | `bool` | `false` | no |
| <a name="input_enable_nvidia_device_plugin"></a> [enable\_nvidia\_device\_plugin](#input\_enable\_nvidia\_device\_plugin) | Enable NVIDIA device plugin add-on | `bool` | `false` | no |
| <a name="input_enable_ondat"></a> [enable\_ondat](#input\_enable\_ondat) | Enable Ondat add-on | `bool` | `false` | no |
| <a name="input_enable_onepassword"></a> [enable\_onepassword](#input\_enable\_onepassword) | Enable OnePassword add-on | `bool` | `false` | no |
| <a name="input_enable_opentelemetry_operator"></a> [enable\_opentelemetry\_operator](#input\_enable\_opentelemetry\_operator) | Enable opentelemetry operator add-on | `bool` | `false` | no |
| <a name="input_enable_portworx"></a> [enable\_portworx](#input\_enable\_portworx) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_prometheus"></a> [enable\_prometheus](#input\_enable\_prometheus) | Enable Community Prometheus add-on | `bool` | `false` | no |
| <a name="input_enable_promtail"></a> [enable\_promtail](#input\_enable\_promtail) | Enable Promtail add-on | `bool` | `false` | no |
| <a name="input_enable_reloader"></a> [enable\_reloader](#input\_enable\_reloader) | Enable Reloader add-on | `bool` | `false` | no |
| <a name="input_enable_secrets_store_csi_driver"></a> [enable\_secrets\_store\_csi\_driver](#input\_enable\_secrets\_store\_csi\_driver) | Enable CSI Secrets Store Provider | `bool` | `false` | no |
| <a name="input_enable_secrets_store_csi_driver_provider_aws"></a> [enable\_secrets\_store\_csi\_driver\_provider\_aws](#input\_enable\_secrets\_store\_csi\_driver\_provider\_aws) | Enable AWS CSI Secrets Store Provider | `bool` | `false` | no |
| <a name="input_enable_self_managed_aws_ebs_csi_driver"></a> [enable\_self\_managed\_aws\_ebs\_csi\_driver](#input\_enable\_self\_managed\_aws\_ebs\_csi\_driver) | Enable self-managed aws-ebs-csi-driver add-on; enable\_self\_managed\_aws\_ebs\_csi\_driver and enable\_amazon\_eks\_aws\_ebs\_csi\_driver are mutually exclusive | `bool` | `false` | no |
| <a name="input_enable_self_managed_coredns"></a> [enable\_self\_managed\_coredns](#input\_enable\_self\_managed\_coredns) | Enable self-managed CoreDNS add-on | `bool` | `false` | no |
| <a name="input_enable_smb_csi_driver"></a> [enable\_smb\_csi\_driver](#input\_enable\_smb\_csi\_driver) | Enable SMB CSI driver add-on | `bool` | `false` | no |
| <a name="input_enable_spark_history_server"></a> [enable\_spark\_history\_server](#input\_enable\_spark\_history\_server) | Enable Spark History Server add-on | `bool` | `false` | no |
| <a name="input_enable_spark_k8s_operator"></a> [enable\_spark\_k8s\_operator](#input\_enable\_spark\_k8s\_operator) | Enable Spark on K8s Operator add-on | `bool` | `false` | no |
| <a name="input_enable_strimzi_kafka_operator"></a> [enable\_strimzi\_kafka\_operator](#input\_enable\_strimzi\_kafka\_operator) | Enable Kafka add-on | `bool` | `false` | no |
| <a name="input_enable_sysdig_agent"></a> [enable\_sysdig\_agent](#input\_enable\_sysdig\_agent) | Enable Sysdig Agent add-on | `bool` | `false` | no |
| <a name="input_enable_tetrate_istio"></a> [enable\_tetrate\_istio](#input\_enable\_tetrate\_istio) | Enable Tetrate Istio add-on | `bool` | `false` | no |
| <a name="input_enable_thanos"></a> [enable\_thanos](#input\_enable\_thanos) | Enable Thanos add-on | `bool` | `false` | no |
| <a name="input_enable_traefik"></a> [enable\_traefik](#input\_enable\_traefik) | Enable Traefik add-on | `bool` | `false` | no |
| <a name="input_enable_vault"></a> [enable\_vault](#input\_enable\_vault) | Enable HashiCorp Vault add-on | `bool` | `false` | no |
| <a name="input_enable_velero"></a> [enable\_velero](#input\_enable\_velero) | Enable Kubernetes Dashboard add-on | `bool` | `false` | no |
| <a name="input_enable_vpa"></a> [enable\_vpa](#input\_enable\_vpa) | Enable Vertical Pod Autoscaler add-on | `bool` | `false` | no |
| <a name="input_enable_yunikorn"></a> [enable\_yunikorn](#input\_enable\_yunikorn) | Enable Apache YuniKorn K8s scheduler add-on | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | environment | `string` | `""` | no |
| <a name="input_environment_class"></a> [environment\_class](#input\_environment\_class) | environment\_class | `string` | `"Applications"` | no |
| <a name="input_environment_name"></a> [environment\_name](#input\_environment\_name) | environment\_name | `string` | `""` | no |
| <a name="input_environment_tag"></a> [environment\_tag](#input\_environment\_tag) | environment\_tag | `string` | `""` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | environment\_type | `string` | `"DEV"` | no |
| <a name="input_environment_type_tag"></a> [environment\_type\_tag](#input\_environment\_type\_tag) | environment\_type\_tag | `string` | `""` | no |
| <a name="input_external_dns_helm_config"></a> [external\_dns\_helm\_config](#input\_external\_dns\_helm\_config) | External DNS Helm Chart config | `any` | `{}` | no |
| <a name="input_external_dns_irsa_policies"></a> [external\_dns\_irsa\_policies](#input\_external\_dns\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_external_dns_private_zone"></a> [external\_dns\_private\_zone](#input\_external\_dns\_private\_zone) | Determines if referenced Route53 zone is private. | `bool` | `false` | no |
| <a name="input_external_dns_route53_zone_arns"></a> [external\_dns\_route53\_zone\_arns](#input\_external\_dns\_route53\_zone\_arns) | List of Route53 zones ARNs which external-dns will have access to create/manage records | `list(string)` | `[]` | no |
| <a name="input_external_secrets_helm_config"></a> [external\_secrets\_helm\_config](#input\_external\_secrets\_helm\_config) | External Secrets operator Helm Chart config | `any` | `{}` | no |
| <a name="input_external_secrets_irsa_policies"></a> [external\_secrets\_irsa\_policies](#input\_external\_secrets\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_external_secrets_secrets_manager_arns"></a> [external\_secrets\_secrets\_manager\_arns](#input\_external\_secrets\_secrets\_manager\_arns) | List of Secrets Manager ARNs that contain secrets to mount using External Secrets | `list(string)` | <pre>[<br>  "arn:aws:secretsmanager:*:*:secret:*"<br>]</pre> | no |
| <a name="input_external_secrets_ssm_parameter_arns"></a> [external\_secrets\_ssm\_parameter\_arns](#input\_external\_secrets\_ssm\_parameter\_arns) | List of Systems Manager Parameter ARNs that contain secrets to mount using External Secrets | `list(string)` | <pre>[<br>  "arn:aws:ssm:*:*:parameter/*"<br>]</pre> | no |
| <a name="input_fargate_fluentbit_addon_config"></a> [fargate\_fluentbit\_addon\_config](#input\_fargate\_fluentbit\_addon\_config) | Fargate fluentbit add-on config | `any` | `{}` | no |
| <a name="input_gatekeeper_helm_config"></a> [gatekeeper\_helm\_config](#input\_gatekeeper\_helm\_config) | Gatekeeper Helm Chart config | `any` | `{}` | no |
| <a name="input_geo_location_country"></a> [geo\_location\_country](#input\_geo\_location\_country) | geo\_location\_country | `string` | `"us"` | no |
| <a name="input_grafana_helm_config"></a> [grafana\_helm\_config](#input\_grafana\_helm\_config) | Kubernetes Grafana Helm Chart config | `any` | `null` | no |
| <a name="input_grafana_irsa_policies"></a> [grafana\_irsa\_policies](#input\_grafana\_irsa\_policies) | IAM policy ARNs for grafana IRSA | `list(string)` | `[]` | no |
| <a name="input_ingress_nginx_helm_config"></a> [ingress\_nginx\_helm\_config](#input\_ingress\_nginx\_helm\_config) | Ingress Nginx Helm Chart config | `any` | `{}` | no |
| <a name="input_irsa_iam_permissions_boundary"></a> [irsa\_iam\_permissions\_boundary](#input\_irsa\_iam\_permissions\_boundary) | IAM permissions boundary for IRSA roles | `string` | `""` | no |
| <a name="input_irsa_iam_role_path"></a> [irsa\_iam\_role\_path](#input\_irsa\_iam\_role\_path) | IAM role path for IRSA roles | `string` | `"/"` | no |
| <a name="input_karpenter_arch_types"></a> [karpenter\_arch\_types](#input\_karpenter\_arch\_types) | AWS architecture types for karpenter | `list(string)` | <pre>[<br>  "amd64"<br>]</pre> | no |
| <a name="input_karpenter_capacity_types"></a> [karpenter\_capacity\_types](#input\_karpenter\_capacity\_types) | AWS capacity types for karpenter | `list(string)` | <pre>[<br>  "spot",<br>  "on-demand"<br>]</pre> | no |
| <a name="input_karpenter_cpu_limit"></a> [karpenter\_cpu\_limit](#input\_karpenter\_cpu\_limit) | Maximum number of CPUs Karpenter can allocate | `string` | `"1k"` | no |
| <a name="input_karpenter_enable_spot_termination_handling"></a> [karpenter\_enable\_spot\_termination\_handling](#input\_karpenter\_enable\_spot\_termination\_handling) | Determines whether to enable native spot termination handling | `bool` | `false` | no |
| <a name="input_karpenter_helm_config"></a> [karpenter\_helm\_config](#input\_karpenter\_helm\_config) | Karpenter autoscaler add-on config | `any` | `{}` | no |
| <a name="input_karpenter_instance_families"></a> [karpenter\_instance\_families](#input\_karpenter\_instance\_families) | AWS instance families for karpenter | `list(string)` | <pre>[<br>  "c5",<br>  "m5",<br>  "r5",<br>  "t5"<br>]</pre> | no |
| <a name="input_karpenter_instance_sizes_exclude"></a> [karpenter\_instance\_sizes\_exclude](#input\_karpenter\_instance\_sizes\_exclude) | AWS instance sizes to exclude for karpenter | `list(string)` | <pre>[<br>  "nano",<br>  "micro",<br>  "small",<br>  "large"<br>]</pre> | no |
| <a name="input_karpenter_instance_types_exclude"></a> [karpenter\_instance\_types\_exclude](#input\_karpenter\_instance\_types\_exclude) | AWS instance types to exclude for karpenter | `list(string)` | <pre>[<br>  "m5.24xlarge"<br>]</pre> | no |
| <a name="input_karpenter_irsa_policies"></a> [karpenter\_irsa\_policies](#input\_karpenter\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_karpenter_launch_template_name"></a> [karpenter\_launch\_template\_name](#input\_karpenter\_launch\_template\_name) | Karpenter launch template name | `string` | `""` | no |
| <a name="input_karpenter_memory_limit"></a> [karpenter\_memory\_limit](#input\_karpenter\_memory\_limit) | Maximum amount of RAM Karpenter can allocate | `string` | `"1000Gi"` | no |
| <a name="input_karpenter_node_iam_instance_profile"></a> [karpenter\_node\_iam\_instance\_profile](#input\_karpenter\_node\_iam\_instance\_profile) | Karpenter Node IAM Instance profile id | `string` | `""` | no |
| <a name="input_karpenter_security_group_selector"></a> [karpenter\_security\_group\_selector](#input\_karpenter\_security\_group\_selector) | Karpenter Security Group selector id | `string` | `""` | no |
| <a name="input_karpenter_subnet_selector"></a> [karpenter\_subnet\_selector](#input\_karpenter\_subnet\_selector) | Karpenter Subnet selector id | `string` | `""` | no |
| <a name="input_karpenter_tags"></a> [karpenter\_tags](#input\_karpenter\_tags) | Karpenter Tags | `string` | `""` | no |
| <a name="input_karpenter_ttl_seconds_after_empty"></a> [karpenter\_ttl\_seconds\_after\_empty](#input\_karpenter\_ttl\_seconds\_after\_empty) | Number of seconds before an empty node is deleted | `number` | `30` | no |
| <a name="input_karpenter_ttl_seconds_until_expired"></a> [karpenter\_ttl\_seconds\_until\_expired](#input\_karpenter\_ttl\_seconds\_until\_expired) | Number of seconds before a node is marked as expired and removed | `number` | `2592000` | no |
| <a name="input_keda_helm_config"></a> [keda\_helm\_config](#input\_keda\_helm\_config) | KEDA Event-based autoscaler add-on config | `any` | `{}` | no |
| <a name="input_keda_irsa_policies"></a> [keda\_irsa\_policies](#input\_keda\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_ksg_helm_config"></a> [ksg\_helm\_config](#input\_ksg\_helm\_config) | kubernetes-secret-generator add-on config | `any` | `{}` | no |
| <a name="input_ksg_helm_variables"></a> [ksg\_helm\_variables](#input\_ksg\_helm\_variables) | ksg\_helm\_variables | `map(any)` | `{}` | no |
| <a name="input_ksg_namespace"></a> [ksg\_namespace](#input\_ksg\_namespace) | Kubernetes-secret-generator namespace | `string` | `"kube-system"` | no |
| <a name="input_ksg_onepassworditems"></a> [ksg\_onepassworditems](#input\_ksg\_onepassworditems) | kubernetes-secret-generator OnePasswordItems to bootstrap the cluster | `map(any)` | `{}` | no |
| <a name="input_kube_prometheus_stack_helm_config"></a> [kube\_prometheus\_stack\_helm\_config](#input\_kube\_prometheus\_stack\_helm\_config) | Community kube-prometheus-stack Helm Chart config | `any` | `{}` | no |
| <a name="input_kube_state_metrics_helm_config"></a> [kube\_state\_metrics\_helm\_config](#input\_kube\_state\_metrics\_helm\_config) | Kube State Metrics Helm Chart config | `any` | `{}` | no |
| <a name="input_kubecost_helm_config"></a> [kubecost\_helm\_config](#input\_kubecost\_helm\_config) | Kubecost Helm Chart config | `any` | `{}` | no |
| <a name="input_kuberay_operator_helm_config"></a> [kuberay\_operator\_helm\_config](#input\_kuberay\_operator\_helm\_config) | KubeRay Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_kubernetes_dashboard_helm_config"></a> [kubernetes\_dashboard\_helm\_config](#input\_kubernetes\_dashboard\_helm\_config) | Kubernetes Dashboard Helm Chart config | `any` | `null` | no |
| <a name="input_kyverno_helm_config"></a> [kyverno\_helm\_config](#input\_kyverno\_helm\_config) | Kyverno Helm Chart config | `any` | `{}` | no |
| <a name="input_kyverno_policies_helm_config"></a> [kyverno\_policies\_helm\_config](#input\_kyverno\_policies\_helm\_config) | Kyverno policies Helm Chart config | `any` | `{}` | no |
| <a name="input_kyverno_policy_reporter_helm_config"></a> [kyverno\_policy\_reporter\_helm\_config](#input\_kyverno\_policy\_reporter\_helm\_config) | Kyverno UI Helm Chart config | `any` | `{}` | no |
| <a name="input_local_volume_provisioner_helm_config"></a> [local\_volume\_provisioner\_helm\_config](#input\_local\_volume\_provisioner\_helm\_config) | Local volume provisioner Helm Chart config | `any` | `{}` | no |
| <a name="input_metrics_server_helm_config"></a> [metrics\_server\_helm\_config](#input\_metrics\_server\_helm\_config) | Metrics Server Helm Chart config | `any` | `{}` | no |
| <a name="input_nvidia_device_plugin_helm_config"></a> [nvidia\_device\_plugin\_helm\_config](#input\_nvidia\_device\_plugin\_helm\_config) | NVIDIA device plugin Helm Chart config | `any` | `{}` | no |
| <a name="input_ondat_admin_password"></a> [ondat\_admin\_password](#input\_ondat\_admin\_password) | Password for Ondat admin user | `string` | `"storageos"` | no |
| <a name="input_ondat_admin_username"></a> [ondat\_admin\_username](#input\_ondat\_admin\_username) | Username for Ondat admin user | `string` | `"storageos"` | no |
| <a name="input_ondat_create_cluster"></a> [ondat\_create\_cluster](#input\_ondat\_create\_cluster) | Create cluster resources | `bool` | `true` | no |
| <a name="input_ondat_etcd_ca"></a> [ondat\_etcd\_ca](#input\_ondat\_etcd\_ca) | CA content for Ondat etcd | `string` | `null` | no |
| <a name="input_ondat_etcd_cert"></a> [ondat\_etcd\_cert](#input\_ondat\_etcd\_cert) | Certificate content for Ondat etcd | `string` | `null` | no |
| <a name="input_ondat_etcd_endpoints"></a> [ondat\_etcd\_endpoints](#input\_ondat\_etcd\_endpoints) | List of etcd endpoints for Ondat | `list(string)` | `[]` | no |
| <a name="input_ondat_etcd_key"></a> [ondat\_etcd\_key](#input\_ondat\_etcd\_key) | Private key content for Ondat etcd | `string` | `null` | no |
| <a name="input_ondat_helm_config"></a> [ondat\_helm\_config](#input\_ondat\_helm\_config) | Ondat Helm Chart config | `any` | `{}` | no |
| <a name="input_ondat_irsa_policies"></a> [ondat\_irsa\_policies](#input\_ondat\_irsa\_policies) | IAM policy ARNs for Ondat IRSA | `list(string)` | `[]` | no |
| <a name="input_onepassword_helm_config"></a> [onepassword\_helm\_config](#input\_onepassword\_helm\_config) | OnePassword Helm Chart config | `any` | `{}` | no |
| <a name="input_onepassword_refresh_interval"></a> [onepassword\_refresh\_interval](#input\_onepassword\_refresh\_interval) | OnePassword refresh interval | `string` | `"10m"` | no |
| <a name="input_onepassworditems"></a> [onepassworditems](#input\_onepassworditems) | OnePasswordItems to expose in the cluster | `map(any)` | `{}` | no |
| <a name="input_opentelemetry_operator_helm_config"></a> [opentelemetry\_operator\_helm\_config](#input\_opentelemetry\_operator\_helm\_config) | Opentelemetry Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_portworx_helm_config"></a> [portworx\_helm\_config](#input\_portworx\_helm\_config) | Kubernetes Portworx Helm Chart config | `any` | `null` | no |
| <a name="input_project_url"></a> [project\_url](#input\_project\_url) | project\_url | `string` | `"https://github.com/SandsB2B/b2b-infrastructure"` | no |
| <a name="input_prometheus_helm_config"></a> [prometheus\_helm\_config](#input\_prometheus\_helm\_config) | Community Prometheus Helm Chart config | `any` | `{}` | no |
| <a name="input_promtail_helm_config"></a> [promtail\_helm\_config](#input\_promtail\_helm\_config) | Promtail Helm Chart config | `any` | `{}` | no |
| <a name="input_reloader_helm_config"></a> [reloader\_helm\_config](#input\_reloader\_helm\_config) | Reloader Helm Chart config | `any` | `{}` | no |
| <a name="input_remove_default_coredns_deployment"></a> [remove\_default\_coredns\_deployment](#input\_remove\_default\_coredns\_deployment) | Determines whether the default deployment of CoreDNS is removed and ownership of kube-dns passed to Helm | `bool` | `false` | no |
| <a name="input_secrets_store_csi_driver_helm_config"></a> [secrets\_store\_csi\_driver\_helm\_config](#input\_secrets\_store\_csi\_driver\_helm\_config) | CSI Secrets Store Provider Helm Configurations | `any` | `null` | no |
| <a name="input_self_managed_aws_ebs_csi_driver_helm_config"></a> [self\_managed\_aws\_ebs\_csi\_driver\_helm\_config](#input\_self\_managed\_aws\_ebs\_csi\_driver\_helm\_config) | Self-managed aws-ebs-csi-driver Helm chart config | `any` | `{}` | no |
| <a name="input_self_managed_coredns_helm_config"></a> [self\_managed\_coredns\_helm\_config](#input\_self\_managed\_coredns\_helm\_config) | Self-managed CoreDNS Helm chart config | `any` | `{}` | no |
| <a name="input_smb_csi_driver_helm_config"></a> [smb\_csi\_driver\_helm\_config](#input\_smb\_csi\_driver\_helm\_config) | SMB CSI driver Helm Chart config | `any` | `{}` | no |
| <a name="input_spark_history_server_helm_config"></a> [spark\_history\_server\_helm\_config](#input\_spark\_history\_server\_helm\_config) | Spark History Server Helm Chart config | `any` | `{}` | no |
| <a name="input_spark_history_server_irsa_policies"></a> [spark\_history\_server\_irsa\_policies](#input\_spark\_history\_server\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_spark_history_server_s3a_path"></a> [spark\_history\_server\_s3a\_path](#input\_spark\_history\_server\_s3a\_path) | s3a path with prefix for Spark history server e.g., s3a://<bucket\_name>/<spark\_event\_logs> | `string` | `""` | no |
| <a name="input_spark_k8s_operator_helm_config"></a> [spark\_k8s\_operator\_helm\_config](#input\_spark\_k8s\_operator\_helm\_config) | Spark on K8s Operator Helm Chart config | `any` | `{}` | no |
| <a name="input_sqs_queue_kms_data_key_reuse_period_seconds"></a> [sqs\_queue\_kms\_data\_key\_reuse\_period\_seconds](#input\_sqs\_queue\_kms\_data\_key\_reuse\_period\_seconds) | The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again | `number` | `null` | no |
| <a name="input_sqs_queue_kms_master_key_id"></a> [sqs\_queue\_kms\_master\_key\_id](#input\_sqs\_queue\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK | `string` | `null` | no |
| <a name="input_sqs_queue_managed_sse_enabled"></a> [sqs\_queue\_managed\_sse\_enabled](#input\_sqs\_queue\_managed\_sse\_enabled) | Enable server-side encryption (SSE) for a SQS queue | `bool` | `true` | no |
| <a name="input_strimzi_kafka_operator_helm_config"></a> [strimzi\_kafka\_operator\_helm\_config](#input\_strimzi\_kafka\_operator\_helm\_config) | Kafka Strimzi Helm Chart config | `any` | `{}` | no |
| <a name="input_sysdig_agent_helm_config"></a> [sysdig\_agent\_helm\_config](#input\_sysdig\_agent\_helm\_config) | Sysdig Helm Chart config | `any` | `{}` | no |
| <a name="input_sysdig_region"></a> [sysdig\_region](#input\_sysdig\_region) | Sysdig region | `string` | `"us2"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit`,`XYZ`) | `map(string)` | `{}` | no |
| <a name="input_team_name"></a> [team\_name](#input\_team\_name) | team\_name | `string` | `"cloud-engineering"` | no |
| <a name="input_tetrate_istio_base_helm_config"></a> [tetrate\_istio\_base\_helm\_config](#input\_tetrate\_istio\_base\_helm\_config) | Istio `base` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_cni_helm_config"></a> [tetrate\_istio\_cni\_helm\_config](#input\_tetrate\_istio\_cni\_helm\_config) | Istio `cni` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_distribution"></a> [tetrate\_istio\_distribution](#input\_tetrate\_istio\_distribution) | Istio distribution | `string` | `"TID"` | no |
| <a name="input_tetrate_istio_gateway_helm_config"></a> [tetrate\_istio\_gateway\_helm\_config](#input\_tetrate\_istio\_gateway\_helm\_config) | Istio `gateway` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_install_base"></a> [tetrate\_istio\_install\_base](#input\_tetrate\_istio\_install\_base) | Install Istio `base` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_install_cni"></a> [tetrate\_istio\_install\_cni](#input\_tetrate\_istio\_install\_cni) | Install Istio `cni` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_install_gateway"></a> [tetrate\_istio\_install\_gateway](#input\_tetrate\_istio\_install\_gateway) | Install Istio `gateway` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_install_istiod"></a> [tetrate\_istio\_install\_istiod](#input\_tetrate\_istio\_install\_istiod) | Install Istio `istiod` Helm Chart | `bool` | `true` | no |
| <a name="input_tetrate_istio_istiod_helm_config"></a> [tetrate\_istio\_istiod\_helm\_config](#input\_tetrate\_istio\_istiod\_helm\_config) | Istio `istiod` Helm Chart config | `any` | `{}` | no |
| <a name="input_tetrate_istio_version"></a> [tetrate\_istio\_version](#input\_tetrate\_istio\_version) | Istio version | `string` | `""` | no |
| <a name="input_thanos_helm_config"></a> [thanos\_helm\_config](#input\_thanos\_helm\_config) | Thanos Helm Chart config | `any` | `{}` | no |
| <a name="input_thanos_irsa_policies"></a> [thanos\_irsa\_policies](#input\_thanos\_irsa\_policies) | Additional IAM policies for a IAM role for service accounts | `list(string)` | `[]` | no |
| <a name="input_traefik_helm_config"></a> [traefik\_helm\_config](#input\_traefik\_helm\_config) | Traefik Helm Chart config | `any` | `{}` | no |
| <a name="input_vault_helm_config"></a> [vault\_helm\_config](#input\_vault\_helm\_config) | HashiCorp Vault Helm Chart config | `any` | `null` | no |
| <a name="input_velero_backup_s3_bucket"></a> [velero\_backup\_s3\_bucket](#input\_velero\_backup\_s3\_bucket) | Bucket name for velero bucket | `string` | `""` | no |
| <a name="input_velero_helm_config"></a> [velero\_helm\_config](#input\_velero\_helm\_config) | Kubernetes Velero Helm Chart config | `any` | `null` | no |
| <a name="input_velero_irsa_policies"></a> [velero\_irsa\_policies](#input\_velero\_irsa\_policies) | IAM policy ARNs for velero IRSA | `list(string)` | `[]` | no |
| <a name="input_vpa_helm_config"></a> [vpa\_helm\_config](#input\_vpa\_helm\_config) | VPA Helm Chart config | `any` | `null` | no |
| <a name="input_yunikorn_helm_config"></a> [yunikorn\_helm\_config](#input\_yunikorn\_helm\_config) | YuniKorn Helm Chart config | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_adot_collector_haproxy"></a> [adot\_collector\_haproxy](#output\_adot\_collector\_haproxy) | Map of attributes of the Helm release and IRSA created |
| <a name="output_adot_collector_java"></a> [adot\_collector\_java](#output\_adot\_collector\_java) | Map of attributes of the Helm release and IRSA created |
| <a name="output_adot_collector_memcached"></a> [adot\_collector\_memcached](#output\_adot\_collector\_memcached) | Map of attributes of the Helm release and IRSA created |
| <a name="output_adot_collector_nginx"></a> [adot\_collector\_nginx](#output\_adot\_collector\_nginx) | Map of attributes of the Helm release and IRSA created |
| <a name="output_agones"></a> [agones](#output\_agones) | Map of attributes of the Helm release and IRSA created |
| <a name="output_airflow"></a> [airflow](#output\_airflow) | Map of attributes of the Helm release and IRSA created |
| <a name="output_amazon_eks_aws_ebs_csi_driver_config"></a> [amazon\_eks\_aws\_ebs\_csi\_driver\_config](#output\_amazon\_eks\_aws\_ebs\_csi\_driver\_config) | amazon\_eks\_aws\_ebs\_csi\_driver\_config |
| <a name="output_amazon_eks_coredns_config"></a> [amazon\_eks\_coredns\_config](#output\_amazon\_eks\_coredns\_config) | amazon\_eks\_coredns\_config |
| <a name="output_amazon_eks_kube_proxy_config"></a> [amazon\_eks\_kube\_proxy\_config](#output\_amazon\_eks\_kube\_proxy\_config) | amazon\_eks\_kube\_proxy\_config |
| <a name="output_amazon_eks_vpc_cni_config"></a> [amazon\_eks\_vpc\_cni\_config](#output\_amazon\_eks\_vpc\_cni\_config) | amazon\_eks\_vpc\_cni\_config |
| <a name="output_appmesh_controller"></a> [appmesh\_controller](#output\_appmesh\_controller) | Map of attributes of the Helm release and IRSA created |
| <a name="output_argo_rollouts"></a> [argo\_rollouts](#output\_argo\_rollouts) | Map of attributes of the Helm release and IRSA created |
| <a name="output_argo_workflows"></a> [argo\_workflows](#output\_argo\_workflows) | Map of attributes of the Helm release and IRSA created |
| <a name="output_argocd"></a> [argocd](#output\_argocd) | Map of attributes of the Helm release and IRSA created |
| <a name="output_argocd_applicationset_manifest"></a> [argocd\_applicationset\_manifest](#output\_argocd\_applicationset\_manifest) | ArgoCD ApplicationSet Manifest |
| <a name="output_argocd_applicationset_metadata"></a> [argocd\_applicationset\_metadata](#output\_argocd\_applicationset\_metadata) | ArgoCD ApplicationSet Metadata |
| <a name="output_argocd_helm_config"></a> [argocd\_helm\_config](#output\_argocd\_helm\_config) | ArgoCD Values YAML |
| <a name="output_argocd_onepassworditems"></a> [argocd\_onepassworditems](#output\_argocd\_onepassworditems) | ArgoCD 1Password items |
| <a name="output_argocd_values_yaml"></a> [argocd\_values\_yaml](#output\_argocd\_values\_yaml) | ArgoCD Values YAML |
| <a name="output_aws_cloudwatch_metrics"></a> [aws\_cloudwatch\_metrics](#output\_aws\_cloudwatch\_metrics) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_coredns"></a> [aws\_coredns](#output\_aws\_coredns) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_ebs_csi_driver"></a> [aws\_ebs\_csi\_driver](#output\_aws\_ebs\_csi\_driver) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_efs_csi_driver"></a> [aws\_efs\_csi\_driver](#output\_aws\_efs\_csi\_driver) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_for_fluent_bit"></a> [aws\_for\_fluent\_bit](#output\_aws\_for\_fluent\_bit) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_fsx_csi_driver"></a> [aws\_fsx\_csi\_driver](#output\_aws\_fsx\_csi\_driver) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_kube_proxy"></a> [aws\_kube\_proxy](#output\_aws\_kube\_proxy) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_load_balancer_controller"></a> [aws\_load\_balancer\_controller](#output\_aws\_load\_balancer\_controller) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_node_termination_handler"></a> [aws\_node\_termination\_handler](#output\_aws\_node\_termination\_handler) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_privateca_issuer"></a> [aws\_privateca\_issuer](#output\_aws\_privateca\_issuer) | Map of attributes of the Helm release and IRSA created |
| <a name="output_aws_vpc_cni"></a> [aws\_vpc\_cni](#output\_aws\_vpc\_cni) | Map of attributes of the Helm release and IRSA created |
| <a name="output_calico"></a> [calico](#output\_calico) | Map of attributes of the Helm release and IRSA created |
| <a name="output_cert_manager"></a> [cert\_manager](#output\_cert\_manager) | Map of attributes of the Helm release and IRSA created |
| <a name="output_cert_manager_csi_driver"></a> [cert\_manager\_csi\_driver](#output\_cert\_manager\_csi\_driver) | Map of attributes of the Helm release and IRSA created |
| <a name="output_cert_manager_istio_csr"></a> [cert\_manager\_istio\_csr](#output\_cert\_manager\_istio\_csr) | Map of attributes of the Helm release and IRSA created |
| <a name="output_chaos_mesh"></a> [chaos\_mesh](#output\_chaos\_mesh) | Map of attributes of the Helm release and IRSA created |
| <a name="output_cilium"></a> [cilium](#output\_cilium) | Map of attributes of the Helm release and IRSA created |
| <a name="output_cluster_autoscaler"></a> [cluster\_autoscaler](#output\_cluster\_autoscaler) | Map of attributes of the Helm release and IRSA created |
| <a name="output_coredns_autoscaler"></a> [coredns\_autoscaler](#output\_coredns\_autoscaler) | Map of attributes of the Helm release and IRSA created |
| <a name="output_crossplane"></a> [crossplane](#output\_crossplane) | Crossplane configuration |
| <a name="output_crossplane_helm_config"></a> [crossplane\_helm\_config](#output\_crossplane\_helm\_config) | crossplane\_helm\_config |
| <a name="output_csi_secrets_store_provider_aws"></a> [csi\_secrets\_store\_provider\_aws](#output\_csi\_secrets\_store\_provider\_aws) | Map of attributes of the Helm release and IRSA created |
| <a name="output_database_admin_irsa_iam_role_arn"></a> [database\_admin\_irsa\_iam\_role\_arn](#output\_database\_admin\_irsa\_iam\_role\_arn) | IAM role ARN for your service account |
| <a name="output_database_admin_irsa_iam_role_name"></a> [database\_admin\_irsa\_iam\_role\_name](#output\_database\_admin\_irsa\_iam\_role\_name) | IAM role name for your service account |
| <a name="output_database_admin_namespace"></a> [database\_admin\_namespace](#output\_database\_admin\_namespace) | IRSA Namespace |
| <a name="output_database_admin_service_account"></a> [database\_admin\_service\_account](#output\_database\_admin\_service\_account) | IRSA Service Account |
| <a name="output_datadog_operator"></a> [datadog\_operator](#output\_datadog\_operator) | Map of attributes of the Helm release and IRSA created |
| <a name="output_datadog_operator_helm_config"></a> [datadog\_operator\_helm\_config](#output\_datadog\_operator\_helm\_config) | datadog\_operator\_helm\_config |
| <a name="output_default_tags"></a> [default\_tags](#output\_default\_tags) | Default tags |
| <a name="output_emr_on_eks"></a> [emr\_on\_eks](#output\_emr\_on\_eks) | EMR on EKS |
| <a name="output_enable_datadog_operator"></a> [enable\_datadog\_operator](#output\_enable\_datadog\_operator) | enable\_datadog\_operator |
| <a name="output_external_dns"></a> [external\_dns](#output\_external\_dns) | Map of attributes of the Helm release and IRSA created |
| <a name="output_external_dns_helm_config"></a> [external\_dns\_helm\_config](#output\_external\_dns\_helm\_config) | external\_dns\_helm\_config |
| <a name="output_external_secrets"></a> [external\_secrets](#output\_external\_secrets) | Map of attributes of the Helm release and IRSA created |
| <a name="output_fargate_fluentbit"></a> [fargate\_fluentbit](#output\_fargate\_fluentbit) | Map of attributes of the Helm release and IRSA created |
| <a name="output_gatekeeper"></a> [gatekeeper](#output\_gatekeeper) | Map of attributes of the Helm release and IRSA created |
| <a name="output_grafana"></a> [grafana](#output\_grafana) | Map of attributes of the Helm release and IRSA created |
| <a name="output_helm_release_datadog_api_key_metadata"></a> [helm\_release\_datadog\_api\_key\_metadata](#output\_helm\_release\_datadog\_api\_key\_metadata) | Datadog API key metadata for the Helm release |
| <a name="output_helm_release_datadog_operator_api_key_metadata"></a> [helm\_release\_datadog\_operator\_api\_key\_metadata](#output\_helm\_release\_datadog\_operator\_api\_key\_metadata) | Datadog API key metadata for the Helm release |
| <a name="output_iac_version"></a> [iac\_version](#output\_iac\_version) | IaC version |
| <a name="output_ingress_nginx"></a> [ingress\_nginx](#output\_ingress\_nginx) | Map of attributes of the Helm release and IRSA created |
| <a name="output_ingress_nginx_helm_config"></a> [ingress\_nginx\_helm\_config](#output\_ingress\_nginx\_helm\_config) | ingress\_nginx\_helm\_config |
| <a name="output_karpenter"></a> [karpenter](#output\_karpenter) | Map of attributes of the Helm release and IRSA created |
| <a name="output_keda"></a> [keda](#output\_keda) | Map of attributes of the Helm release and IRSA created |
| <a name="output_kube_prometheus_stack"></a> [kube\_prometheus\_stack](#output\_kube\_prometheus\_stack) | Map of attributes of the Helm release and IRSA created |
| <a name="output_kube_state_metrics"></a> [kube\_state\_metrics](#output\_kube\_state\_metrics) | Map of attributes of the Helm release and IRSA created |
| <a name="output_kubecost"></a> [kubecost](#output\_kubecost) | Map of attributes of the Helm release and IRSA created |
| <a name="output_kuberay_operator"></a> [kuberay\_operator](#output\_kuberay\_operator) | Map of attributes of the Helm release and IRSA created |
| <a name="output_kubernetes_dashboard"></a> [kubernetes\_dashboard](#output\_kubernetes\_dashboard) | Map of attributes of the Helm release and IRSA created |
| <a name="output_kyverno"></a> [kyverno](#output\_kyverno) | Map of attributes of the Helm release and IRSA created |
| <a name="output_launch_template_arn"></a> [launch\_template\_arn](#output\_launch\_template\_arn) | Launch Template ARNs |
| <a name="output_launch_template_default_version"></a> [launch\_template\_default\_version](#output\_launch\_template\_default\_version) | Launch Template Default Versions |
| <a name="output_launch_template_id"></a> [launch\_template\_id](#output\_launch\_template\_id) | Launch Template IDs |
| <a name="output_launch_template_image_id"></a> [launch\_template\_image\_id](#output\_launch\_template\_image\_id) | Launch Template Image IDs |
| <a name="output_launch_template_latest_version"></a> [launch\_template\_latest\_version](#output\_launch\_template\_latest\_version) | Launch Template Latest Versions |
| <a name="output_launch_template_name"></a> [launch\_template\_name](#output\_launch\_template\_name) | Launch Template Names |
| <a name="output_local_volume_provisioner"></a> [local\_volume\_provisioner](#output\_local\_volume\_provisioner) | Map of attributes of the Helm release and IRSA created |
| <a name="output_metrics_server"></a> [metrics\_server](#output\_metrics\_server) | Map of attributes of the Helm release and IRSA created |
| <a name="output_nvidia_device_plugin"></a> [nvidia\_device\_plugin](#output\_nvidia\_device\_plugin) | Map of attributes of the Helm release and IRSA created |
| <a name="output_opentelemetry_operator"></a> [opentelemetry\_operator](#output\_opentelemetry\_operator) | Map of attributes of the Helm release and IRSA created |
| <a name="output_prometheus"></a> [prometheus](#output\_prometheus) | Map of attributes of the Helm release and IRSA created |
| <a name="output_promtail"></a> [promtail](#output\_promtail) | Map of attributes of the Helm release and IRSA created |
| <a name="output_reloader"></a> [reloader](#output\_reloader) | Map of attributes of the Helm release and IRSA created |
| <a name="output_rule_group_arn"></a> [rule\_group\_arn](#output\_rule\_group\_arn) | WAF web ACL rule group ARN |
| <a name="output_rule_group_id"></a> [rule\_group\_id](#output\_rule\_group\_id) | WAF web ACL rule group Id |
| <a name="output_secrets_store_csi_driver"></a> [secrets\_store\_csi\_driver](#output\_secrets\_store\_csi\_driver) | Map of attributes of the Helm release and IRSA created |
| <a name="output_smb_csi_driver"></a> [smb\_csi\_driver](#output\_smb\_csi\_driver) | Map of attributes of the Helm release and IRSA created |
| <a name="output_spark_history_server"></a> [spark\_history\_server](#output\_spark\_history\_server) | Map of attributes of the Helm release and IRSA created |
| <a name="output_spark_k8s_operator"></a> [spark\_k8s\_operator](#output\_spark\_k8s\_operator) | Map of attributes of the Helm release and IRSA created |
| <a name="output_strimzi_kafka_operator"></a> [strimzi\_kafka\_operator](#output\_strimzi\_kafka\_operator) | Map of attributes of the Helm release and IRSA created |
| <a name="output_sysdig_agent_helm_config"></a> [sysdig\_agent\_helm\_config](#output\_sysdig\_agent\_helm\_config) | sysdig\_agent\_helm\_config |
| <a name="output_tags"></a> [tags](#output\_tags) | Default tags |
| <a name="output_thanos"></a> [thanos](#output\_thanos) | Map of attributes of the Helm release and IRSA created |
| <a name="output_traefik"></a> [traefik](#output\_traefik) | Map of attributes of the Helm release and IRSA created |
| <a name="output_velero"></a> [velero](#output\_velero) | Map of attributes of the Helm release and IRSA created |
| <a name="output_vpa"></a> [vpa](#output\_vpa) | Map of attributes of the Helm release and IRSA created |
| <a name="output_web_acl_arn"></a> [web\_acl\_arn](#output\_web\_acl\_arn) | WAF web ACL ARN |
| <a name="output_yunikorn"></a> [yunikorn](#output\_yunikorn) | Map of attributes of the Helm release and IRSA created |
