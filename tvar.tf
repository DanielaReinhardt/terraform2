project_id    = "de0360-sbx-data-academy-dr" 

zone          = "europe-west3-c" 

name          = "test" 

instance_type = "e2-micro" 

 

# hardened image 

boot_disk = { 

            initialize_params = { 

              image  = "projects/de0360-prd-dso-bravo-prod/global/images/devsecops-rhel9-20240129" 

              size   = 20 

            } 

} 

 

# network of sandbox 

network_interfaces = [{ 

  network    = "https://www.googleapis.com/compute/v1/projects/de0360-2-sbx-net-spoke-1/global/networks/sbx-spoke-0" 

  subnetwork = "https://www.googleapis.com/compute/v1/projects/de0360-2-sbx-net-spoke-1/regions/europe-west3/subnetworks/sbx-ew3-shared" 

}] 

# service_account = null 
