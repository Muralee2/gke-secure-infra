output "egress_rule" {
  value = google_compute_firewall.egress_to_master.name
}

output "node_to_node_rule" {
  value = google_compute_firewall.node_to_node.name
}
