## GCP VPC
## Credence to Alex Basista & Tom Straub
#
resource "google_compute_network" "hcVpc" {
  name                            = "${var.prefix}-vpc"
  auto_create_subnetworks         = false
  routing_mode                    = "REGIONAL"
  delete_default_routes_on_create = false
}

## subnets
#
resource "google_compute_subnetwork" "hcPrimaryPublic" {
  for_each = var.primaryPublicSubnetCidrs

  name          = "${var.prefix}-${each.value.name}"
  ip_cidr_range = each.value.cidr
  network       = google_compute_network.hcVpc.self_link
}

resource "google_compute_subnetwork" "hcPrimaryPrivate" {
  for_each = var.primaryPrivateSubnetCidrs

  name                     = "${var.prefix}-${each.value.name}"
  ip_cidr_range            = each.value.cidr
  network                  = google_compute_network.hcVpc.self_link
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "hcSecondaryPublic" {
  for_each = var.secondaryPublicSubnetCidrs

  name          = "${var.prefix}-${each.value.name}"
  ip_cidr_range = each.value.cidr
  network       = google_compute_network.hcVpc.self_link
}

resource "google_compute_subnetwork" "hcSecondaryPrivate" {
  for_each = var.secondaryPrivateSubnetCidrs

  name                     = "${var.prefix}-${each.value.name}"
  ip_cidr_range            = each.value.cidr
  network                  = google_compute_network.hcVpc.self_link
  private_ip_google_access = true
}

## FWs
#
resource "google_compute_firewall" "hcFW" {
  name    = "${var.prefix}-${google_compute_network.hcVpc.name}-fw"
  network = google_compute_network.hcVpc.self_link

  ## include port 80 for the certbot acme webserver to automatically get certs
  ## also use port 80 for the TFE ES mode fw-allow-health-check rule: https://cloud.google.com/load-balancing/docs/https/ext-http-lb-simple#firewall (130.211.0.0/22 and 35.191.0.0/16 implicit in the 0.0.0.0/0 below)
  ## 23010 for statsd
  ## 8800 for replicated ui
  #
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "8800", "23010"]
  }

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

## gateways/ips
#
resource "google_compute_address" "hcNatIp" {
  for_each = concat(var.primaryPublicSubnetCidrs, var.secondaryPublicSubnetCidrs)

  name    = "${var.prefix}-${each.value.name}"
  project = var.googleProject
  region  = var.googlePrimaryRegion
}

resource "google_compute_router_nat" "hcNgw" {
  name                               = "${var.prefix}-ngw"
  router                             = google_compute_router.hcRtr.name
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  depends_on = [
    google_compute_address.hcNatIp
  ]
}

## routes
#
resource "google_compute_router" "hcRtr" {
  name    = "${var.prefix}-nrtr"
  network = google_compute_network.hcVpc.self_link
}

