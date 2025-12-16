
#output
output "network_id" {
  description = "ID созданной VPC сети."
  value       = yandex_vpc_network.network.id
}

output "subnet_id" {
  description = "ID созданной подсети."
  value       = yandex_vpc_subnet.subnet.id
}