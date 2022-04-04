# Create the mynetwork network
resource "google_compute_network" "demo_network" {
  name                    = "demo-network"
  auto_create_subnetworks = true

  depends_on = [google_project_service.enable_compute_api]
}

# Add a firewall rule to allow HTTP, SSH, RDP, and ICMP traffic on mynetwork
resource "google_compute_firewall" "demo_network_allow_http_ssh_rdp_icmp" {
  name    = "mynetwork-allow-http-ssh-rdp-icmp"
  network = google_compute_network.demo_network.self_link
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "3389"]
  }
  allow {
    protocol = "icmp"
  }
  source_ranges = ["0.0.0.0/0"]
}
