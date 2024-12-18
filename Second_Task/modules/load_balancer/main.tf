# Backend Service
resource "google_compute_backend_service" "default" {
  name          = "http-backend-service"
  port_name     = "http"
  protocol      = "HTTP"
  timeout_sec   = 30
  health_checks = [var.health_check]

  backend {
    group = var.backend_group
  }
}

# URL Map
resource "google_compute_url_map" "default" {
  name            = "url-map"
  default_service = google_compute_backend_service.default.self_link
}

# HTTP Proxy
resource "google_compute_target_http_proxy" "default" {
  name    = "http-proxy"
  url_map = google_compute_url_map.default.self_link
}

# Global Forwarding Rule
resource "google_compute_global_forwarding_rule" "default" {
  name       = "global-forwarding-rule"
  target     = google_compute_target_http_proxy.default.self_link
  port_range = "80"
  ip_protocol = "TCP"
}

output "lb_ip" {
  value = google_compute_global_forwarding_rule.default.ip_address
}
