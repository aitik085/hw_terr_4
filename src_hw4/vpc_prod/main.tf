# Создание сети
resource "yandex_vpc_network" "prod_network" {
  name = "${var.env_name}-network"
}

# Создание подсетей через цикл
resource "yandex_vpc_subnet" "subnet" {
  # Преобразуем список в карту, чтобы использовать for_each
  for_each = { for s in var.subnets : s.zone => s }
  name           = "${var.env_name}-subnet-${each.value.zone}"
  zone           = each.value.zone
  network_id     = yandex_vpc_network.prod_network.id
  v4_cidr_blocks = [each.value.cidr]
}
