# Define the Google Cloud provider
provider "google" {
  project = "your-project-id"
  region  = "your-region"
}

# Create a Google Cloud Storage bucket
resource "google_storage_bucket" "state_file" {
  name          = "bucket-state-store"
  location      = "us-central1" # Choose your desired location
  storage_class = "STANDARD"

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true

  encryption {
    default_kms_key_name = "projects/your-project-id/locations/global/keyRings/your-key-ring/cryptoKeys/your-key"
  }

  lifecycle_rule {
    condition {
      age = 30 # Or any other condition you want
    }
    action {
      type = "Delete"
    }
  }
}

# Create a Google Cloud Spanner instance
resource "google_spanner_instance" "state_lock_instance" {
  name            = "state-lock-instance"
  config          = "regional-us-central1"
  display_name    = "StateLockInstance"
  num_nodes       = 1
  database_count  = 1
}

# Create a Google Cloud Spanner database
resource "google_spanner_database" "state_lock_database" {
  name       = "state-lock-database"
  instance   = google_spanner_instance.state_lock_instance.name
  ddl        = ["CREATE TABLE StateLock (LockID STRING) PRIMARY KEY (LockID)"]
}
