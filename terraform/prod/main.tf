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
    key        = "prod/terraform.tfstate"
    access_key = null
    secret_key = null

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

module "vpc" {
  source           = "../modules/vpc"
  app_network_name = "reddit-app-network"
  app_subnet_name  = "reddit-app-subnet"
}

module "app" {
  source            = "../modules/app"
  app_instance_name = var.app_instance_name
  instance_zone     = var.app_instance_zone
  app_disk_image    = var.app_disk_image
  subnet_id         = module.vpc.vpc_subnet_id
  public_key_path   = var.public_key_path
  private_key_path  = var.private_key_path
}

module "db" {
  source           = "../modules/db"
  db_instance_name = var.db_instance_name
  instance_zone    = var.db_instance_zone
  db_disk_image    = var.db_disk_image
  public_key_path  = var.public_key_path
  subnet_id        = module.vpc.vpc_subnet_id
}
