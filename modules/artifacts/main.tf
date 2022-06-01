resource "google_artifact_registry_repository" "artifacts-repo" {
  provider = google-beta
  
  project = var.project_id
  location = var.location
  repository_id = var.repository_id
  description = var.repository_description
  format = var.repository_format
}

resource "google_service_account" "artifacts-account" {
  provider = google-beta

  project = var.project_id
  account_id   = var.account_id
  display_name = var.account_display
}

resource "google_service_account_key" "artifacts-account-key" {
  service_account_id = google_service_account.artifacts-account.name
}

resource "local_file" "artefacts-account-key" {
  filename = "${path.module}/../../creds/artefacts-key.json"
  content = "${base64decode(google_service_account_key.artifacts-account-key.private_key)}"
}

resource "google_artifact_registry_repository_iam_member" "artifacts-iam" {
  provider = google-beta

  project = google_artifact_registry_repository.artifacts-repo.project
  location = google_artifact_registry_repository.artifacts-repo.location
  repository = google_artifact_registry_repository.artifacts-repo.name
  role   = var.account_role
  member = "serviceAccount:${google_service_account.artifacts-account.email}"

  depends_on = [
    google_artifact_registry_repository.artifacts-repo,
    google_service_account.artifacts-account
  ]
}