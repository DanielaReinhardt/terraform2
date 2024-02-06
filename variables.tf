variable "instance_terraform2" {
  description = "Name der VM-Instanz"
  type        = string
  default     = "instance-terraform2"  
}

variable "e2_micro" {
  description = "Maschinentyp für die VM"
  type        = string
  default     = "e2-micro"  
}

variable "europe-west3-c" {
  description = "Zone für die VM"
  type        = string
  default     = "europe-west3-c"
}

