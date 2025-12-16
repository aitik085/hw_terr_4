#variable
variable "network_name" {
  description = "Имя для создаваемой VPC сети."
  type        = string
}

variable "subnet_name" {
  description = "Имя для создаваемой подсети."
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR блок для подсети (например, 10.10.0.0/24)."
  type        = string
}

variable "zone" {
  description = "Зона доступности, в которой будет создана подсеть (например, ru-central1-a)."
  type        = string
}