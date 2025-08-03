run "firewall_plan" {
  command = plan

  assert {
    condition     = plan.exit_code == 0
    error_message = "Firewall rules plan failed"
  }
}
