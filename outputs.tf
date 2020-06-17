## outputs.tf child module terraform configuration
## Nomenclature: <d>-<e>-<f>-<g>-<h>
## where
## d = linked resource abbreviation (some resources in a mod are only there to support a main resource)
## e = abbreviated resource
## f = resource name
## g = resource parameter to output
## h = resource subparameter if applicable
#
output "vpc-gcn-hcVpc-self_link" {
  value = google_compute_network.hcVpc.self_link
}

output "vpc-gcn-hcVpc-name" {
  value = google_compute_network.hcVpc.name
}

output "vpc-gcn-hcVpc-id" {
  value = google_compute_network.hcVpc.id
}

output "vpc-gcn-hcVpc-description" {
  value = google_compute_network.hcVpc.description
}

output "vpc-gcn-hcVpc-routingMode" {
  value = google_compute_network.hcVpc.routing_mode
}

output "vpc-gcn-hcVpc-gatewayIpv4" {
  value = google_compute_network.hcVpc.gateway_ipv4
}

## primary public subnet
#
output "vpc-gcsn-hcPrimaryPublic-ipCidrRange" {
  value = values(google_compute_subnetwork.hcPrimaryPublic)[*].ip_cidr_range
}

output "vpc-gcsn-hcPrimaryPublic-name" {
  value = values(google_compute_subnetwork.hcPrimaryPublic)[*].name
}

output "vpc-gcsn-hcPrimaryPublic-region" {
  value = values(google_compute_subnetwork.hcPrimaryPublic)[*].region
}

output "vpc-gcsn-hcPrimaryPublic-gatewayAddress" {
  value = values(google_compute_subnetwork.hcPrimaryPublic)[*].gateway_address
}

## secondary public subnet
#
output "vpc-gcsn-hcSecondaryPublic-ipCidrRange" {
  value = values(google_compute_subnetwork.hcSecondaryPublic)[*].ip_cidr_range
}

output "vpc-gcsn-hcSecondaryPublic-name" {
  value = values(google_compute_subnetwork.hcSecondaryPublic)[*].name
}

output "vpc-gcsn-hcSecondaryPublic-region" {
  value = values(google_compute_subnetwork.hcSecondaryPublic)[*].region
}

output "vpc-gcsn-hcSecondaryPublic-gatewayAddress" {
  value = values(google_compute_subnetwork.hcSecondaryPublic)[*].gateway_address
}

## primary private subnet
#
output "vpc-gcsn-hcPrimaryPrivate-ipCidrRange" {
  value = values(google_compute_subnetwork.hcPrimaryPrivate)[*].ip_cidr_range
}

output "vpc-gcsn-hcPrimaryPrivate-name" {
  value = values(google_compute_subnetwork.hcPrimaryPrivate)[*].name
}

output "vpc-gcsn-hcPrimaryPrivate-region" {
  value = values(google_compute_subnetwork.hcPrimaryPrivate)[*].region
}

output "vpc-gcsn-hcPrimaryPrivate-gatewayAddress" {
  value = values(google_compute_subnetwork.hcPrimaryPrivate)[*].gateway_address
}

## secondary private subnet
#
output "vpc-gcsn-hcSecondaryPrivate-ipCidrRange" {
  value = values(google_compute_subnetwork.hcSecondaryPrivate)[*].ip_cidr_range
}

output "vpc-gcsn-hcSecondaryPrivate-name" {
  value = values(google_compute_subnetwork.hcSecondaryPrivate)[*].name
}

output "vpc-gcsn-hcSecondaryPrivate-region" {
  value = values(google_compute_subnetwork.hcSecondaryPrivate)[*].region
}

output "vpc-gcsn-hcSecondaryPrivate-gatewayAddress" {
  value = values(google_compute_subnetwork.hcSecondaryPrivate)[*].gateway_address
}

## firewall
#
output "vpc-gcf-hcFW-name" {
  value = google_compute_firewall.hcFW.name
}

output "vpc-gcf-hcFW-id" {
  value = google_compute_firewall.hcFW.id
}

output "vpc-gcf-hcFW-network" {
  value = google_compute_firewall.hcFW.network
}

output "vpc-gcf-hcFW-description" {
  value = google_compute_firewall.hcFW.description
}

## routing
#
# output "vpc-gca-hcPrimaryNatIp-address" {
#   value = values(google_compute_address.hcPrimaryNatIp)[*].address
# }

# output "vpc-gca-hcSecondaryNatIp-address" {
#   value = values(google_compute_address.hcSecondaryNatIp)[*].address
# }
