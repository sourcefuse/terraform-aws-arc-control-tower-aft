# Jensen Hughes Terraform Control Tower

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.27 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_control_tower"></a> [control\_tower](#module\_control\_tower) | git@github.com:aws-ia/terraform-aws-control_tower_account_factory | 1.6.2 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_customizations_repo_branch"></a> [account\_customizations\_repo\_branch](#input\_account\_customizations\_repo\_branch) | Branch to source account customizations repo from | `string` | `"main"` | no |
| <a name="input_account_customizations_repo_name"></a> [account\_customizations\_repo\_name](#input\_account\_customizations\_repo\_name) | Repository name for the account customizations files. For non-CodeCommit repos, name should be in the format of Org/Repo | `string` | `"aft-account-customizations"` | no |
| <a name="input_account_provisioning_customizations_repo_branch"></a> [account\_provisioning\_customizations\_repo\_branch](#input\_account\_provisioning\_customizations\_repo\_branch) | Branch to source account provisioning customization files | `string` | `"main"` | no |
| <a name="input_account_provisioning_customizations_repo_name"></a> [account\_provisioning\_customizations\_repo\_name](#input\_account\_provisioning\_customizations\_repo\_name) | Repository name for the account provisioning customizations files. For non-CodeCommit repos, name should be in the format of Org/Repo | `string` | `"aft-account-provisioning-customizations"` | no |
| <a name="input_account_request_repo_branch"></a> [account\_request\_repo\_branch](#input\_account\_request\_repo\_branch) | Branch to source account request repo from | `string` | `"main"` | no |
| <a name="input_account_request_repo_name"></a> [account\_request\_repo\_name](#input\_account\_request\_repo\_name) | Repository name for the account request files. For non-CodeCommit repos, name should be in the format of Org/Repo | `string` | `"aft-account-request"` | no |
| <a name="input_aft_feature_cloudtrail_data_events"></a> [aft\_feature\_cloudtrail\_data\_events](#input\_aft\_feature\_cloudtrail\_data\_events) | Feature flag toggling CloudTrail data events on/off | `bool` | `false` | no |
| <a name="input_aft_feature_delete_default_vpcs_enabled"></a> [aft\_feature\_delete\_default\_vpcs\_enabled](#input\_aft\_feature\_delete\_default\_vpcs\_enabled) | Feature flag toggling deletion of default VPCs on/off | `bool` | `false` | no |
| <a name="input_aft_feature_enterprise_support"></a> [aft\_feature\_enterprise\_support](#input\_aft\_feature\_enterprise\_support) | Feature flag toggling Enterprise Support enrollment on/off | `bool` | `false` | no |
| <a name="input_aft_framework_repo_git_ref"></a> [aft\_framework\_repo\_git\_ref](#input\_aft\_framework\_repo\_git\_ref) | Git branch from which the AFT framework should be sourced from | `string` | `null` | no |
| <a name="input_aft_framework_repo_url"></a> [aft\_framework\_repo\_url](#input\_aft\_framework\_repo\_url) | Git repo URL where the AFT framework should be sourced from | `string` | `"https://github.com/aws-ia/terraform-aws-control_tower_account_factory.git"` | no |
| <a name="input_aft_management_account_id"></a> [aft\_management\_account\_id](#input\_aft\_management\_account\_id) | AFT Management Account ID | `string` | n/a | yes |
| <a name="input_aft_metrics_reporting"></a> [aft\_metrics\_reporting](#input\_aft\_metrics\_reporting) | Flag toggling reporting of operational metrics | `bool` | `true` | no |
| <a name="input_aft_vpc_cidr"></a> [aft\_vpc\_cidr](#input\_aft\_vpc\_cidr) | CIDR Block to allocate to the AFT VPC | `string` | n/a | yes |
| <a name="input_aft_vpc_endpoints"></a> [aft\_vpc\_endpoints](#input\_aft\_vpc\_endpoints) | Flag turning VPC endpoints on/off for AFT VPC | `bool` | `true` | no |
| <a name="input_aft_vpc_private_subnet_01_cidr"></a> [aft\_vpc\_private\_subnet\_01\_cidr](#input\_aft\_vpc\_private\_subnet\_01\_cidr) | CIDR Block to allocate to the Private Subnet 01 | `string` | n/a | yes |
| <a name="input_aft_vpc_private_subnet_02_cidr"></a> [aft\_vpc\_private\_subnet\_02\_cidr](#input\_aft\_vpc\_private\_subnet\_02\_cidr) | CIDR Block to allocate to the Private Subnet 02 | `string` | n/a | yes |
| <a name="input_aft_vpc_public_subnet_01_cidr"></a> [aft\_vpc\_public\_subnet\_01\_cidr](#input\_aft\_vpc\_public\_subnet\_01\_cidr) | CIDR Block to allocate to the Public Subnet 01 | `string` | n/a | yes |
| <a name="input_aft_vpc_public_subnet_02_cidr"></a> [aft\_vpc\_public\_subnet\_02\_cidr](#input\_aft\_vpc\_public\_subnet\_02\_cidr) | CIDR Block to allocate to the Public Subnet 02 | `string` | n/a | yes |
| <a name="input_audit_account_id"></a> [audit\_account\_id](#input\_audit\_account\_id) | Audit Account Id | `string` | n/a | yes |
| <a name="input_cloudwatch_log_group_retention"></a> [cloudwatch\_log\_group\_retention](#input\_cloudwatch\_log\_group\_retention) | Amount of days to keep CloudWatch Log Groups for Lambda functions. 0 = Never Expire | `string` | `"0"` | no |
| <a name="input_ct_home_region"></a> [ct\_home\_region](#input\_ct\_home\_region) | The region from which this module will be executed. This MUST be the same region as Control Tower is deployed. | `string` | n/a | yes |
| <a name="input_ct_management_account_id"></a> [ct\_management\_account\_id](#input\_ct\_management\_account\_id) | Control Tower Management Account Id | `string` | n/a | yes |
| <a name="input_github_enterprise_url"></a> [github\_enterprise\_url](#input\_github\_enterprise\_url) | GitHub enterprise URL, if GitHub Enterprise is being used | `string` | `"null"` | no |
| <a name="input_global_codebuild_timeout"></a> [global\_codebuild\_timeout](#input\_global\_codebuild\_timeout) | Codebuild build timeout | `number` | `60` | no |
| <a name="input_global_customizations_repo_branch"></a> [global\_customizations\_repo\_branch](#input\_global\_customizations\_repo\_branch) | Branch to source global customizations repo from | `string` | `"main"` | no |
| <a name="input_global_customizations_repo_name"></a> [global\_customizations\_repo\_name](#input\_global\_customizations\_repo\_name) | Repository name for the global customization files. For non-CodeCommit repos, name should be in the format of Org/Repo | `string` | `"aft-global-customizations"` | no |
| <a name="input_log_archive_account_id"></a> [log\_archive\_account\_id](#input\_log\_archive\_account\_id) | Log Archive Account Id | `string` | n/a | yes |
| <a name="input_maximum_concurrent_customizations"></a> [maximum\_concurrent\_customizations](#input\_maximum\_concurrent\_customizations) | Maximum number of customizations/pipelines to run at once | `number` | `5` | no |
| <a name="input_terraform_api_endpoint"></a> [terraform\_api\_endpoint](#input\_terraform\_api\_endpoint) | API Endpoint for Terraform. Must be in the format of https://xxx.xxx. | `string` | `"https://app.terraform.io/api/v2/"` | no |
| <a name="input_terraform_distribution"></a> [terraform\_distribution](#input\_terraform\_distribution) | Terraform distribution being used for AFT - valid values are oss, tfc, or tfe | `string` | `"oss"` | no |
| <a name="input_terraform_org_name"></a> [terraform\_org\_name](#input\_terraform\_org\_name) | Organization name for Terraform Cloud or Enterprise | `string` | `"null"` | no |
| <a name="input_terraform_token"></a> [terraform\_token](#input\_terraform\_token) | Terraform token for Cloud or Enterprise | `string` | `"null"` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | Terraform version being used for AFT | `string` | `"1.2.7"` | no |
| <a name="input_tf_backend_secondary_region"></a> [tf\_backend\_secondary\_region](#input\_tf\_backend\_secondary\_region) | AFT creates a backend for state tracking for its own state as well as OSS cases. The backend's primary region is the same as the AFT region, but this defines the secondary region to replicate to. | `string` | n/a | yes |
| <a name="input_vcs_provider"></a> [vcs\_provider](#input\_vcs\_provider) | Customer VCS Provider - valid inputs are codecommit, bitbucket, github, or githubenterprise | `string` | `"github"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_customizations_repo_branch"></a> [account\_customizations\_repo\_branch](#output\_account\_customizations\_repo\_branch) | VCS Account customizations repo branch |
| <a name="output_account_customizations_repo_name"></a> [account\_customizations\_repo\_name](#output\_account\_customizations\_repo\_name) | VCS Account customizations repo name |
| <a name="output_account_ids"></a> [account\_ids](#output\_account\_ids) | Map of account IDs for each account created. |
| <a name="output_account_provisioning_customizations_repo_branch"></a> [account\_provisioning\_customizations\_repo\_branch](#output\_account\_provisioning\_customizations\_repo\_branch) | VCS Account provisioning customizations repo branch |
| <a name="output_account_provisioning_customizations_repo_name"></a> [account\_provisioning\_customizations\_repo\_name](#output\_account\_provisioning\_customizations\_repo\_name) | VCS Account provisioning customizations repo name |
| <a name="output_account_request_repo_branch"></a> [account\_request\_repo\_branch](#output\_account\_request\_repo\_branch) | VCS Account request repo branch. |
| <a name="output_account_request_repo_name"></a> [account\_request\_repo\_name](#output\_account\_request\_repo\_name) | VCS Account request repo name. |
| <a name="output_aft_feature_cloudtrail_data_events"></a> [aft\_feature\_cloudtrail\_data\_events](#output\_aft\_feature\_cloudtrail\_data\_events) | AFT feature "CloudTrail data events". |
| <a name="output_aft_feature_delete_default_vpcs_enabled"></a> [aft\_feature\_delete\_default\_vpcs\_enabled](#output\_aft\_feature\_delete\_default\_vpcs\_enabled) | AFT feature "delete default vpcs enabled". |
| <a name="output_aft_vpc_cidr"></a> [aft\_vpc\_cidr](#output\_aft\_vpc\_cidr) | AFT VPC assigned cidr. |
| <a name="output_aft_vpc_private_subnet_cidrs"></a> [aft\_vpc\_private\_subnet\_cidrs](#output\_aft\_vpc\_private\_subnet\_cidrs) | AFT VPC private subnet 01 cidr. |
| <a name="output_aft_vpc_public_subnet_cidrs"></a> [aft\_vpc\_public\_subnet\_cidrs](#output\_aft\_vpc\_public\_subnet\_cidrs) | AFT VPC private subnet 01 cidr. |
| <a name="output_global_customizations_repo_branch"></a> [global\_customizations\_repo\_branch](#output\_global\_customizations\_repo\_branch) | Global customizations repo branch. |
| <a name="output_global_customizations_repo_name"></a> [global\_customizations\_repo\_name](#output\_global\_customizations\_repo\_name) | Global customizations repo name. |
| <a name="output_terraform_version"></a> [terraform\_version](#output\_terraform\_version) | Terraform version used for this configuration. |
| <a name="output_tf_backend_secondary_region"></a> [tf\_backend\_secondary\_region](#output\_tf\_backend\_secondary\_region) | Terraform backend secondary region. |
| <a name="output_vcs_provider"></a> [vcs\_provider](#output\_vcs\_provider) | VCS Provider where the repos are configure for the different accounts. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
