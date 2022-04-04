// Database Instance
resource "google_sql_database_instance" "postgres1" {
  name             = "${var.project_id}-postgres1"
  database_version = "POSTGRES_13"

  project = var.project_id
  region  = var.region

  settings {
    tier = "db-g1-small"
    backup_configuration {
      enabled    = true
      start_time = "01:00"
      backup_retention_settings {
        retained_backups = 7
      }
    }
  }

  # deletion_protection = false
}

// Database for Testing
resource "google_sql_database" "postgres1_test_database" {
  name     = "test_database"
  instance = google_sql_database_instance.postgres1.name

  project = var.project_id
}
