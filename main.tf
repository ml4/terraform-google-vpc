## GCP VPC
## Credence to Alex Basista & Tom Straub
#
resource "google_compute_network" "main" {
  name                            = "${var.prefix}-vpc"
  auto_create_subnetworks         = false
  routing_mode                    = "GLOBAL"
  delete_default_routes_on_create = false
}

## subnets
#
resource "google_compute_subnetwork" "primaryPublic" {
  for_each = var.primaryPublicSubnetCidrs

  name          = "${var.prefix}-${each.value.name}"
  ip_cidr_range = each.value.cidr
  network       = google_compute_network.main.self_link
  region        = var.googlePrimaryRegion
}

resource "google_compute_subnetwork" "primaryPrivate" {
  for_each = var.primaryPrivateSubnetCidrs

  name                     = "${var.prefix}-${each.value.name}"
  ip_cidr_range            = each.value.cidr
  network                  = google_compute_network.main.self_link
  private_ip_google_access = true
  region                   = var.googlePrimaryRegion
}

resource "google_compute_subnetwork" "secondaryPublic" {
  for_each = var.secondaryPublicSubnetCidrs

  name          = "${var.prefix}-${each.value.name}"
  ip_cidr_range = each.value.cidr
  network       = google_compute_network.main.self_link
  region        = var.googleSecondaryRegion
}

resource "google_compute_subnetwork" "secondaryPrivate" {
  for_each = var.secondaryPrivateSubnetCidrs

  name                     = "${var.prefix}-${each.value.name}"
  ip_cidr_range            = each.value.cidr
  network                  = google_compute_network.main.self_link
  private_ip_google_access = true
  region                   = var.googleSecondaryRegion
}

## FWs
#
resource "google_compute_firewall" "main" {
  name    = "${var.prefix}-${google_compute_network.main.name}-fw"
  network = google_compute_network.main.self_link

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

## primary routing
#
resource "google_compute_router" "primaryRtr" {
  name    = "${var.prefix}-primary-rtr"
  network = google_compute_network.main.self_link
  region  = var.googlePrimaryRegion
}

resource "google_compute_address" "primaryNatIp" {
  for_each = var.primaryPublicSubnetCidrs

  name    = "${var.prefix}-primary-${each.value.name}"
  project = var.googleProject
  region  = var.googlePrimaryRegion
}

resource "google_compute_router_nat" "primaryNgw" {
  name                               = "${var.prefix}-primary-ngw"
  router                             = google_compute_router.primaryRtr.name
  region                             = var.googlePrimaryRegion
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  depends_on = [
    google_compute_address.primaryNatIp
  ]
}

## secondary routing
#
resource "google_compute_router" "secondaryRtr" {
  name    = "${var.prefix}-secondary-rtr"
  network = google_compute_network.main.self_link
  region  = var.googleSecondaryRegion
}

resource "google_compute_address" "secondaryNatIp" {
  for_each = var.secondaryPublicSubnetCidrs

  name    = "${var.prefix}-secondary-${each.value.name}"
  project = var.googleProject
  region  = var.googleSecondaryRegion
}

resource "google_compute_router_nat" "hcSecondaryNgw" {
  name                               = "${var.prefix}-secondary-ngw"
  router                             = google_compute_router.secondaryRtr.name
  region                             = var.googleSecondaryRegion
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  depends_on = [
    google_compute_address.secondaryNatIp
  ]
}

