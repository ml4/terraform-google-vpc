## outputs.tf child module terraform configuration
## Nomenclature: <d>-<e>-<f>-<g>[-<h>]
## where
## d = linked resource abbreviation (some resources in a mod are only there to support a main resource)
## e = abbreviated resource
## f = resource name
## g = resource parameter to output
## h = resource subparameter if applicable
#
output "vpc-gcn-hcVpc-name" {
  value = google-compute-network.hcVpc.name
}

output "vpc-gcn-hcVpc-id" {
  value = google-compute-network.hcVpc.id
}

output "vpc-gcn-hcVpc-description" {
  value = google-compute-network.hcVpc.description
}

output "vpc-gcn-hcVpc-routing-mode" {
  value = google-compute-network.hcVpc.routing-mode
}

output "vpc-gcn-hcVpc-gateway-ipv4" {
  value = google-compute-network.hcVpc.gateway-ipv4
}

## private subnet
#
output "vpc-gcsn-hcPrivate-ip_cidr_range" {
  value = google-compute-subnetwork.hcPrivate.ip_cidr_range
}

output "vpc-gcsn-hcPrivate-name" {
  value = google-compute-subnetwork.hcPrivate.name
}

output "vpc-gcsn-hcPrivate-region" {
  value = google-compute-subnetwork.hcPrivate.region
}

output "vpc-gcsn-hcPrivate-gateway_address" {
  value = google-compute-subnetwork.hcPrivate.gateway_address
}

## public subnet
#
output "vpc-gcsn-hcPublic-ip_cidr_range" {
  value = google-compute-subnetwork.hcPublic.ip_cidr_range
}

output "vpc-gcsn-hcPublic-name" {
  value = google-compute-subnetwork.hcPublic.name
}

output "vpc-gcsn-hcPublic-region" {
  value = google-compute-subnetwork.hcPublic.region
}

output "vpc-gcsn-hcPublic-gateway_address" {
  value = google-compute-subnetwork.hcPublic.gateway_address
}

## firewall
#
output "vpc-gcf-hcFW-name" {
  value = google-compute-firewall.hcFW.name
}

output "vpc-gcf-hcFW-id" {
  value = google-compute-firewall.hcFW.id
}

output "vpc-gcf-hcFW-network" {
  value = google-compute-firewall.hcFW.network
}

output "vpc-gcf-hcFW-description" {
  value = google-compute-firewall.hcFW.description
}
