# [START google_storage_bucket] 


variable project {} 
variable name {} 
variable location {} 

resource "google_compute_instance" "vm_instance" {
  project      = var.project
  name         = var.project 
  location     =var.location
  
  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240110"
    }
  }

  network_interface {
    network = "projects/de0360-2-sbx-net-spoke-1/global/networks/sbx-spoke-0"
    access_config {}
  }
# [END google_storage_bucket] 
