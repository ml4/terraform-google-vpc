## variables.tf terraform configuration
#
variable "prefix" {
  description = "main prefix in front of most infra for multi-user accounts"
}

variable "vpc_name" {
  type        = string
  description = "Name of VPC network"
}

# variable "project_id" {
#   type        = string
#   description = "Project ID of GCP Project in which resources will reside in"
# }

# variable "region" {
#   type        = string
#   description = "GCP region"
# }

variable "subnetworks_private" {
  type = map(object(
    {
      name          = string
      ip_cidr_range = string
    }
  ))
  description = "Map of objects of GCP private subnetworks to provision"
}

variable "subnetworks_public" {
  type = map(object(
    {
      name          = string
      ip_cidr_range = string
    }
  ))
  description = "Map of objects of GCP publicsubnetworks to provision"
}
