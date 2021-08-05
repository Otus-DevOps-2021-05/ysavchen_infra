variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}

variable app_instance_name {
  description = "Name of app instance"
}

variable db_instance_name {
  description = "Name of db instance"
}

variable instance_zone {
  description = "Zone for yandex_compute_instance"
  default     = "ru-central1-a"
}

variable subnet_id {
  description = "Subnets for modules"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable service_account_key_file {
  description = "key .json"
}

variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
