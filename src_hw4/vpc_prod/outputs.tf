output "network_id" {
  value = yandex_vpc_network.prod_network.id
}

output "subnet_ids" {
  description = "Карта ID подсетей, где ключ — зона"
  value       = { for k, v in yandex_vpc_subnet.subnet : k => v.id }
}