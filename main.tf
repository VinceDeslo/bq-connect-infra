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
  dataset_id = "bq_plants_dataset"
  friendly_name = "bq_plants_dataset"
  location = "NORTHAMERICA-NORTHEAST1"
  description = "A BigQuery dataset for north american plants."
  dependencies = [module.storage-module]
}

module "storage-module" {
  source = "./modules/storage"
  project_id = var.project_id
  bucket_name = "bq_plants_storage"
  location = "NORTHAMERICA-NORTHEAST1"
  file_name = "plants.data.csv"
  source_file = "./data/plants.data.csv"
}

# module "kubernetes-module" {
#   source = "./modules/kubernetes"
# }


