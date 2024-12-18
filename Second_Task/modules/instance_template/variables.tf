variable "instance_name" {
  description = "Name prefix for the instance template"
}

variable "machine_type" {
  description = "Machine type for the instance template"
}

variable "network" {
  description = "The subnet link to connect the instances"
}

variable "service_account_email" {
  description = "Service account email to attach to the instance"
}

variable "startup_script" {
  description = "Startup script to run on the VM"
  type        = string
}
