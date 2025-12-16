###cloud vars

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

###common vars
variable "vms_ssh_id_ed_public_root_key" {
  type        = string
  default     = "your_ssh_ed25519_key"
  sensitive = true
  description = "ssh-keygen -t ed25519"
}

variable "vms_ssh_id_rsa_public_root_key" {
  type        = string
  default     = "your_ssh_rsa_key"
  sensitive = true
  description = "ssh-keygen -t rsa -b 4096"
}

variable "vm_metadata_base" {
  description = "Базовые статические метаданные для ВМ."
  type        = map(string)
  default = {
    "serial-port-enable" = "1"
  }
}

variable "vm_image_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "Семейство образа для ВМ."
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Признак прерываемой ВМ."  
}

variable "public_ip" {
  type        = bool
  default     = true
  description = "Выделять публичный IP для ВМ."
}

variable "env_name_m_vm" {
  type        = string
  default     = "vm"
  description = "env_name для модуля m_vm."
}

variable "instance_name_m_vm" {
  type        = string
  default     = "marketing"
  description = "instance_name для модуля m_vm."
}

variable "env_name_a_vm" {
  type        = string
  default     = "vm"
  description = "env_name для модуля a_vm."
}

variable "instance_name_a_vm" {
  type        = string
  default     = "analytic"
  description = "instance_name для модуля m_vm."
}

variable "vm_disk_size" {
  type        = number
  default     = 10
  description = "Размер диска ВМ в ГБ."
}

variable "vm_disk_type" {
  type        = string
  default     = "network-ssd"
  description = "Тип диска ВМ."
}

variable "hdd" {
  type        = string
  default     = "network-hdd"
  description = "Тип диска (network-hdd, network-ssd)"
}

variable "vm_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Платформа для ВМ."
}

variable "vm_a_core_fraction" {
  type        = number
  default     = 20
  description = "Доля выделенных ресурсов CPU для аналитической ВМ."
}

variable "vm_m_core_fraction" {
  type        = number
  default     = 20
  description = "Доля выделенных ресурсов CPU для маркетинговой ВМ."
}




