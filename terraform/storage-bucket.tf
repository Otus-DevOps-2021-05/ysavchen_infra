provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

terraform {
  required_providers {
    yandex = "~> 0.56"
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = null
    region     = null
    key        = "bucket/terraform.tfstate"
    access_key = null
    secret_key = null

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
