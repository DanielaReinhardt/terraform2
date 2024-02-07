# [START google_storage_bucket] 


variable project {} 
variable name {} 
variable location {} 

resource "google_compute_instance" "test_bucket" {
  project      = var.project
  name         = var.project 
  location     = var.location
  
  }
# [END google_storage_bucket] 
