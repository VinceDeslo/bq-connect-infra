output "bucket_instance" {
  value = google_storage_bucket.bigquery_storage
  description = "Configurations of the cloud storage bucket"
}

output "file_instance" {
  value = google_storage_bucket_object.bigquery_storage_csv
  description = "Configurations of the cloud storage CSV file"
}