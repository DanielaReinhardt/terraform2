# [START google_storage_bucket] 


variable project {} 
variable name {} 
variable location {} 

resource "google_compute_instance" "test_instance" {
  project      = var.project
  name         = var.project 
  machine_type = "e2-micro"
  zone         = "europe-west3"
  
  }
# [END google_storage_bucket] 
