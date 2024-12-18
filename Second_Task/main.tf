provider "google" {
  project = var.project_id
  region  = var.region
}

# VPC Module
module "vpc" {
  source         = "./modules/vpc"
  vpc_name       = "custom-vpc"
  subnet_name    = "custom-subnet"
  subnet_region  = var.region
  subnet_ip_cidr = "10.0.0.0/16"
}

# Service Account Module
module "service_account" {
  source         = "./modules/service_account"
  account_id     = "helloworld-sa"
  display_name   = "Hello World Service Account"
}

# Instance Template Module
module "instance_template" {
  source        = "./modules/instance_template"
  instance_name = "helloworld-instance-template"
  machine_type  = "e2-micro"
  network       = module.vpc.subnet_link
  service_account_email = module.service_account.email
}

# Instance Group Module (with Auto-scaling)
module "instance_group" {
  source            = "./modules/instance_group"
  group_name        = "helloworld-instance-group"
  region            = var.region
  instance_template = module.instance_template.self_link
  target_size       = 2
  min_size          = 1
  max_size          = 5
}

# Load Balancer Module
module "load_balancer" {
  source        = "./modules/load_balancer"
  backend_group = module.instance_group.instance_group_link
  health_check  = module.instance_group.health_check_link
}

output "load_balancer_ip" {
  value       = module.load_balancer.lb_ip
  description = "The IP address of the Load Balancer"
}
