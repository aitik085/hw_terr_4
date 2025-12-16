resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "develop" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}

/*
module "vpc_dev" {
  source = "./vpc" # Путь к локальному модулю

  network_name = var.vpc_name
  subnet_name  = "${var.vpc_name}-subnet"
  subnet_cidr  = var.default_cidr[0]
  zone         = var.default_zone
}
*/
data "yandex_compute_image" "ubuntu" {
  family = var.vm_image_family
}

module "analytics_vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = var.env_name_a_vm
  network_id     = yandex_vpc_network.develop.id
  subnet_zones   = [var.default_zone]
  subnet_ids     = [yandex_vpc_subnet.develop.id] # [module.vpc_dev.subnet_id]
  instance_name  = var.instance_name_a_vm
  platform       = var.vm_platform_id
  instance_core_fraction  = var.vm_a_core_fraction  
  image_family   = var.vm_image_family
  public_ip      = var.public_ip  
  boot_disk_size = var.vm_disk_size
  boot_disk_type = var.hdd
  instance_count = 1
  
  labels = { 
    owner= "cr7",
    project = "analytics"
     }
  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = 1
  }
}

#Пример передачи cloud-config в ВМ для демонстрации №3
data "template_file" "cloudinit" {
  template = file("${path.module}/cloud-init.yml") 
  vars = {
    key_ed25519 = var.vms_ssh_id_ed_public_root_key 
    key_rsa     = var.vms_ssh_id_rsa_public_root_key
  }
}

module "marketing_vm" {
  source          = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name        = var.env_name_m_vm 
  network_id      = yandex_vpc_network.develop.id
  subnet_zones    = [var.default_zone]
  subnet_ids      = [yandex_vpc_subnet.develop.id] # [module.vpc_dev.subnet_id]
  instance_name   = var.instance_name_m_vm
  platform        = var.vm_platform_id  
  image_family    = var.vm_image_family
  public_ip       = var.public_ip
  boot_disk_size  = var.vm_disk_size
  boot_disk_type  = var.hdd
  instance_core_fraction = var.vm_m_core_fraction   
  instance_count  = 1

  labels = { 
    owner= "jason_statham",
    project = "marketing"
     }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered #Для демонстрации №3
    serial-port-enable = 1
  }
}

