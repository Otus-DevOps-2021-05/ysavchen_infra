resource "yandex_vpc_network" "app-network" {
  name = var.app_network_name
}

resource "yandex_vpc_subnet" "app-subnet" {
  name           = var.app_subnet_name
  zone           = var.app_zone
  network_id     = yandex_vpc_network.app-network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}
