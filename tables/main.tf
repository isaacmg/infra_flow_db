resource "google_bigquery_dataset" "hydronet" {
  dataset_id                  = "hydronet"
  friendly_name               = "test"
  description                 = "This is a test description"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  project = "hydro-earthnet-db"

  labels = {
    env = "default"
  }
  }

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.hydronet.dataset_id
  table_id   = "gage_meta"
  project = google_bigquery_dataset.hydronet.project

  labels = {
    env = "default"
  }

  schema = "${file("/Users/gisaac/Documents/GitHub/infra_flow_db/tables/schema_meta.json")}"
}