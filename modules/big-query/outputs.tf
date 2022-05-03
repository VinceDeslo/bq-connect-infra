output "instance" {
  value = google_bigquery_dataset.dataset
  description = "Contents of the BigQuery dataset"
}