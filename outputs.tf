################################################################################
## accounts
################################################################################
output "account_ids" {
  description = "Map of account IDs for each account created."
  value = tomap({
    aft_management_account_id = module.aft.aft_management_account_id,
    ct_management_account_id  = module.aft.ct_management_account_id
    log_archive_account_id    = module.aft.log_archive_account_id
  })
}

################################################################################
## repos
################################################################################
output "account_customizations_repo_branch" {
  description = "VCS Account customizations repo branch"
  value       = module.aft.account_customizations_repo_branch
}

output "account_customizations_repo_name" {
  description = "VCS Account customizations repo name"
  value       = module.aft.account_customizations_repo_name
}

output "account_provisioning_customizations_repo_branch" {
  description = "VCS Account provisioning customizations repo branch"
  value       = module.aft.account_provisioning_customizations_repo_branch
}

output "account_provisioning_customizations_repo_name" {
  description = "VCS Account provisioning customizations repo name"
  value       = module.aft.account_provisioning_customizations_repo_name
}

output "account_request_repo_branch" {
  description = "VCS Account request repo branch."
  value       = module.aft.account_request_repo_branch
}

output "account_request_repo_name" {
  description = "VCS Account request repo name."
  value       = module.aft.account_request_repo_name
}

output "global_customizations_repo_branch" {
  description = "Global customizations repo branch."
  value       = module.aft.global_customizations_repo_branch
}

output "global_customizations_repo_name" {
  description = "Global customizations repo name."
  value       = module.aft.global_customizations_repo_name
}

output "vcs_provider" {
  description = "VCS Provider where the repos are configure for the different accounts."
  value       = module.aft.vcs_provider
}

################################################################################
## aft features
################################################################################
output "aft_feature_cloudtrail_data_events" {
  description = "AFT feature \"CloudTrail data events\"."
  value       = module.aft.aft_feature_cloudtrail_data_events
}

output "aft_feature_delete_default_vpcs_enabled" {
  description = "AFT feature \"delete default vpcs enabled\"."
  value       = module.aft.aft_feature_delete_default_vpcs_enabled
}

################################################################################
## networking
################################################################################
output "aft_vpc_cidr" {
  description = "AFT VPC assigned cidr."
  value       = module.aft.aft_vpc_cidr
}

output "aft_vpc_private_subnet_cidrs" {
  description = "AFT VPC private subnet 01 cidr."
  value = [
    module.aft.aft_vpc_private_subnet_01_cidr,
    module.aft.aft_vpc_private_subnet_02_cidr,
  ]
}

output "aft_vpc_public_subnet_cidrs" {
  description = "AFT VPC private subnet 01 cidr."
  value = [
    module.aft.aft_vpc_public_subnet_01_cidr,
    module.aft.aft_vpc_public_subnet_02_cidr,
  ]
}

################################################################################
## terraform
################################################################################
output "terraform_version" {
  description = "Terraform version used for this configuration."
  value       = module.aft.terraform_version
}

output "tf_backend_secondary_region" {
  description = "Terraform backend secondary region."
  value       = module.aft.tf_backend_secondary_region
}
