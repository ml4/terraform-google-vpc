## variables.tf terraform configuration
#
variable "prefix" {
  type = string
  description = "main prefix in front of most infra for multi-user accounts"
}

variable "googleProject" {
  type = string
  description = "Main Google project"
}

variable "googlePrimaryRegion" {
  type = string
  description = "Google primary target region"
}

variable "googleSecondaryRegion" {
  type = string
  description = "Google secondary target region"
}

variable "primaryPublicSubnetCidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP primary public subnets"
}

variable "primaryPrivateSubnetCidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP primary private subnets"
}

variable "secondaryPublicSubnetCidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP secondary public subnets"
}

variable "secondaryPrivateSubnetCidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP secondary private subnets"
}

