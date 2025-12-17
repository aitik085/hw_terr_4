module "vpc_prod" {
  source   = "./vpc_prod"
  env_name = "production"
  subnets  = [
    { zone = var.default_zone, cidr = var.default_cidr[0] },
    { zone = var.zone_b, cidr = var.default_cidr[1] },
    { zone = var.zone_c, cidr = var.default_cidr[2] },
  ]
}

# ID сети берем из модуля
#  network_id   = module.vpc_prod.network_id

# Выбираем ID подсети из карты по ключу зоны
# Мы берем значение из карты и оборачиваем в [], так как модуль VM ждет список (list)
# subnet_ids   = [module.vpc_prod.subnet_ids[var.default_zone]]