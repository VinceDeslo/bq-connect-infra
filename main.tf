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
  project = var.project
  region = var.region
}

module "big-query-module" {
  source = "./modules/big-query"
  project_id = "bqconnect-349116"
  credentials_file = "../../creds/bqconnect-349116-dee41d2a4e8b.json"
  region = "northamerica-northeast1-a"
}

module "storage-module" {
  source = "./modules/storage"
}

module "kubernetes-module" {
  source = "./modules/kubernetes"
}

// Output configured big query module
output "big-query-data" {
  value = module.big-query-module.instance
}