<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >1.12.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_vpc_network.network](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_network) | resource |
| [yandex_vpc_subnet.subnet](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/vpc_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Имя для создаваемой VPC сети. | `string` | n/a | yes |
| <a name="input_subnet_cidr"></a> [subnet\_cidr](#input\_subnet\_cidr) | CIDR блок для подсети (10.10.0.0/24). | `string` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Имя для создаваемой подсети. | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Зона доступности, в которой будет создана подсеть (ru-central1-a). | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | Идентификатор созданной VPC сети |
| <a name="output_network_name"></a> [network\_name](#output\_network\_name) | Имя созданной VPC сети |
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | CIDR блок подсети |
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | Идентификатор созданной подсети |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Имя созданной подсети |
| <a name="output_subnet_zone"></a> [subnet\_zone](#output\_subnet\_zone) | Зона доступности, в которой создана подсеть |
| <a name="output_vpc_full_info"></a> [vpc\_full\_info](#output\_vpc\_full\_info) | Полная информация о созданной сети (объект) |
<!-- END_TF_DOCS -->