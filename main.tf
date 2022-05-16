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
  dataset_id = "bq_video_games_dataset"
  ds_friendly_name = "bq_video_games_dataset"
  ds_location = "NORTHAMERICA-NORTHEAST1"
  ds_description = "A BigQuery dataset for video game sales."
  table_id = "bq_video_games_table"
  tb_friendly_name = "bq_video_games_table"
  tb_data_file_name = var.data_file_name
  bucket_uri = module.storage-module.bucket_instance.url
  dependencies = [module.storage-module]
}

module "storage-module" {
  source = "./modules/storage"
  project_id = var.project_id
  bucket_name = "bq_video_games_storage"
  location = "NORTHAMERICA-NORTHEAST1"
  file_name = var.data_file_name
  source_file = "./data/video_games.csv"
}

# module "kubernetes-module" {
#   source = "./modules/kubernetes"
# }


