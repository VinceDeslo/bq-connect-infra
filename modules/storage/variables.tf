// TODO

variable project_id {
  type = string
  description = "ID of the GCP project"
}

variable bucket_name {
  type = string
  description = "Name of the cloud storage bucket"
}

variable location {
  type = string
  description = "Region of the cloud storage bucket"
}

variable source_file {
  type = string
  description = "File used to seed the CSV storage"
}

variable file_name {
  type = string
  description = "Name of the cloud storage CSV"
}