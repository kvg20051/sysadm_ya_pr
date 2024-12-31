provider "yandex" {
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone_id
  service_account_key_file = "./authorized_key.json"
}
