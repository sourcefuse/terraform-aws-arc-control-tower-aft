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

  backend "s3" {}
}

provider "aws" {
  region = var.control_tower_home_region
}

module "tags" {
  source = "git::https://github.com/sourcefuse/terraform-aws-refarch-tags?ref=1.0.3"

  environment = terraform.workspace
  project     = "terraform-aws-refarch-control-tower-aft"

  extra_tags = {
    Example = "true"
  }
}

################################################################################
## control tower
################################################################################
module "aft" {
  source = "../"

  account_ids                        = var.account_ids
  aft_vpc_cidr                       = var.aft_vpc_cidr
  control_tower_home_region          = var.control_tower_home_region
  terraform_backend_secondary_region = var.terraform_backend_secondary_region

  aft_framework_repo                       = var.aft_framework_repo
  account_customizations_repo              = var.account_customizations_repo
  account_provisioning_customizations_repo = var.account_provisioning_customizations_repo
  account_request_repo                     = var.account_request_repo
  global_customizations_repo               = var.global_customizations_repo
}
