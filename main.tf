terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project = var.project_id
  region = var.region
}

module "bigquery-module" {
  source = "./modules/bigquery"
  project_id = var.project_id
  dataset_id = "bigquery-dataset"
  friendly_name = "bigquery-dataset"
  location = "NORTHAMERICA-NORTHEAST1"
  description = "A BigQuery dataset for north american plants."
}

module "storage-module" {
  source = "./modules/storage"
  project_id = var.project_id
  bucket_name = "bigquery-storage"
  location = "NORTHAMERICA-NORTHEAST1"
  name = "plants.data.csv"
  source_file = "../../data/plants.data.csv"
}

module "kubernetes-module" {
  source = "./modules/kubernetes"
}

output "bigquery-module" {
  value = module.bigquery-module.instance
}

output "cloud-storage-bucket" {
  value = module.storage-module.bucket_instance
}

output "cloud-storage-file" {
  value = module.storage-module.file_instance
}

