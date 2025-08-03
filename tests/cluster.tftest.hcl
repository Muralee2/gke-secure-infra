run "cluster_config" {
  command = "plan"
  assert {
    condition     = true
    error_message = "Cluster config plan should succeed"
  }
}
