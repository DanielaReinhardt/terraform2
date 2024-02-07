variable "project" { 
  description = "The name of the project where this instances will be created." 
  type        = string 
} 
 
variable "zone" { 
  description = "reginal zone of the instance." 
  type        = string 
  default="europe-west3-a" 
} 
 
variable "name" { 
  description = "Region name of the instance." 
  type        = string 
} 
 
variable "instance_type" { 
  description = "The type of the instance." 
  type        = string 
  default="e2-micro" 
} 
 
variable "network" { 
  description = "The network of the instance." 
  type        = string 
  default= "https://www.googleapis.com/compute/v1/projects/de0360-2-sbx-net-spoke-1/global/networks/sbx-spoke-0" 
} 
 
variable "subnetwork" { 
  description = "The subnetwork of the instance." 
  type        = string 
  default=  "https://www.googleapis.com/compute/v1/projects/de0360-2-sbx-net-spoke-1/regions/europe-west3/subnetworks/sbx-ew3-shared" 
} 
 
variable "image" { 
  description = "The OS image of the instance." 
  type        = string 
  default=  "projects/de0360-prd-dso-bravo-prod/global/images/devsecops-rhel9-20240129" 
} 
 
variable "size" { 
  description = "The size of the boot disk." 
  type        = number 
  default=  20 
} 
