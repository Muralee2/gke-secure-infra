remote_state {
  backend = "gcs"
  config = {
    bucket = "your-tfstate-bucket"
    prefix = "gke-secure-infra"
  }
}
