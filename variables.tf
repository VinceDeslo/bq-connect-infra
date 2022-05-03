variable "project_id" {
  type = string
  description = "ID of the GCP project"
}

variable "credentials_file" {
  type = string
  description = "GCP service account credentials file"
}

variable "region" {
  type = string
  description = "GCP project region"
}