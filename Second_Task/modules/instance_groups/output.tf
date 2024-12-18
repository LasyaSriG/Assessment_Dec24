output "instance_group_link" {
  value = google_compute_region_instance_group_manager.mig.instance_group
}

output "health_check_link" {
  value = google_compute_health_check.default.self_link
}
