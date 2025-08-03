run "cluster_config" {
  command = plan

  assert {
    condition     = plan.exit_code == 0
    error_message = "Cluster config plan failed"
  }
}
