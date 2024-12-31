resource "yandex_compute_instance" "vm-1" {
#  name = "std-ext-010-xx"

 name = "vm_03"

  # Конфигурация ресурсов:
  # количество процессоров и оперативной памяти
  resources {
    cores  = 2
    memory = 2
  }

  # Загрузочный диск:
  # здесь указывается образ операционной системы
  # для новой виртуальной машины
  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = 56
      type     = "network-ssd"
    }
  }

  # Сетевой интерфейс:
  # нужно указать идентификатор подсети, к которой будет подключена ВМ
  network_interface {
    subnet_id = var.subnet_id
    #network_id = "enpc4mbcqpdj7fv95467"
    #nat = false
    nat = true
  }
  # Метаданные машины:
  # здесь можно указать скрипт, который запустится при создании ВМ
  # или список SSH-ключей для доступа на ВМ
  metadata = {
    user-data = "${file("./modules/tf-yc-instance/meta.txt")}"
    serial-port-enable = "1"
  }
}
