## variables.tf terraform configuration
#
variable "prefix" {
  type        = string
  description = "main prefix in front of most infra for multi-user accounts"
}

variable "google_project" {
  type        = string
  description = "Main Google project"
}

variable "google_primary_region" {
  type        = string
  description = "Google primary target region"
}

variable "google_secondary_region" {
  type        = string
  description = "Google secondary target region"
}

variable "primary_public_subnet_cidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP primary public subnets"
}

variable "primary_private_subnet_cidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP primary private subnets"
}

variable "secondary_public_subnet_cidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP secondary public subnets"
}

variable "secondary_private_subnet_cidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP secondary private subnets"
}

