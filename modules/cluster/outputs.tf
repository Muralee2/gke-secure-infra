output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "endpoint" {
  value = google_container_cluster.primary.endpoint
}

output "kube_config" {
  value = google_container_cluster.primary.master_auth[0].cluster_ca_certificate
}
