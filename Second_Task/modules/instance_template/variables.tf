variable "instance_name" {
  description = "Name prefix for the instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the instance"
  type        = string
}

variable "network" {
  description = "The subnetwork to attach the instance to"
  type        = string
}

variable "service_account_email" {
  description = "The service account email to use for the instance"
  type        = string
}

variable "startup_script" {
  description = "The startup script to run on the instance"
  type        = string
  default     = <<-EOT
    #!/bin/bash
    echo "Hello, World!" > /var/log/startup-script.log
  EOT
}
