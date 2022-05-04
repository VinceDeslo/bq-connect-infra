variable project_id {
  type = string
  description = "ID of the GCP project"
}

variable dataset_id {
  type = string
  description = "ID of the BigQuery dataset"
}

variable ds_friendly_name {
  type = string
  description = "Name of the BigQuery dataset"
}

variable ds_location {
  type = string
  description = "Location of the BigQuery dataset"
}

variable ds_description {
  type = string
  description = "Description of the BigQuery dataset"
}

variable table_id {
  type = string
  description = "ID of the BigQuery table"
}

variable tb_friendly_name {
  type = string
  description = "Name of the BigQuery table"
}

variable tb_data_file_name {
  type = string
  description = "Name of the data file used as a source URI"
}

variable dependencies {
  type = any
  description = "Module dependency array"
  default = []
}

variable bucket_uri {
  type = string
  description = "URI of the cloud storage bucket"
}