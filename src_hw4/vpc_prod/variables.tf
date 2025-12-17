variable "env_name" {
  description = "Имя окружения (например, production)"
  type        = string
}

variable "subnets" {
  description = "Список подсетей с указанием зон и CIDR"
  type = list(object({
    zone = string
    cidr = string
  }))
}