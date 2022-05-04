resource "google_storage_bucket" "bigquery_storage" {
  name = var.bucket_name
  project = var.project_id
  location = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}

resource "google_storage_bucket_object" "bigquery_storage_csv" {
  name = var.file_name
  source = var.source_file
  bucket = var.bucket_name
  depends_on = [
    google_storage_bucket.bigquery_storage
  ]
}