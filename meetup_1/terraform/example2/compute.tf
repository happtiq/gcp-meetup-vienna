resource "google_project_service" "enable_compute_api" {
  service = "compute.googleapis.com"

  disable_dependent_services = true
}

# Create the mynet-eu-vm instance
module "mynet-eu-vm" {
  source           = "./instance"
  instance_name    = "mynet-eu-vm"
  instance_zone    = var.zone
  instance_network = google_compute_network.demo_network.self_link
}
