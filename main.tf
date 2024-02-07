provider "google" {
  project = "de0360-sbx-data-academy-dr"  # Ihr Google Cloud Projekt-ID
  region  = "europe-west3"                # Region, in der die VM erstellt werden soll
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance-terraform2
  machine_type = var.e2_micro
  zone         = "europe-west3"
  
  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240110"   # Beispiel-Image, bitte anpassen
    }
  }

  network_interface {
    network = "sbx-spoke-0"  # Beispiel-Netzwerk, bitte anpassen
    access_config {}
  }
}
