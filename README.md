# Задание Спринт 11

## Выполнил Кривулец В.Г., когорта 07 (1 Января 2025)

## Краткое описание инфраструктуры и что сделано.
Задание выполнено в Яндекс.Облаке
При помощи Terraform созданы три виртуальные машины

std-ext-010-91.praktikum-services.tech
std-ext-010-92.praktikum-services.tech
std-ext-010-93.praktikum-services.tech

| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |

## Установка Terraform.



## Установка Ansible. 
### Обновим и установим пакеты:
```
sudo apt update && apt install ansible sshpass -y 
```
### Создаем плейбук с именем playbook.yaml

### Создаем две роли 
```
ansible-galaxy init default_packages
ansible-galaxy init nginx_custom 
```

