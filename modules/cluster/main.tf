resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  network  = var.network
  subnetwork = var.subnet

  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = false
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }

  master_authorized_networks_config {
    cidr_blocks = [{
      cidr_block   = var.authorized_network
      display_name = "admin"
    }]
  }

  release_channel {
    channel = "REGULAR"
  }
}
