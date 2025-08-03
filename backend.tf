terraform {
  backend "gcs" {
    bucket = "project-og"
    prefix = "gke-secure-infra"
  }
}
