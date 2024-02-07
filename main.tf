variable project {}
variable name {}
variable machine_type {}
variable zone {}
variable image {}
variable network {}

resource "google_compute_instance" "test_instance" {
  project      = var.project
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork
    access_config {}
  }
}
