output "module_internal_ip" {
  value = module.yandex_compute_instance.ip_address
}

output "module_external_ip" {
  value = module.yandex_compute_instance.external_ip
}

output "module_vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = module.yandex_cloud_network.yandex_vpc_subnets
}
