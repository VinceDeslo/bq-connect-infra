variable project_id {
  type = string
  description = "ID of the GCP project"
}

variable location {
  type = string
  description = "Region of the artifacts repository"
}

variable repository_id {
  type = string
  description = "ID of the artifacts repository"
}

variable repository_description {
  type = string 
  description = "Description of the artifacts repository"
}

variable repository_format {
  type = string 
  description = "Format of the artifacts in the repository"
}

variable account_id {
  type = string
  description = "ID of the artifacts repository service account"
}

variable account_display {
  type = string
  description = "Name of the artifacts repository service account"
}

variable account_role {
  type = string
  description = "IAM role of the artifacts repository service account"
}
