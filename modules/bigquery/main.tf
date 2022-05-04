resource "google_bigquery_dataset" "dataset" {
  project = var.project_id
  dataset_id = var.dataset_id
  friendly_name = var.friendly_name
  description = var.description
  location = var.location
  default_table_expiration_ms = 10800000 // three hours

  depends_on = [
    google_storage_bucket_object.bigquery_storage_csv
  ]
}