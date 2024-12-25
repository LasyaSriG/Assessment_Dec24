variable "group_name" {
  description = "The name of the instance group and related resources"
  type        = string
}

variable "instance_template" {
  description = "The self link of the instance template to use for the managed instance group"
  type        = string
}

variable "region" {
  description = "The region in which the resources will be created"
  type        = string
}

variable "zone" {
  description = "The zone in which the resources will be created"
  type        = string
}

variable "target_size" {
  description = "The initial number of instances in the managed instance group"
  type        = number
}

variable "min_size" {
  description = "The minimum number of instances in the instance group for autoscaling"
  type        = number
}

variable "max_size" {
  description = "The maximum number of instances in the instance group for autoscaling"
  type        = number
}

variable "http_health_check_port" {
  description = "The port on which the health check should check for availability"
  type        = number
  default     = 80
}
