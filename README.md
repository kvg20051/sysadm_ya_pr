# Задание Спринт 11

## Выполнил Кривулец В.Г., когорта 07 (1 Января 2025)

## Условие задачи:

1. Разверните с помощью Terraform три виртуальные машины — к ним должен быть доступ по SSH с помощью созданного ранее ключа. Для этого в блоке создания ВМ добавьте код:

2. Ansible также должен подключаться к вашим машинам с помощью указанного SSH-ключа.

3. У Ansible должно быть три роли:
Настройка ВМ: изменение имени машины и установка стандартных — nettools, dns-utils, wget, curl, mc, rsync — пакетов.
Настройка проксирующего Nginx: при подключении на 3000 порт этой машины запросы должны перенаправляться на 80 порт одной из машин с отдающим Nginx.
Настройка отдающего Nginx: он должен отображать страницу с содержимым  Hellow from <имя машины>!. Чтобы создать её, воспользуйтесь примером из урока по Ansible. Имя машины и её группу назначьте с помощью Magic Variable.

## Краткое описание инфраструктуры и что сделано.
Задание выполнено в Яндекс.Облаке
При помощи Terraform созданы три виртуальные машины

| vm name | Description |
| ----------- | ----------- |
| std-ext-010-91.praktikum-services.tech      | proxy, on port 3000 |
| std-ext-010-92.praktikum-services.tech      | web server 1 |
| std-ext-010-93.praktikum-services.tech      | web server 2 |

Все конфигурационные файлы находятся тут
```
https://github.com/kvg20051/sysadm_ya_pr/tree/master
```
Ниже опишем общие шаги для решения задачи.

## Настраиваем Git локально, и доступ к github.com по ssh ключам

## Установливем Terraform
### Скачиваем Terraform

Terraform распространяется как исполняемый файл. И это предельно упрощает установку и использование — достаточно скачать и скопировать его в /usr/bin:
```
wget https://hashicorp-releases.yandexcloud.net/terraform/1.10.3/terraform_1.10.3_linux_amd64.zip
```
### В ~/.terraformrc прописываем

```
provider_installation {
  network_mirror {
    url = "https://terraform-mirror.yandexcloud.net/"
    include = ["registry.terraform.io/*/*"]
  }
  direct {
    exclude = ["registry.terraform.io/*/*"]
  }
}
```

## Установливаем Ansible
### Обновим и установим пакеты:
```
sudo apt update && apt install ansible sshpass -y 
```
### Создаем файл inventory.yaml

### Создаем плейбук с именем playbook.yaml
```
nano playbook.yaml
```

### Создаем две роли 
```
ansible-galaxy init default_packages
ansible-galaxy init nginx_custom 
```

### Запускам playbook
```
ansible-playbook playbook.yaml -i inventory.yaml
```
## Проверки

### Проверяем доступность proxy сервера
```
http://std-ext-010-91.praktikum-services.tech:3000/
```
