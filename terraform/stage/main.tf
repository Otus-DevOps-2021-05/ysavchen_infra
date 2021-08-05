provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "app" {
  source            = "../modules/app"
  app_instance_name = var.app_instance_name
  app_disk_image    = var.app_disk_image
  subnet_id         = var.subnet_id
  public_key_path   = var.public_key_path
  private_key_path  = var.private_key_path
}

module "db" {
  source           = "../modules/db"
  db_instance_name = var.db_instance_name
  public_key_path  = var.public_key_path
  db_disk_image    = var.db_disk_image
  subnet_id        = var.subnet_id
}
