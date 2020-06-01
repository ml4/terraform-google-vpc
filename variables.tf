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

variable "publicSubnetCidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP public subnets"
}

variable "privateSubnetCidrs" {
  type = map(object(
    {
      name = string
      cidr = string
    }
  ))
  description = "GCP private subnets"
}
