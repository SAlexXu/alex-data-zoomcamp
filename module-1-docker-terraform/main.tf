terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.17.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = "alex-dataengineer-zoomcamp"
  region      = "europe-west4-c"
}

resource "google_storage_bucket" "auto-expire" {
  name          = var.project
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "demo_alex_dataset" {
  dataset_id = var.var_test_dataset_name
  location   = var.location
}