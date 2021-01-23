## outputs.tf child module terraform configuration
## Nomenclature: <d>-<e>-<f>-<g>-<h>
## where
## d = linked resource abbreviation (some resources in a mod are only there to support a main resource)
## e = abbreviated resource
## f = resource name
## g = resource parameter to output
## h = resource subparameter if applicable
#
output "gcn-gcn-main-self_link" {
  value       = google_compute_network.main.self_link
  description = "Google Compute Network (VPC): Google Compute Network main self link"
}

output "gcn-gcn-main-name" {
  value       = google_compute_network.main.name
  description = "Google Compute Network (VPC): Google Compute Network main name"
}

output "gcn-gcn-main-id" {
  value       = google_compute_network.main.id
  description = "Google Compute Network (VPC): Google Compute Network main ID"
}

output "gcn-gcn-main-description" {
  value       = google_compute_network.main.description
  description = "Google Compute Network (VPC): Google Compute Network main description"
}

output "gcn-gcn-main-routing_mode" {
  value       = google_compute_network.main.routing_mode
  description = "Google Compute Network (VPC): Google Compute Network main routing mode"
}

output "gcn-gcn-main-gateway_ipv4" {
  value       = google_compute_network.main.gateway_ipv4
  description = "Google Compute Network (VPC): Google Compute Network main IPV4 gateway"
}

## primary public subnet
#
output "gcn-gcsn-primary_public-ip_cidr_range" {
  value       = values(google_compute_subnetwork.primary_public)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Compute Subnet primary public IP CIDR range"
}

output "gcn-gcsn-primary_public-name" {
  value       = values(google_compute_subnetwork.primary_public)[*].name
  description = "Google Compute Network (VPC): Google Compute Subnet primary public name"
}

output "gcn-gcsn-primary_public-region" {
  value       = values(google_compute_subnetwork.primary_public)[*].region
  description = "Google Compute Network (VPC): Google Compute Subnet primary public region"
}

output "gcn-gcsn-primary_public-gateway_address" {
  value       = values(google_compute_subnetwork.primary_public)[*].gateway_address
  description = "Google Compute Network (VPC): Google Compute Subnet primary public gateway address"
}

## secondary public subnet
#
output "gcn-gcsn-secondaryPublic-ip_cidr_range" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public IP CIDR range"
}

output "gcn-gcsn-secondaryPublic-name" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].name
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public name"
}

output "gcn-gcsn-secondaryPublic-region" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].region
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public region"
}

output "gcn-gcsn-secondaryPublic-gateway_address" {
  value       = values(google_compute_subnetwork.secondaryPublic)[*].gateway_address
  description = "Google Compute Network (VPC): Google Compute Subnet secondary public gateway address"
}

## primary private subnet
#
output "gcn-gcsn-primaryPrivate-ip_cidr_range" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Compute Subnet primary private IP CIDR range"
}

output "gcn-gcsn-primaryPrivate-name" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].name
  description = "Google Compute Network (VPC): Google Compute Subnet primary private name"
}

output "gcn-gcsn-primaryPrivate-region" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].region
  description = "Google Compute Network (VPC): Google Compute Subnet primary private region"
}

output "gcn-gcsn-primaryPrivate-gateway_address" {
  value       = values(google_compute_subnetwork.primaryPrivate)[*].gateway_address
  description = "Google Compute Network (VPC): Google Compute Subnet primary private gateway address"
}

## secondary private subnet
#
output "gcn-gcsn-secondaryPrivate-ip_cidr_range" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].ip_cidr_range
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private IP CIDR range"
}

output "gcn-gcsn-secondaryPrivate-name" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].name
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private name"
}

output "gcn-gcsn-secondaryPrivate-region" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].region
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private region"
}

output "gcn-gcsn-secondaryPrivate-gateway_address" {
  value       = values(google_compute_subnetwork.secondaryPrivate)[*].gateway_address
  description = "Google Compute Network (VPC): Google Complete Subnet secondary private gateway address"
}

## firewall
#
output "gcn-gcf-main-name" {
  value       = google_compute_firewall.main.name
  description = "Google Compute Network (VPC): Google Compute Firewall main name"
}

output "gcn-gcf-main-id" {
  value       = google_compute_firewall.main.id
  description = "Google Compute Network (VPC): Google Compute Firewall main ID"
}

output "gcn-gcf-main-network" {
  value       = google_compute_firewall.main.network
  description = "Google Compute Network (VPC): Google Compute Firewall main network"
}

output "gcn-gcf-main-description" {
  value       = google_compute_firewall.main.description
  description = "Google Compute Network (VPC): Google Compute Firewall main description"
}

