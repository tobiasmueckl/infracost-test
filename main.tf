terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  project     = "my-demo-project"
  region      = "europe-west3"
}

resource "google_sql_database_instance" "main" {
  name             = "demo-db-instance"
  database_version = "POSTGRES_14"
  region           = "europe-west3"

  settings {
    tier = "db-f1-micro"
    disk_size = 200
  }
}
