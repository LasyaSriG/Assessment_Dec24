# Variable for the GCP project ID
variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

# Variable for the region to deploy the resources in
variable "region" {
  description = "The region to deploy the resources"
  type        = string
  default     = "us-central1"
}
