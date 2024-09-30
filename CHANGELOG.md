## v0 (2024-07-12)

### Feat

- Add repo_mainline_branch variable (#78)

## v0.7.1 (2023-07-13)

### Fix

- Update GitHub thumbprints for AWS OIDC (#79)

## v0.7.0 (2023-03-08)

### Feat

- Add github_oidc_issuer variable (#67)

### Fix

- remove slash from module reference in README.md (#55)

## v0.6.0 (2022-10-28)

### Feat

- add support for custom principal iam arns (#49)

## v0.5.0 (2022-10-10)

### Feat

- Added max_session_duration configuration for role (#47)

## v0.4.0 (2022-09-12)

### Feat

- converted the variable to a list of account ids.
- added the statement for permitting the root user to assume role.

### Fix

- updated policy statement syntax. (#42)
- updated examples.
- making account id optional
- missed one more example.
- formatting.
- added required argument in examples.
- fixed formatting.

## v0.3.0 (2022-08-17)

### Feat

- add support for adding custom policies (#37)

## v0.2.2 (2022-04-13)

### Fix

- Conditions using same variable & test but different values (#13)

## v0.2.1 (2022-03-01)

### Fix

- Updated conditions are not detected as a change (#6)

## v0.2.0 (2022-02-25)

### Feat

- Remove logic to create condiotnal providers (#4)

### Fix

- add proper conditional dynamic blocks (#3)

## v0.1.0 (2022-02-24)

### Feat

- Terraform module to setup OIDC for AWS and GitHub (#2)
