# SecureFlow Terraform — remediated baseline for Checkov/IaC hardening.
# Do not apply blindly to a real AWS account without reviewing costs and values.

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "project" {
  type    = string
  default = "secureflow"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "db_password" {
  type      = string
  sensitive = true
}

module "vpc" {
  source      = "./modules/vpc"
  project     = var.project
  environment = var.environment
}

module "iam" {
  source  = "./modules/iam"
  project = var.project
}

module "s3" {
  source  = "./modules/s3"
  project = var.project
}

module "eks" {
  source             = "./modules/eks"
  project            = var.project
  environment        = var.environment
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
}

module "rds" {
  source             = "./modules/rds"
  project            = var.project
  environment        = var.environment
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids
  db_password        = var.db_password
}