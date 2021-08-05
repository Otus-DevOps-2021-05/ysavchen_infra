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

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}
