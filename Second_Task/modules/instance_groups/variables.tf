variable "group_name" {
  description = "The name of the instance group"
}

variable "region" {
  description = "Region to deploy the instance group"
}

variable "instance_template" {
  description = "Self-link of the instance template"
}

variable "target_size" {
  description = "Number of VMs in the instance group"
}

variable "min_size" {
  description = "Minimum number of instances"
}

variable "max_size" {
  description = "Maximum number of instances"
}
