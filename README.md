# GCP VPC
Terraform GCP network module

## Relevant Requirements & Prerequisites
* AWS credentials
*
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- | - |
| prefix | string | main prefix in front of most infra for multi-user accounts |
| googleProject | string | Main Google project |
| googlePrimaryRegion | string | Google primary target region |
| googleSecondaryRegion | string | Google secondary target region |
| primaryPublicSubnetCidrs | map("object({name:"string",cidr:"string"})") | GCP primary public subnets |
| primaryPrivateSubnetCidrs | map("object({name:"string",cidr:"string"})") | GCP primary private subnets |
| secondaryPublicSubnetCidrs | map("object({name:"string",cidr:"string"})") | GCP secondary public subnets |
| secondaryPrivateSubnetCidrs | map("object({name:"string",cidr:"string"})") | GCP secondary private subnets |
<p>&nbsp;</p>

## Optional Inputs
* None
<p>&nbsp;</p>

## Outputs
| Name | Description |
| - | -- |
| vpc-gcn-main-self_link | Google Compute Network (VPC): Google Compute Network main self link |
| vpc-gcn-main-name | Google Compute Network (VPC): Google Compute Network main name |
| vpc-gcn-main-id | Google Compute Network (VPC): Google Compute Network main ID |
| vpc-gcn-main-description | Google Compute Network (VPC): Google Compute Network main description |
| vpc-gcn-main-routingMode | Google Compute Network (VPC): Google Compute Network main routing mode |
| vpc-gcn-main-gatewayIpv4 | Google Compute Network (VPC): Google Compute Network main IPV4 gateway |
| vpc-gcsn-primaryPublic-ipCidrRange | Google Compute Network (VPC): Google Compute Subnet primary public IP CIDR range |
| vpc-gcsn-primaryPublic-name | Google Compute Network (VPC): Google Compute Subnet primary public name |
| vpc-gcsn-primaryPublic-region | Google Compute Network (VPC): Google Compute Subnet primary public region |
| vpc-gcsn-primaryPublic-gatewayAddress | Google Compute Network (VPC): Google Compute Subnet primary public gateway address |
| vpc-gcsn-secondaryPublic-ipCidrRange | Google Compute Network (VPC): Google Compute Subnet secondary public IP CIDR range |
| vpc-gcsn-secondaryPublic-name | Google Compute Network (VPC): Google Compute Subnet secondary public name |
| vpc-gcsn-secondaryPublic-region | Google Compute Network (VPC): Google Compute Subnet secondary public region |
| vpc-gcsn-secondaryPublic-gatewayAddress | Google Compute Network (VPC): Google Compute Subnet secondary public gateway address |
| vpc-gcsn-primaryPrivate-ipCidrRange | Google Compute Network (VPC): Google Compute Subnet primary private IP CIDR range |
| vpc-gcsn-primaryPrivate-name | Google Compute Network (VPC): Google Compute Subnet primary private name |
| vpc-gcsn-primaryPrivate-region | Google Compute Network (VPC): Google Compute Subnet primary private region |
| vpc-gcsn-primaryPrivate-gatewayAddress | Google Compute Network (VPC): Google Compute Subnet primary private gateway address |
| vpc-gcsn-secondaryPrivate-ipCidrRange | Google Compute Network (VPC): Google Complete Subnet secondary private IP CIDR range |
| vpc-gcsn-secondaryPrivate-name | Google Compute Network (VPC): Google Complete Subnet secondary private name |
| vpc-gcsn-secondaryPrivate-region | Google Compute Network (VPC): Google Complete Subnet secondary private region |
| vpc-gcsn-secondaryPrivate-gatewayAddress | Google Compute Network (VPC): Google Complete Subnet secondary private gateway address |
| vpc-gcf-main-name | Google Compute Network (VPC): Google Compute Firewall main name |
| vpc-gcf-main-id | Google Compute Network (VPC): Google Compute Firewall main ID |
| vpc-gcf-main-network | Google Compute Network (VPC): Google Compute Firewall main network |
| vpc-gcf-main-description | Google Compute Network (VPC): Google Compute Firewall main description |
