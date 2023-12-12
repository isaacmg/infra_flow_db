resource "google_storage_bucket" "flow_data" {
  name          = "flow_hydro_2_data"
  location      = "us-west2"
  force_destroy = true
  uniform_bucket_level_access = true
}