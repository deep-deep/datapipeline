terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = var.credentials
  project     = var.project
  region      = var.location.region
  zone        = var.location.zone
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
