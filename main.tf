################################################################################
## defaults
################################################################################
terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

################################################################################
## lookups
################################################################################

################################################################################
## control tower
################################################################################
module "aft" {
  source = "git::https://github.com/aws-ia/terraform-aws-control_tower_account_factory?ref=1.7.0"

  ## required account ids
  aft_management_account_id = var.account_ids.aft_management
  audit_account_id          = var.account_ids.audit
  ct_management_account_id  = var.account_ids.control_tower_management
  log_archive_account_id    = var.account_ids.log_archive

  ## configuration repos
  aft_framework_repo_url                          = var.aft_framework_repo.url
  aft_framework_repo_git_ref                      = var.aft_framework_repo.ref
  account_customizations_repo_name                = var.account_customizations_repo.name
  account_customizations_repo_branch              = var.account_customizations_repo.branch
  account_provisioning_customizations_repo_name   = var.account_provisioning_customizations_repo.name
  account_provisioning_customizations_repo_branch = var.account_provisioning_customizations_repo.branch
  account_request_repo_name                       = var.account_request_repo.name
  account_request_repo_branch                     = var.account_request_repo.branch
  global_customizations_repo_name                 = var.global_customizations_repo.name
  global_customizations_repo_branch               = var.global_customizations_repo.branch

  ## vpc management
  aft_vpc_endpoints                       = var.aft_vpc_endpoints
  aft_feature_delete_default_vpcs_enabled = var.aft_feature_delete_default_vpcs_enabled

  ## control tower
  ct_home_region = var.control_tower_home_region

  ## terraform
  aft_feature_enterprise_support = var.aft_feature_enterprise_support
  terraform_api_endpoint         = var.terraform_api_endpoint
  terraform_distribution         = var.terraform_distribution
  terraform_org_name             = var.terraform_org_name
  terraform_token                = var.terraform_token
  terraform_version              = var.terraform_version
  tf_backend_secondary_region    = var.terraform_backend_secondary_region

  ## auditing / logging / metrics
  cloudwatch_log_group_retention     = var.cloudwatch_log_group_retention
  aft_feature_cloudtrail_data_events = var.aft_feature_cloudtrail_data_events
  aft_metrics_reporting              = var.aft_metrics_reporting

  ## networking
  // TODO - add lookups using names
  aft_vpc_cidr                   = var.aft_vpc_cidr
  aft_vpc_private_subnet_01_cidr = var.aft_vpc_private_subnet_01_cidr
  aft_vpc_private_subnet_02_cidr = var.aft_vpc_private_subnet_02_cidr
  aft_vpc_public_subnet_01_cidr  = var.aft_vpc_public_subnet_01_cidr
  aft_vpc_public_subnet_02_cidr  = var.aft_vpc_public_subnet_02_cidr
  // TODO - END

  ## vcs
  vcs_provider                      = var.vcs_provider
  github_enterprise_url             = var.github_enterprise_url
  global_codebuild_timeout          = var.global_codebuild_timeout
  maximum_concurrent_customizations = var.maximum_concurrent_customizations
}
