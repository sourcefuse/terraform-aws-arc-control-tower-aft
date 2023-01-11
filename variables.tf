################################################################################
## accounts
################################################################################
variable "account_ids" {
  description = "IDs to the accounts used for deploying the respective resources into"
  type = object({
    aft_management           = string
    audit                    = string
    control_tower_management = string
    log_archive              = string
  })
}

################################################################################
## configuration repos
################################################################################
variable "aft_framework_repo" {
  description = "Information on the git repo for managing the AFT framework"
  type = object({
    url = string
    ref = string
  })
  default = {
    url = "https://github.com/sourcefuse/terraform-aws-refarch-control-tower-aft.git"
    ref = "main"
  }
}

variable "account_customizations_repo" {
  description = "Information on the git repo for managing the account customizations. For non-CodeCommit repos, name should be in the format of org/repo."
  type = object({
    name   = string
    branch = string
  })
  default = {
    name   = "sourcefuse/terraform-aws-refarch-aft-account-customizations"
    branch = "main"
  }
}

variable "account_provisioning_customizations_repo" {
  description = "Information on the git repo for provisioning the account customizations. For non-CodeCommit repos, name should be in the format of org/repo."
  type = object({
    name   = string
    branch = string
  })
  default = {
    name   = "sourcefuse/terraform-aws-refarch-aft-account-provisioning-customizations"
    branch = "main"
  }
}

variable "account_request_repo" {
  description = "Information on the git repo for account requests. For non-CodeCommit repos, name should be in the format of org/repo."
  type = object({
    name   = string
    branch = string
  })
  default = {
    name   = "sourcefuse/terraform-aws-refarch-aft-account-request"
    branch = "main"
  }
}

variable "global_customizations_repo" {
  description = "Information on the git repo for global customizations. For non-CodeCommit repos, name should be in the format of org/repo."
  type = object({
    name   = string
    branch = string
  })
  default = {
    name   = "sourcefuse/terraform-aws-refarch-aft-global-customizations"
    branch = "main"
  }
}

################################################################################
## vpc management
################################################################################
variable "aft_vpc_endpoints" {
  description = "Flag turning VPC endpoints on/off for AFT VPC"
  type        = bool
  default     = true
}

variable "aft_feature_delete_default_vpcs_enabled" {
  description = "Feature flag toggling deletion of default VPCs on/off"
  type        = bool
  default     = true
}

################################################################################
## control tower
################################################################################
variable "control_tower_home_region" {
  description = "The region from which this module will be executed. This MUST be the same region as Control Tower is deployed."
  type        = string
}

################################################################################
## terraform
################################################################################
variable "aft_feature_enterprise_support" {
  description = "Feature flag toggling Enterprise Support enrollment on/off"
  type        = bool
  default     = false
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
  default     = "1.3.6"
}

variable "terraform_backend_secondary_region" {
  description = "AFT creates a backend for state tracking for its own state as well as OSS cases. The backend's primary region is the same as the AFT region, but this defines the secondary region to replicate to."
  type        = string
}

################################################################################
## auditing / logging / metrics
################################################################################
variable "cloudwatch_log_group_retention" {
  description = "Amount of days to keep CloudWatch Log Groups for Lambda functions. 0 = Never Expire"
  type        = string
  default     = "0"
}

variable "aft_feature_cloudtrail_data_events" {
  description = "Feature flag toggling CloudTrail data events on/off"
  type        = bool
  default     = true
}

variable "aft_metrics_reporting" {
  description = "Flag toggling reporting of operational metrics"
  type        = bool
  default     = true
}

################################################################################
## networking
################################################################################
variable "aft_vpc_cidr" {
  description = "CIDR Block to allocate to the AFT VPC"
  type        = string
}

variable "aft_max_subnets" {
  description = "Maximum number of subnets to create based off the provided VPC CIDR"
  type        = string
  default     = "4"
}

################################################################################
## vcs
################################################################################
variable "vcs_provider" {
  description = "Customer VCS Provider - valid inputs are codecommit, bitbucket, github, or githubenterprise"
  type        = string
  default     = "github"
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

variable "maximum_concurrent_customizations" {
  description = "Maximum number of customizations/pipelines to run at once"
  type        = number
  default     = 5
}
