provider "google" {
  project = "hydro-earthnet-db"
  region  = "us-central1"
  zone    = "us-central1-c"
}

module "buckets" {
 source = "./buckets"
}