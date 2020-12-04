## outputs.tf child module terraform configuration
## Nomenclature: <d>-<e>-<f>-<g>-<h>
## where
## d = linked resource abbreviation (some resources in a mod are only there to support a main resource)
## e = abbreviated resource
## f = resource name
## g = resource parameter to output
## h = resource subparameter if applicable
#
output "vpc-gcn-main-self_link" {
  value       = google_compute_network.main.self_link
  description = "Google Compute Network (VPC): Google Compute Network main self link"
}

output "vpc-gcn-main-name" {
  value       = google_compute_network.main.name
  description = "Google Compute Network (VPC): Google Compute Network main name"
}

output "vpc-gcn-main-id" {
  value       = google_compute_network.main.id
  description = "Google Compute Network (VPC): Google Compute Network main ID"
}

output "vpc-gcn-main-description" {
  value       = google_compute_network.main.description
  description = "Google Compute Network (VPC): Google Compute Network main description"
}

output "vpc-gcn-main-routingMode" {
  value       = google_compute_network.main.routing_mode
  description = "Google Compute Network (VPC): Google Compute Network main routing mode"
}

output "vpc-gcn-main-gatewayIpv4" {
  value       = google_compute_network.main.gateway_ipv4
  description = "Google Compute Network (VPC): Google Compute Network main IPV4 gateway"
}

## primary public subnet
#
output "vpc-gcsn-primaryPublic-ipCidrRange" {
  value       = values(google_compute_subnetwork.primaryPublic)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Compute Subnet primary public IP CIDR range"
}

output "vpc-gcsn-primaryPublic-name" {
  value       = values(google_compute_subnetwork.primaryPublic)[*].name
  description = "Google Compute Network (VPC): Google Compute Subnet primary public name"
}

output "vpc-gcsn-primaryPublic-region" {
  value       = values(google_compute_subnetwork.primaryPublic)[*].region
  description = "Google Compute Network (VPC): Google Compute Subnet primary public region"
}

output "vpc-gcsn-primaryPublic-gatewayAddress" {
  value       = values(google_compute_subnetwork.primaryPublic)[*].gateway_address
  description = "Google Compute Network (VPC): Google Compute Subnet primary public gateway address"
}

## secondary public subnet
#
output "vpc-gcsn-secondaryPublic-ipCidrRange" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public IP CIDR range"
}

output "vpc-gcsn-secondaryPublic-name" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].name
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public name"
}

output "vpc-gcsn-secondaryPublic-region" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].region
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public region"
}

output "vpc-gcsn-secondaryPublic-gatewayAddress" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].gateway_address
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public gateway address"
}

## primary private subnet
#
output "vpc-gcsn-primaryPrivate-ipCidrRange" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Compute Subnet primary private IP CIDR range"
}

output "vpc-gcsn-primaryPrivate-name" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].name
  description = "Google Compute Network (VPC): Google Compute Subnet primary private name"
}

output "vpc-gcsn-primaryPrivate-region" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].region
  description = "Google Compute Network (VPC): Google Compute Subnet primary private region"
}

output "vpc-gcsn-primaryPrivate-gatewayAddress" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].gateway_address
  description = "Google Compute Network (VPC): Google Compute Subnet primary private gateway address"
}

## secondary private subnet
#
output "vpc-gcsn-secondaryPrivate-ipCidrRange" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private IP CIDR range"
}

output "vpc-gcsn-secondaryPrivate-name" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].name
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private name"
}

output "vpc-gcsn-secondaryPrivate-region" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].region
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private region"
}

output "vpc-gcsn-secondaryPrivate-gatewayAddress" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].gateway_address
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private gateway address"
}

## firewall
#
output "vpc-gcf-main-name" {
  value       = google_compute_firewall.main.name
  description = "Google Compute Network (VPC): Google Compute Firewall main name"
}

output "vpc-gcf-main-id" {
  value       = google_compute_firewall.main.id
  description = "Google Compute Network (VPC): Google Compute Firewall main ID"
}

output "vpc-gcf-main-network" {
  value       = google_compute_firewall.main.network
  description = "Google Compute Network (VPC): Google Compute Firewall main network"
}

output "vpc-gcf-main-description" {
  value       = google_compute_firewall.main.description
  description = "Google Compute Network (VPC): Google Compute Firewall main description"
}

## routing
#
# output "vpc-gca-hcPrimaryNatIp-address" {
#   value = values(google_compute_address.hcPrimaryNatIp)[*].address
#   description = "Google Compute Network (VPC): "
# }

# output "vpc-gca-hcSecondaryNatIp-address" {
#   value = values(google_compute_address.hcSecondaryNatIp)[*].address
#   description = "Google Compute Network (VPC): "
# }
