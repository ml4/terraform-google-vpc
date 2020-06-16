## variables.tf terraform configuration
#
variable "prefix" {
  description = "main prefix in front of most infra for multi-user accounts"
}

variable "googleProject" {
  type = string
}

variable "googlePrimaryRegion" {
  type = string
}

variable "googleSecondaryRegion" {
  type = string
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

