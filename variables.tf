variable "project_id" {
  type = string
  description = "ID of the GCP project"
  default = "bqconnect-349116"
}

variable "credentials_file" {
  type = string
  description = "GCP service account credentials file"
  default = "./creds/bqconnect-349116-dee41d2a4e8b.json"
}

variable "region" {
  type = string
  description = "GCP project region"
  default = "northamerica-northeast1-a"
}

variable "data_file_name" {
  type = string
  description = "Name of the data file"
  default = "video_games.csv"
}