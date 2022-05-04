resource "google_bigquery_dataset" "dataset" {
  project = var.project_id
  dataset_id = var.dataset_id
  friendly_name = var.ds_friendly_name
  description = var.ds_description
  location = var.ds_location
  default_table_expiration_ms = 10800000 // three hours

  depends_on = [var.dependencies]
}

resource "google_bigquery_table" "table" {
  project = var.project_id
  dataset_id = var.dataset_id
  table_id = var.table_id
  friendly_name = var.tb_friendly_name
  external_data_configuration {
    autodetect = true
    source_format = "CSV"
    source_uris = [
      "${var.bucket_uri}/${var.tb_data_file_name}"
    ]
  }
  depends_on = [
    google_bigquery_dataset.dataset
  ]
}