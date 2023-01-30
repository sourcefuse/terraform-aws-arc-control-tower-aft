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
## control tower
################################################################################
variable "control_tower_home_region" {
  description = "The region from which this module will be executed. This MUST be the same region as Control Tower is deployed."
  type        = string
  default     = "us-east-1"
}

################################################################################
## networking
################################################################################
variable "aft_vpc_cidr" {
  description = "CIDR Block to allocate to the AFT VPC"
  type        = string
  default     = "10.27.0.0/20"
}

################################################################################
## terraform
################################################################################
variable "terraform_backend_secondary_region" {
  description = "AFT creates a backend for state tracking for its own state as well as OSS cases. The backend's primary region is the same as the AFT region, but this defines the secondary region to replicate to."
  type        = string
  default     = "us-east-2"
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
