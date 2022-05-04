output "bigquery-module" {
  value = module.bigquery-module.instance
}

output "cloud-storage-bucket" {
  value = module.storage-module.bucket_instance
}

output "cloud-storage-file" {
  value = module.storage-module.file_instance
  sensitive = true
}