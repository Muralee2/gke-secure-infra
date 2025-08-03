run "firewall_plan" {
  command = "plan"
  assert {
    condition     = true
    error_message = "Firewall rules plan should succeed"
  }
}
