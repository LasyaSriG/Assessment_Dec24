resource "google_compute_instance_template" "template" {
  name_prefix  = var.instance_name
  machine_type = var.machine_type

  disk {
    boot         = true
    auto_delete  = true
    source_image = "debian-cloud/debian-11"
  }

  network_interface {
    subnetwork = var.network
    access_config {
      // Assign external IP
    }
  }

  service_account {
    email  = var.service_account_email
    scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }

  metadata_startup_script = var.startup_script
  tags                    = ["http-server"]
}

output "self_link" {
  value = google_compute_instance_template.template.self_link
}
