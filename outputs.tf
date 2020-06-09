## outputs.tf child module terraform configuration
## Nomenclature: <d>-<e>-<f>-<g>-<h>
## where
## d = linked resource abbreviation (some resources in a mod are only there to support a main resource)
## e = abbreviated resource
## f = resource name
## g = resource parameter to output
## h = resource subparameter if applicable
#
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

## private subnet
#
output "vpc-gcsn-hcPrivate-ipCidrRange" {
  value = [
    for cidr in google_compute_subnetwork.hcPrivate[*]:
    cidr[*].name
  ]
}

# output "vpc-gcsn-hcPrivate-name" {
#   value = google_compute_subnetwork.hcPrivate[*].name
# }

# output "vpc-gcsn-hcPrivate-region" {
#   value = google_compute_subnetwork.hcPrivate[*].region
# }

# output "vpc-gcsn-hcPrivate-gatewayAddress" {
#   value = google_compute_subnetwork.hcPrivate[*].gateway_address
# }

# ## public subnet
# #
# output "vpc-gcsn-hcPublic-ipCidrRange" {
#   value = google_compute_subnetwork.hcPublic[*].ip_cidr_range
# }

# output "vpc-gcsn-hcPublic-name" {
#   value = google_compute_subnetwork.hcPublic[*].name
# }

# output "vpc-gcsn-hcPublic-region" {
#   value = google_compute_subnetwork.hcPublic[*].region
# }

# output "vpc-gcsn-hcPublic-gatewayAddress" {
#   value = google_compute_subnetwork.hcPublic[*].gateway_address
# }

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
