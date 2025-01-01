# Задание Спринт 11

## Выполнил Кривулец В.Г., когорта 07 (1 Января 2025)

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

