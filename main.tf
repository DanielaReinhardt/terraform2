provider "google" {
  project = "de0360-sbx-data-academy-dr"  # Ihr Google Cloud Projekt-ID
  region  = "europe-west3"                # Region, in der die VM erstellt werden soll
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_terraform2
  machine_type = var.e2_micro
  zone         = "europe-west3-c"
  
  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20240110"   # Beispiel-Image, bitte anpassen
    }
  }

  network_interface {
    network = "projects/de0360-2-sbx-net-spoke-1/global/networks/sbx-spoke-0"  # Beispiel-Netzwerk, bitte anpassen
    access_config {}
  }
}
