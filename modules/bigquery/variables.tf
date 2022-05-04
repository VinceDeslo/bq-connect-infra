variable project_id {
  type = string
  description = "ID of the GCP project"
}

variable dataset_id {
  type = string
  description = "ID of the BigQuery dataset"
}

variable friendly_name {
  type = string
  description = "Name of the BigQuery dataset"
}

variable location {
  type = string
  description = "Location of the BigQuery dataset"
}

variable description {
  type = string
  description = "Description of the BigQuery dataset"
}

variable dependencies {
  type = any
  description = "Module dependency array"
  default = []
}