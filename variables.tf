################################################################################
## aft
################################################################################
variable "aft_vpc_endpoints" {
  description = "Flag turning VPC endpoints on/off for AFT VPC"
  type        = bool
  default     = true
}

variable "account_customizations_repo_branch" {
  description = "Branch to source account customizations repo from"
  type        = string
  default     = "main"
}

variable "account_customizations_repo_name" {
  description = "Repository name for the account customizations files. For non-CodeCommit repos, name should be in the format of Org/Repo"
  type        = string
  default     = "aft-account-customizations"
}

variable "account_provisioning_customizations_repo_branch" {
  description = "Branch to source account provisioning customization files"
  type        = string
  default     = "main"
}

variable "account_provisioning_customizations_repo_name" {
  description = "Repository name for the account provisioning customizations files. For non-CodeCommit repos, name should be in the format of Org/Repo"
  type        = string
  default     = "aft-account-provisioning-customizations"
}

variable "account_request_repo_branch" {
  description = "Branch to source account request repo from"
  type        = string
  default     = "main"
}

variable "account_request_repo_name" {
  description = "Repository name for the account request files. For non-CodeCommit repos, name should be in the format of Org/Repo"
  type        = string
  default     = "aft-account-request"
}

variable "aft_feature_cloudtrail_data_events" {
  description = "Feature flag toggling CloudTrail data events on/off"
  type        = bool
  default     = false
}

variable "aft_feature_delete_default_vpcs_enabled" {
  description = "Feature flag toggling deletion of default VPCs on/off"
  type        = bool
  default     = false
}

variable "aft_feature_enterprise_support" {
  description = "Feature flag toggling Enterprise Support enrollment on/off"
  type        = bool
  default     = false
}

variable "aft_framework_repo_git_ref" {
  description = "Git branch from which the AFT framework should be sourced from"
  type        = string
  default     = null
}

variable "aft_framework_repo_url" {
  description = "Git repo URL where the AFT framework should be sourced from"
  type        = string
  default     = "https://github.com/aws-ia/terraform-aws-control_tower_account_factory.git"
}

variable "aft_management_account_id" {
  description = "AFT Management Account ID"
  type        = string
}

variable "aft_metrics_reporting" {
  description = "Flag toggling reporting of operational metrics"
  type        = bool
  default     = true
}

variable "aft_vpc_cidr" {
  description = "CIDR Block to allocate to the AFT VPC"
  type        = string
}

variable "aft_vpc_private_subnet_01_cidr" {
  description = "CIDR Block to allocate to the Private Subnet 01"
  type        = string
}

variable "aft_vpc_private_subnet_02_cidr" {
  description = "CIDR Block to allocate to the Private Subnet 02"
  type        = string
}

variable "aft_vpc_public_subnet_01_cidr" {
  description = "CIDR Block to allocate to the Public Subnet 01"
  type        = string
}

variable "aft_vpc_public_subnet_02_cidr" {
  description = "CIDR Block to allocate to the Public Subnet 02"
  type        = string
}

variable "audit_account_id" {
  description = "Audit Account Id"
  type        = string
}

variable "cloudwatch_log_group_retention" {
  description = "Amount of days to keep CloudWatch Log Groups for Lambda functions. 0 = Never Expire"
  type        = string
  default     = "0"
}

variable "ct_home_region" {
  description = "The region from which this module will be executed. This MUST be the same region as Control Tower is deployed."
  type        = string
}

variable "ct_management_account_id" {
  description = "Control Tower Management Account Id"
  type        = string
}

variable "github_enterprise_url" {
  description = "GitHub enterprise URL, if GitHub Enterprise is being used"
  type        = string
  default     = "null"
}

variable "global_codebuild_timeout" {
  description = "Codebuild build timeout"
  type        = number
  default     = 60
}

variable "global_customizations_repo_branch" {
  description = "Branch to source global customizations repo from"
  type        = string
  default     = "main"
}

variable "global_customizations_repo_name" {
  description = "Repository name for the global customization files. For non-CodeCommit repos, name should be in the format of Org/Repo"
  type        = string
  default     = "aft-global-customizations"
}

variable "log_archive_account_id" {
  description = "Log Archive Account Id"
  type        = string
}

variable "maximum_concurrent_customizations" {
  description = "Maximum number of customizations/pipelines to run at once"
  type        = number
  default     = 5
}

variable "terraform_api_endpoint" {
  description = "API Endpoint for Terraform. Must be in the format of https://xxx.xxx."
  type        = string
  default     = "https://app.terraform.io/api/v2/"
}

variable "terraform_distribution" {
  description = "Terraform distribution being used for AFT - valid values are oss, tfc, or tfe"
  type        = string
  default     = "oss"
}

variable "terraform_org_name" {
  type        = string
  description = "Organization name for Terraform Cloud or Enterprise"
  default     = "null"
}

variable "terraform_token" {
  description = "Terraform token for Cloud or Enterprise"
  type        = string
  sensitive   = true
  default     = "null"
}

variable "terraform_version" {
  description = "Terraform version being used for AFT"
  type        = string
  default     = "1.2.7"
}

variable "tf_backend_secondary_region" {
  description = "AFT creates a backend for state tracking for its own state as well as OSS cases. The backend's primary region is the same as the AFT region, but this defines the secondary region to replicate to."
  type        = string
}

variable "vcs_provider" {
  description = "Customer VCS Provider - valid inputs are codecommit, bitbucket, github, or githubenterprise"
  type        = string
  default     = "github"
}
