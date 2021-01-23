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
| google_project | string | Main Google project |
| google_primary_region | string | Google primary target region |
| google_secondary_region | string | Google secondary target region |
| primary_public_subnet_cidrs | map("object({name:"string",cidr:"string"})") | GCP primary public subnets |
| primary_private_subnet_cidrs | map("object({name:"string",cidr:"string"})") | GCP primary private subnets |
| secondary_public_subnet_cidrs | map("object({name:"string",cidr:"string"})") | GCP secondary public subnets |
| secondary_private_subnet_cidrs | map("object({name:"string",cidr:"string"})") | GCP secondary private subnets |
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
| gcn-gcn-main-routing_mode | Google Compute Network (VPC): Google Compute Network main routing mode |
| gcn-gcn-main-gateway_ipv4 | Google Compute Network (VPC): Google Compute Network main IPV4 gateway |
| gcn-gcsn-primary_public-ip_cidr_range | Google Compute Network (VPC): Google Compute Subnet primary public IP CIDR range |
| gcn-gcsn-primary_public-name | Google Compute Network (VPC): Google Compute Subnet primary public name |
| gcn-gcsn-primary_public-region | Google Compute Network (VPC): Google Compute Subnet primary public region |
| gcn-gcsn-primary_public-gateway_address | Google Compute Network (VPC): Google Compute Subnet primary public gateway address |
| gcn-gcsn-secondary_public-ip_cidr_range | Google Compute Network (VPC): Google Compute Subnet secondary public IP CIDR range |
| gcn-gcsn-secondary_public-name | Google Compute Network (VPC): Google Compute Subnet secondary public name |
| gcn-gcsn-secondary_public-region | Google Compute Network (VPC): Google Compute Subnet secondary public region |
| gcn-gcsn-secondary_public-gatewayaddress | Google Compute Network (VPC): Google Compute Subnet secondary public gateway address |
| gcn-gcsn-primary_private-ip_cidr_range | Google Compute Network (VPC): Google Compute Subnet primary private IP CIDR range |
| gcn-gcsn-primary_private-name | Google Compute Network (VPC): Google Compute Subnet primary private name |
| gcn-gcsn-primary_private-region | Google Compute Network (VPC): Google Compute Subnet primary private region |
| gcn-gcsn-primary_private-gateway_address | Google Compute Network (VPC): Google Compute Subnet primary private gateway address |
| gcn-gcsn-secondary_private-ip_cidr_range | Google Compute Network (VPC): Google Complete Subnet secondary private IP CIDR range |
| gcn-gcsn-secondary_private-name | Google Compute Network (VPC): Google Complete Subnet secondary private name |
| gcn-gcsn-secondary_private-region | Google Compute Network (VPC): Google Complete Subnet secondary private region |
| gcn-gcsn-secondary_private-gateway_address | Google Compute Network (VPC): Google Complete Subnet secondary private gateway address |
| gcn-gcf-main-name | Google Compute Network (VPC): Google Compute Firewall main name |
| gcn-gcf-main-id | Google Compute Network (VPC): Google Compute Firewall main ID |
| gcn-gcf-main-network | Google Compute Network (VPC): Google Compute Firewall main network |
| gcn-gcf-main-description | Google Compute Network (VPC): Google Compute Firewall main description |
