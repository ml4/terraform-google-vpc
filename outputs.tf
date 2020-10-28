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
  value = google_compute_network.main.self_link
}

output "vpc-gcn-main-name" {
  value = google_compute_network.main.name
}

output "vpc-gcn-main-id" {
  value = google_compute_network.main.id
}

output "vpc-gcn-main-description" {
  value = google_compute_network.main.description
}

output "vpc-gcn-main-routingMode" {
  value = google_compute_network.main.routing_mode
}

output "vpc-gcn-main-gatewayIpv4" {
  value = google_compute_network.main.gateway_ipv4
}

## primary public subnet
#
output "vpc-gcsn-primaryPublic-ipCidrRange" {
  value = values(google_compute_subnetwork.primaryPublic)[*].ip_cidr_range
}

output "vpc-gcsn-primaryPublic-name" {
  value = values(google_compute_subnetwork.primaryPublic)[*].name
}

output "vpc-gcsn-primaryPublic-region" {
  value = values(google_compute_subnetwork.primaryPublic)[*].region
}

output "vpc-gcsn-primaryPublic-gatewayAddress" {
  value = values(google_compute_subnetwork.primaryPublic)[*].gateway_address
}

## secondary public subnet
#
output "vpc-gcsn-secondaryPublic-ipCidrRange" {
  value = values(google_compute_subnetwork.secondaryPublic)[*].ip_cidr_range
}

output "vpc-gcsn-secondaryPublic-name" {
  value = values(google_compute_subnetwork.secondaryPublic)[*].name
}

output "vpc-gcsn-secondaryPublic-region" {
  value = values(google_compute_subnetwork.secondaryPublic)[*].region
}

output "vpc-gcsn-secondaryPublic-gatewayAddress" {
  value = values(google_compute_subnetwork.secondaryPublic)[*].gateway_address
}

## primary private subnet
#
output "vpc-gcsn-primaryPrivate-ipCidrRange" {
  value = values(google_compute_subnetwork.primaryPrivate)[*].ip_cidr_range
}

output "vpc-gcsn-primaryPrivate-name" {
  value = values(google_compute_subnetwork.primaryPrivate)[*].name
}

output "vpc-gcsn-primaryPrivate-region" {
  value = values(google_compute_subnetwork.primaryPrivate)[*].region
}

output "vpc-gcsn-primaryPrivate-gatewayAddress" {
  value = values(google_compute_subnetwork.primaryPrivate)[*].gateway_address
}

## secondary private subnet
#
output "vpc-gcsn-secondaryPrivate-ipCidrRange" {
  value = values(google_compute_subnetwork.secondaryPrivate)[*].ip_cidr_range
}

output "vpc-gcsn-secondaryPrivate-name" {
  value = values(google_compute_subnetwork.secondaryPrivate)[*].name
}

output "vpc-gcsn-secondaryPrivate-region" {
  value = values(google_compute_subnetwork.secondaryPrivate)[*].region
}

output "vpc-gcsn-secondaryPrivate-gatewayAddress" {
  value = values(google_compute_subnetwork.secondaryPrivate)[*].gateway_address
}

## firewall
#
output "vpc-gcf-main-name" {
  value = google_compute_firewall.main.name
}

output "vpc-gcf-main-id" {
  value = google_compute_firewall.main.id
}

output "vpc-gcf-main-network" {
  value = google_compute_firewall.main.network
}

output "vpc-gcf-main-description" {
  value = google_compute_firewall.main.description
}

## routing
#
# output "vpc-gca-hcPrimaryNatIp-address" {
#   value = values(google_compute_address.hcPrimaryNatIp)[*].address
# }

# output "vpc-gca-hcSecondaryNatIp-address" {
#   value = values(google_compute_address.hcSecondaryNatIp)[*].address
# }
