# Информация о сети
output "network_id" {
  description = "Идентификатор созданной VPC сети"
  value       = yandex_vpc_network.network.id
}

output "network_name" {
  description = "Имя созданной VPC сети"
  value       = yandex_vpc_network.network.name
}

# Информация о подсети
output "subnet_id" {
  description = "Идентификатор созданной подсети"
  value       = yandex_vpc_subnet.subnet.id
}

output "subnet_name" {
  description = "Имя созданной подсети"
  value       = yandex_vpc_subnet.subnet.name
}

output "subnet_zone" {
  description = "Зона доступности, в которой создана подсеть"
  value       = yandex_vpc_subnet.subnet.zone
}

output "subnet_cidr" {
  description = "CIDR блок подсети"
  value       = yandex_vpc_subnet.subnet.v4_cidr_blocks
}

# Полезно для отладки: выводит весь объект целиком
output "vpc_full_info" {
  description = "Полная информация о созданной сети (объект)"
  value       = yandex_vpc_network.network
  sensitive   = false # Можно поставить true, если там есть секреты
}