data "external" "fw" {
  program = ["python3", "${path.module}/scripts/rules.py"]
}

resource "google_compute_firewall" "egress_to_master" {
  name    = "allow-egress-to-master"
  network = var.network
  direction = "EGRESS"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }

  destination_ranges = [data.external.fw.result.egress_to_master_cidr]
}

resource "google_compute_firewall" "node_to_node" {
  name    = "allow-node-to-node"
  network = var.network
  direction = "INGRESS"

  allow {
    protocol = "all"
  }

  source_tags = ["gke-node"]
  target_tags = ["gke-node"]
}
