# Ресурс: Виртуальная сеть (Network)
resource "yandex_vpc_network" "network" {
  name = var.network_name
}

# Ресурс: Подсеть (Subnet)
resource "yandex_vpc_subnet" "subnet" {
  name           = var.subnet_name
  network_id     = yandex_vpc_network.network.id # Привязка к созданной сети
  v4_cidr_blocks = [var.subnet_cidr]
  zone           = var.zone
}


