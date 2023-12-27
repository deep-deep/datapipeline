terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

terraform {
  backend "gcs" {
    bucket  = "terraform-backend-2023-12-26"
    prefix  = "terraform/state"
    credentials = "backend-key.json"
  }
}


provider "google" {
  credentials = var.credentials
  project     = var.project
  region      = var.region
  zone        = var.zone
}

#resource "google_compute_network" "vpc_network" {
#  name = "datapipeline-network"
#}

#
resource "google_storage_bucket" "data" {
  name          = "my-bucket-2023-12-26"
  location      = var.region
  force_destroy = true
}