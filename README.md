# Terraform module AWS OIDC integration GitHub Actions v0.9.0

This [Terraform](https://www.terraform.io/) module manages OpenID Connect (OIDC) integration between [GitHub Actions and AWS](https://docs.github.com/en/actions/deployment/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services).

## Description

The module is strict on the claim checks to avoid that creating an OpenID connect integration opens your AWS account to any GitHub repo. However this strictness is not taking all the risk away. Ensure you familiarize yourself with OpenID Connect and the docs provided by GitHub and AWS. As always think about minimizing the privileges.

The module can manage the following:

- The OpenID Connect identity provider for GitHub in your AWS account (via a submodule).
- A role and assume role policy to check OIDC claims.

### Manage the OIDC identity provider

The module provides an option for creating an OpenID connect provider. Using the internal `provider` module to create the OpenID Connect provider. This configuration will create the provider and output the ARN. This output can be passed to other instances of the module to setup roles for repositories on the same provider. Alternative you can create the OpenID connect provider via the resource [aws_iam_openid_connect_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) or in case you have an existing one look-up via the data source [aws_iam_openid_connect_provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_openid_connect_provider).

### Manage roles for a repo

The module creates a role with an assume role policy to check the OIDC claims for the given repo. Be default the policy is set to only allow actions running on the main branch and deny pull request actions. You can choose based on your need one (or more) of the default conditions to check. Additionally, a list of conditions can be provided. The role can only be assumed when all conditions evaluate to true. The following default conditions can be set.

- `allow_main` : Allow GitHub Actions only running on the main branch.
- `allow_environment`: Allow GitHub Actions only for environments, by setting `github_environments` you can limit to a dedicated environment.
- `deny_pull_request`: Denies assuming the role for a pull request.
- `allow_all` : Allow GitHub Actions for any claim for the repository. Be careful, this allows forks as well to assume the role!

## Usages

In case there is not OpenID Connect provider already created in the AWS account, create one via the submodule.

```hcl
module "oidc_provider" {
  source = "github.com/philips-labs/terraform-aws-github-oidc?ref=<version>//modules/provider"
}
```

Next, you can pass the output of the provider to multiple instances of the module.

```hcl
module "oidc_repo_s3" {
  source = "github.com/philips-labs/terraform-aws-github-oidc?ref=<version>"

  openid_connect_provider_arn = module.oidc_provider.openid_connect_provider.arn
  repo                        = var.repo_s3
  role_name                   = "repo-s3"

  # optional
  # override default conditions
  default_conditions          = ["allow_main"]

  # add extra conditions, will be merged with the default_conditions
  conditions                  = [{
    test = "StringLike"
    variable = "token.actions.githubusercontent.com:sub"
    values = ["repo:my-org/my-repo:pull_request"]
  }]
}
```

## Examples

Check out the [example](examples/default/README.md) for a full example of using the module.

## Contribution

We welcome contribution, please checkout the [contribution guide](CONTRIBUTING.md). Be-aware we use [pre commit hooks](https://pre-commit.com/) to update the docs.

## Release

Releases are create automated from the main branch using conventional commit messages.

## Contact

For question you can reach out to one of the [maintainers](./MAINTAINERS.md).
