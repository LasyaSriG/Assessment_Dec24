# Health Check
resource "google_compute_health_check" "default" {
  name = "${var.group_name}-health-check"

  http_health_check {
    port = 80
  }
}

# Managed Instance Group
resource "google_compute_region_instance_group_manager" "mig" {
  name               = var.group_name
  base_instance_name = var.group_name
  region             = var.region

  version {
    instance_template = var.instance_template
  }

  target_size = var.target_size

  auto_healing_policies {
    health_check      = google_compute_health_check.default.self_link
    initial_delay_sec = 300
  }

  # Auto-scaling configuration
  named_port {
    name = "http"
    port = 80
  }

  autoscaler {
    name = "${var.group_name}-autoscaler"
    target = google_compute_region_instance_group_manager.mig.self_link
    policy {
      min_num_instances = var.min_size
      max_num_instances = var.max_size
      cpu_utilization {
        target = 0.75
      }
    }
  }
}

output "instance_group_link" {
  value = google_compute_region_instance_group_manager.mig.instance_group
}

output "health_check_link" {
  value = google_compute_health_check.default.self_link
}
