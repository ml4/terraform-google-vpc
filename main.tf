## GCP VPC
## Credence to Alex B.
#
resource "google_compute_network" "hcVpc" {
  name                            = "${var.prefix}-vpc"
  auto_create_subnetworks         = false
  routing_mode                    = "REGIONAL"
  delete_default_routes_on_create = false
}

## subnets
#
resource "google_compute_subnetwork" "hcPriv" {
  name                     = "${var.prefix}-bob"
  ip_cidr_range            = 10.0.123.0/24
  network                  = google_compute_network.hcVpc.self_link
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "hcPrivate" {
  for_each = var.privateSubnetCidrs

  name                     = "${var.prefix}-${each.value.name}"
  ip_cidr_range            = each.value.cidr
  network                  = google_compute_network.hcVpc.self_link
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "hcPublic" {
  for_each = var.publicSubnetCidrs

  name          = "${var.prefix}-${each.value.name}"
  ip_cidr_range = each.value.cidr
  network       = google_compute_network.hcVpc.self_link
}

## FWs
#
resource "google_compute_firewall" "hcFW" {
  name    = "${var.prefix}-${google_compute_network.hcVpc.name}-fw"
  network = google_compute_network.hcVpc.self_link

  allow {
    protocol = "tcp"
    ports    = ["22", "443", "8800"]
  }

  source_ranges = ["0.0.0.0/0"]
}

## gateways/ips
#
resource "google_compute_address" "hcNatIp" {
  for_each = var.publicSubnetCidrs

  name    = "${var.prefix}-${each.value.name}"
  project = var.googleProject
  region  = var.googlePrimaryRegion
}

resource "google_compute_router_nat" "hcNgw" {
  name                               = "${var.prefix}-ngw"
  router                             = google_compute_router.hcRtr.name
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
  depends_on                         = [
    google_compute_address.hcNatIp
  ]
}

## routes
#
resource "google_compute_router" "hcRtr" {
  name    = "${var.prefix}-nrtr"
  network = google_compute_network.hcVpc.self_link
}

