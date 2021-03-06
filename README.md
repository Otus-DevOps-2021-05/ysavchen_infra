# ysavchen_infra
ysavchen Infra repository

### Домашнее задание №5 - Packer
1. Установлен Packer
2. Создан сервисный аккаунт для Packer в Yandex Cloud
3. Создан образ диска с ruby и mongodb
4. Запущено и проверено приложение reddit
5. Параметризирован шаблон для Packer

### Домашнее задание №6 - Terraform-1
1. Установлен Terraform
2. Сделана конфигурация для одной VM (provider, resource)
3. Добавлены outputs.tf, чтобы выводить ip созданной VM
4. Добавлены provisioners для деплоя приложения на VM
5. Добавлены variables.tf и terraform.tfvars для параметризации скриптов конфигурации
6. Отформатированы конфигурационные файлы с terraform fmt

### Домашнее задание №7 - Terraform-2
1. Изменены скрипты Packer, чтобы app и db были на разных VM
2. Добавлены модули Terraform для app и db
3. Добавлены директории для окружений stage и prod
4. Параметризована конфигурация, чтобы можно было одновременно создать VM для stage и prod
5. Настроено хранение state файла в удаленном бекенде для stage и prod
6. Отформатированы конфигурационные файлы с terraform fmt

### Домашнее задание №8 - Ansible-1
1. Установлен Ansible
2. Создан inventory (inventory.yml) с ip-адресами серверов
3. Добавлен ansible.cfg для настройки Ansible (user, keys, path to inventory)
4. Создан ansible-playbook (clone.yml) с описанием задачи в виде yaml

### Домашнее задание №9 - Ansible-2
1. Создан playbook c конфигурацией app, db и деплоя
2. Playbook c одним сценарием (play) разбит на несколько сценариев (plays)
3. Playbook reddit_app_multiple_plays разбит на несколько playbooks - app.yml, db.yml, deploy.yml
4. Изменены скрипты Packer, чтобы для установки Ruby и MongoDB использовался Ansible

### Домашнее задание №10 - Ansible-3
1. Конфигурация app и db вынесена в роли
2. Добавлена конфигурация для prod и stage environemnts
3. Добавлена community-роль jdauphant.nginx для проксирования запросов
4. Настроено шифрование user credentials с помощью Ansible Vault

### Домашнее задание №10 - Ansible-4
1. Установлен VirtualBox и Vagrant
2. Добавлен Vagrantfile для управления VirtualBox
3. Добавлены провижинеры для конфигурации VM
4. Переработаны роли app и db
5. Протестирована db роль
