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
5. Отформатированы конфигурационные файлы с terraform fmt
