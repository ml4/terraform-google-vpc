# GCP VPC
Terraform GCP network module

## Relevant Requirements & Prerequisites
* AWS credentials
*
<p>&nbsp;</p>

## Required Inputs
| Name | Type | Description |
| - | -- | --- |
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
| gcn-gcn-main-self_link | Google Compute Network (VPC): Google Compute Network main self link |
| gcn-gcn-main-name | Google Compute Network (VPC): Google Compute Network main name |
| gcn-gcn-main-id | Google Compute Network (VPC): Google Compute Network main ID |
| gcn-gcn-main-description | Google Compute Network (VPC): Google Compute Network main description |
| gcn-gcn-main-routingMode | Google Compute Network (VPC): Google Compute Network main routing mode |
| gcn-gcn-main-gatewayIpv4 | Google Compute Network (VPC): Google Compute Network main IPV4 gateway |
| gcn-gcsn-primaryPublic-ipCidrRange | Google Compute Network (VPC): Google Compute Subnet primary public IP CIDR range |
| gcn-gcsn-primaryPublic-name | Google Compute Network (VPC): Google Compute Subnet primary public name |
| gcn-gcsn-primaryPublic-region | Google Compute Network (VPC): Google Compute Subnet primary public region |
| gcn-gcsn-primaryPublic-gatewayAddress | Google Compute Network (VPC): Google Compute Subnet primary public gateway address |
| gcn-gcsn-secondaryPublic-ipCidrRange | Google Compute Network (VPC): Google Compute Subnet secondary public IP CIDR range |
| gcn-gcsn-secondaryPublic-name | Google Compute Network (VPC): Google Compute Subnet secondary public name |
| gcn-gcsn-secondaryPublic-region | Google Compute Network (VPC): Google Compute Subnet secondary public region |
| gcn-gcsn-secondaryPublic-gatewayAddress | Google Compute Network (VPC): Google Compute Subnet secondary public gateway address |
| gcn-gcsn-primaryPrivate-ipCidrRange | Google Compute Network (VPC): Google Compute Subnet primary private IP CIDR range |
| gcn-gcsn-primaryPrivate-name | Google Compute Network (VPC): Google Compute Subnet primary private name |
| gcn-gcsn-primaryPrivate-region | Google Compute Network (VPC): Google Compute Subnet primary private region |
| gcn-gcsn-primaryPrivate-gatewayAddress | Google Compute Network (VPC): Google Compute Subnet primary private gateway address |
| gcn-gcsn-secondaryPrivate-ipCidrRange | Google Compute Network (VPC): Google Complete Subnet secondary private IP CIDR range |
| gcn-gcsn-secondaryPrivate-name | Google Compute Network (VPC): Google Complete Subnet secondary private name |
| gcn-gcsn-secondaryPrivate-region | Google Compute Network (VPC): Google Complete Subnet secondary private region |
| gcn-gcsn-secondaryPrivate-gatewayAddress | Google Compute Network (VPC): Google Complete Subnet secondary private gateway address |
| gcn-gcf-main-name | Google Compute Network (VPC): Google Compute Firewall main name |
| gcn-gcf-main-id | Google Compute Network (VPC): Google Compute Firewall main ID |
| gcn-gcf-main-network | Google Compute Network (VPC): Google Compute Firewall main network |
| gcn-gcf-main-description | Google Compute Network (VPC): Google Compute Firewall main description |
