################################################################################
## defaults
################################################################################
terraform {
  required_version = ">= 1.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.27"
    }
  }
}

################################################################################
## control tower
################################################################################
module "control_tower" {
  source = "git@github.com:aws-ia/terraform-aws-control_tower_account_factory?ref=1.6.2"

  aft_vpc_endpoints                               = var.aft_vpc_endpoints
  account_customizations_repo_branch              = var.account_customizations_repo_branch
  account_customizations_repo_name                = var.account_customizations_repo_name
  account_provisioning_customizations_repo_branch = var.account_provisioning_customizations_repo_branch
  account_provisioning_customizations_repo_name   = var.account_provisioning_customizations_repo_name
  account_request_repo_branch                     = var.account_request_repo_branch
  account_request_repo_name                       = var.account_request_repo_name
  aft_feature_cloudtrail_data_events              = var.aft_feature_cloudtrail_data_events
  aft_feature_delete_default_vpcs_enabled         = var.aft_feature_delete_default_vpcs_enabled
  aft_feature_enterprise_support                  = var.aft_feature_enterprise_support
  aft_framework_repo_git_ref                      = var.aft_framework_repo_git_ref
  aft_framework_repo_url                          = var.aft_framework_repo_url
  aft_management_account_id                       = var.aft_management_account_id
  aft_metrics_reporting                           = var.aft_metrics_reporting
  aft_vpc_cidr                                    = var.aft_vpc_cidr
  aft_vpc_private_subnet_01_cidr                  = var.aft_vpc_private_subnet_01_cidr
  aft_vpc_private_subnet_02_cidr                  = var.aft_vpc_private_subnet_02_cidr
  aft_vpc_public_subnet_01_cidr                   = var.aft_vpc_public_subnet_01_cidr
  aft_vpc_public_subnet_02_cidr                   = var.aft_vpc_public_subnet_02_cidr
  audit_account_id                                = var.audit_account_id
  cloudwatch_log_group_retention                  = var.cloudwatch_log_group_retention
  ct_home_region                                  = var.ct_home_region
  ct_management_account_id                        = var.ct_management_account_id
  github_enterprise_url                           = var.github_enterprise_url
  global_codebuild_timeout                        = var.global_codebuild_timeout
  global_customizations_repo_branch               = var.global_customizations_repo_branch
  global_customizations_repo_name                 = var.global_customizations_repo_name
  log_archive_account_id                          = var.log_archive_account_id
  maximum_concurrent_customizations               = var.maximum_concurrent_customizations
  terraform_api_endpoint                          = var.terraform_api_endpoint
  terraform_distribution                          = var.terraform_distribution
  terraform_org_name                              = var.terraform_org_name
  terraform_token                                 = var.terraform_token
  terraform_version                               = var.terraform_version
  tf_backend_secondary_region                     = var.tf_backend_secondary_region
  vcs_provider                                    = var.vcs_provider
}
