# terraform-aws-refarch-control-tower-aft-example

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aft"></a> [aft](#module\_aft) | sourcefuse/arc-control-tower-aft/aws | 0.3.6 |
| <a name="module_tags"></a> [tags](#module\_tags) | sourcefuse/arc-tags/aws | 1.2.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_customizations_repo"></a> [account\_customizations\_repo](#input\_account\_customizations\_repo) | Information on the git repo for managing the account customizations. For non-CodeCommit repos, name should be in the format of org/repo. | <pre>object({<br>    name   = string<br>    branch = string<br>  })</pre> | <pre>{<br>  "branch": "main",<br>  "name": "sourcefuse/terraform-aws-refarch-aft-account-customizations"<br>}</pre> | no |
| <a name="input_account_ids"></a> [account\_ids](#input\_account\_ids) | IDs to the accounts used for deploying the respective resources into | <pre>object({<br>    aft_management           = string<br>    audit                    = string<br>    control_tower_management = string<br>    log_archive              = string<br>  })</pre> | n/a | yes |
| <a name="input_account_provisioning_customizations_repo"></a> [account\_provisioning\_customizations\_repo](#input\_account\_provisioning\_customizations\_repo) | Information on the git repo for provisioning the account customizations. For non-CodeCommit repos, name should be in the format of org/repo. | <pre>object({<br>    name   = string<br>    branch = string<br>  })</pre> | <pre>{<br>  "branch": "main",<br>  "name": "sourcefuse/terraform-aws-refarch-aft-account-provisioning-customizations"<br>}</pre> | no |
| <a name="input_account_request_repo"></a> [account\_request\_repo](#input\_account\_request\_repo) | Information on the git repo for account requests. For non-CodeCommit repos, name should be in the format of org/repo. | <pre>object({<br>    name   = string<br>    branch = string<br>  })</pre> | <pre>{<br>  "branch": "main",<br>  "name": "sourcefuse/terraform-aws-refarch-aft-account-request"<br>}</pre> | no |
| <a name="input_aft_vpc_cidr"></a> [aft\_vpc\_cidr](#input\_aft\_vpc\_cidr) | CIDR Block to allocate to the AFT VPC | `string` | `"10.27.0.0/20"` | no |
| <a name="input_control_tower_home_region"></a> [control\_tower\_home\_region](#input\_control\_tower\_home\_region) | The region from which this module will be executed. This MUST be the same region as Control Tower is deployed. | `string` | `"us-east-1"` | no |
| <a name="input_global_customizations_repo"></a> [global\_customizations\_repo](#input\_global\_customizations\_repo) | Information on the git repo for global customizations. For non-CodeCommit repos, name should be in the format of org/repo. | <pre>object({<br>    name   = string<br>    branch = string<br>  })</pre> | <pre>{<br>  "branch": "main",<br>  "name": "sourcefuse/terraform-aws-refarch-aft-global-customizations"<br>}</pre> | no |
| <a name="input_terraform_backend_secondary_region"></a> [terraform\_backend\_secondary\_region](#input\_terraform\_backend\_secondary\_region) | AFT creates a backend for state tracking for its own state as well as OSS cases. The backend's primary region is the same as the AFT region, but this defines the secondary region to replicate to. | `string` | `"us-east-2"` | no |

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
