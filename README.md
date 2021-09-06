# terraform-google-vpc
Terraform GCP network module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_address.primaryNatIp](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_address.secondaryNatIp](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_firewall.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |
| [google_compute_network.main](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network) | resource |
| [google_compute_router.primary_rtr](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router.secondary_rtr](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.hcSecondaryNgw](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [google_compute_router_nat.primaryNgw](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |
| [google_compute_subnetwork.primary_private](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.primary_public](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.secondary_private](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |
| [google_compute_subnetwork.secondary_public](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_google_primary_region"></a> [google\_primary\_region](#input\_google\_primary\_region) | Google primary target region | `string` | n/a | yes |
| <a name="input_google_project"></a> [google\_project](#input\_google\_project) | Main Google project | `string` | n/a | yes |
| <a name="input_google_secondary_region"></a> [google\_secondary\_region](#input\_google\_secondary\_region) | Google secondary target region | `string` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | main prefix in front of most infra for multi-user accounts | `string` | n/a | yes |
| <a name="input_primary_private_subnet_cidrs"></a> [primary\_private\_subnet\_cidrs](#input\_primary\_private\_subnet\_cidrs) | GCP primary private subnets | <pre>map(object(<br>    {<br>      name = string<br>      cidr = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_primary_public_subnet_cidrs"></a> [primary\_public\_subnet\_cidrs](#input\_primary\_public\_subnet\_cidrs) | GCP primary public subnets | <pre>map(object(<br>    {<br>      name = string<br>      cidr = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_secondary_private_subnet_cidrs"></a> [secondary\_private\_subnet\_cidrs](#input\_secondary\_private\_subnet\_cidrs) | GCP secondary private subnets | <pre>map(object(<br>    {<br>      name = string<br>      cidr = string<br>    }<br>  ))</pre> | n/a | yes |
| <a name="input_secondary_public_subnet_cidrs"></a> [secondary\_public\_subnet\_cidrs](#input\_secondary\_public\_subnet\_cidrs) | GCP secondary public subnets | <pre>map(object(<br>    {<br>      name = string<br>      cidr = string<br>    }<br>  ))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_gcn-gcf-main-description"></a> [gcn-gcf-main-description](#output\_gcn-gcf-main-description) | Google Compute Network (VPC): Google Compute Firewall main description |
| <a name="output_gcn-gcf-main-id"></a> [gcn-gcf-main-id](#output\_gcn-gcf-main-id) | Google Compute Network (VPC): Google Compute Firewall main ID |
| <a name="output_gcn-gcf-main-name"></a> [gcn-gcf-main-name](#output\_gcn-gcf-main-name) | Google Compute Network (VPC): Google Compute Firewall main name |
| <a name="output_gcn-gcf-main-network"></a> [gcn-gcf-main-network](#output\_gcn-gcf-main-network) | Google Compute Network (VPC): Google Compute Firewall main network |
| <a name="output_gcn-gcn-main-description"></a> [gcn-gcn-main-description](#output\_gcn-gcn-main-description) | Google Compute Network (VPC): Google Compute Network main description |
| <a name="output_gcn-gcn-main-gateway_ipv4"></a> [gcn-gcn-main-gateway\_ipv4](#output\_gcn-gcn-main-gateway\_ipv4) | Google Compute Network (VPC): Google Compute Network main IPV4 gateway |
| <a name="output_gcn-gcn-main-id"></a> [gcn-gcn-main-id](#output\_gcn-gcn-main-id) | Google Compute Network (VPC): Google Compute Network main ID |
| <a name="output_gcn-gcn-main-name"></a> [gcn-gcn-main-name](#output\_gcn-gcn-main-name) | Google Compute Network (VPC): Google Compute Network main name |
| <a name="output_gcn-gcn-main-routing_mode"></a> [gcn-gcn-main-routing\_mode](#output\_gcn-gcn-main-routing\_mode) | Google Compute Network (VPC): Google Compute Network main routing mode |
| <a name="output_gcn-gcn-main-self_link"></a> [gcn-gcn-main-self\_link](#output\_gcn-gcn-main-self\_link) | Google Compute Network (VPC): Google Compute Network main self link |
| <a name="output_gcn-gcsn-primaryPrivate-gateway_address"></a> [gcn-gcsn-primaryPrivate-gateway\_address](#output\_gcn-gcsn-primaryPrivate-gateway\_address) | Google Compute Network (VPC): Google Compute Subnet primary private gateway address |
| <a name="output_gcn-gcsn-primaryPrivate-ip_cidr_range"></a> [gcn-gcsn-primaryPrivate-ip\_cidr\_range](#output\_gcn-gcsn-primaryPrivate-ip\_cidr\_range) | Google Compute Network (VPC): Google Compute Subnet primary private IP CIDR range |
| <a name="output_gcn-gcsn-primaryPrivate-name"></a> [gcn-gcsn-primaryPrivate-name](#output\_gcn-gcsn-primaryPrivate-name) | Google Compute Network (VPC): Google Compute Subnet primary private name |
| <a name="output_gcn-gcsn-primaryPrivate-region"></a> [gcn-gcsn-primaryPrivate-region](#output\_gcn-gcsn-primaryPrivate-region) | Google Compute Network (VPC): Google Compute Subnet primary private region |
| <a name="output_gcn-gcsn-primary_public-gateway_address"></a> [gcn-gcsn-primary\_public-gateway\_address](#output\_gcn-gcsn-primary\_public-gateway\_address) | Google Compute Network (VPC): Google Compute Subnet primary public gateway address |
| <a name="output_gcn-gcsn-primary_public-ip_cidr_range"></a> [gcn-gcsn-primary\_public-ip\_cidr\_range](#output\_gcn-gcsn-primary\_public-ip\_cidr\_range) | Google Compute Network (VPC): Google Compute Subnet primary public IP CIDR range |
| <a name="output_gcn-gcsn-primary_public-name"></a> [gcn-gcsn-primary\_public-name](#output\_gcn-gcsn-primary\_public-name) | Google Compute Network (VPC): Google Compute Subnet primary public name |
| <a name="output_gcn-gcsn-primary_public-region"></a> [gcn-gcsn-primary\_public-region](#output\_gcn-gcsn-primary\_public-region) | Google Compute Network (VPC): Google Compute Subnet primary public region |
| <a name="output_gcn-gcsn-secondaryPrivate-gateway_address"></a> [gcn-gcsn-secondaryPrivate-gateway\_address](#output\_gcn-gcsn-secondaryPrivate-gateway\_address) | Google Compute Network (VPC): Google Complete Subnet secondary private gateway address |
| <a name="output_gcn-gcsn-secondaryPrivate-ip_cidr_range"></a> [gcn-gcsn-secondaryPrivate-ip\_cidr\_range](#output\_gcn-gcsn-secondaryPrivate-ip\_cidr\_range) | Google Compute Network (VPC): Google Complete Subnet secondary private IP CIDR range |
| <a name="output_gcn-gcsn-secondaryPrivate-name"></a> [gcn-gcsn-secondaryPrivate-name](#output\_gcn-gcsn-secondaryPrivate-name) | Google Compute Network (VPC): Google Complete Subnet secondary private name |
| <a name="output_gcn-gcsn-secondaryPrivate-region"></a> [gcn-gcsn-secondaryPrivate-region](#output\_gcn-gcsn-secondaryPrivate-region) | Google Compute Network (VPC): Google Complete Subnet secondary private region |
| <a name="output_gcn-gcsn-secondaryPublic-gateway_address"></a> [gcn-gcsn-secondaryPublic-gateway\_address](#output\_gcn-gcsn-secondaryPublic-gateway\_address) | Google Compute Network (VPC): Google Compute Subnet secondary public gateway address |
| <a name="output_gcn-gcsn-secondaryPublic-ip_cidr_range"></a> [gcn-gcsn-secondaryPublic-ip\_cidr\_range](#output\_gcn-gcsn-secondaryPublic-ip\_cidr\_range) | Google Compute Network (VPC): Google Compute Subnet secondary public IP CIDR range |
| <a name="output_gcn-gcsn-secondaryPublic-name"></a> [gcn-gcsn-secondaryPublic-name](#output\_gcn-gcsn-secondaryPublic-name) | Google Compute Network (VPC): Google Compute Subnet secondary public name |
| <a name="output_gcn-gcsn-secondaryPublic-region"></a> [gcn-gcsn-secondaryPublic-region](#output\_gcn-gcsn-secondaryPublic-region) | Google Compute Network (VPC): Google Compute Subnet secondary public region |
<!-- END_TF_DOCS -->
