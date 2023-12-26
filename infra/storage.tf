resource "google_storage_bucket" "data" {
  name          = "my-data-bucket-0"
  location      = var.location.region
  force_destroy = true
}