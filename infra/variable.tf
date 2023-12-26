variable "location" {
  default = {
    "region" = "us-central1",
    "zone"   = "us-central1-a"
  }
}

variable "project" {
  type = string
}


variable "credentials" {
  type = string
}