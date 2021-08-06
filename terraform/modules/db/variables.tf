variable db_instance_name {
  description = "Name of db instance"
}

variable instance_zone {
  description = "Zone for db instance"
  default     = "ru-central1-a"
}

variable subnet_id {
  description = "Subnet to attach to db instance"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}
