resource "google_compute_instance" "my-vm" { 
  project       = var.project 
  name          = var.name 
  machine_type =  var.instance_type 
  zone         =  var.zone 
 
  # Use specific image 
  boot_disk { 
             initialize_params { 
              image  = var.image 
              size   = var.size 
             } 
  } 
 
  # use specific network 
  network_interface { 
    network    = var.network 
    subnetwork = var.subnetwork 
  } 
} 

