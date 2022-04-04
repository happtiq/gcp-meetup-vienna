provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_storage_bucket" "test_bucket" {
  name     = "${var.project_id}-test-bucket"
  location = var.region

  // Uniform Bucket Level Access through IAM is the recommended way
  uniform_bucket_level_access = true
}
