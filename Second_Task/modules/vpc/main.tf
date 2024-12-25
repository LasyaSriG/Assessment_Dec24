resource "google_compute_network" "vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  network       = google_compute_network.vpc.id
  ip_cidr_range = var.subnet_ip_cidr
  region        = var.subnet_region
}

output "subnet_link" {
  value = google_compute_subnetwork.subnet.self_link
}
