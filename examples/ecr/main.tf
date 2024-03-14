terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  # backend "s3" {
  #   bucket = "du-terraform-state-bucket"
  #   key    = "state/terraform_state.tfstate"
  #   region = "us-east-1"
  # }

}

provider "aws" {
  region = "ap-south-1"
}

module "ecr" {
  source           = "../../modules/ecr"
  app_name         = var.app_name
  ecr_repositories = var.app_services
}