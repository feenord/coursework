# coursework
## Создание процесса непрерывной поставки для приложения с применением Практик CI/CD.
# 1. Приложение "Search Engine Crawler".
# 2. Web - intarface "Search Engine UI".
# 3. Monitoring tool - "Prometheus + Grafana".
# 4. Список необходимого ПО для реализации проекта.
# 5. Запуск.
![Tux, the Linux mascot](./images/scheme.png)
## 1.1 - Описание -
Поисковый бот для сбора текстовой информации с веб-страниц и ссылок.
Бот помещает в очередь url переданный ему при запуске. 
Затем он начинает обрабатывать все url в очереди. 
Для каждого url бот загружает содержимое страницы, записывая в БД связи между сайтами, между сайтами и словами. 
Все найденые на странице url помещает обратно в очередь.
![Tux, the Linux mascot](./images/scheme2.png)
![Tux, the Linux mascot](./images/scheme3.png)
# 2.1 - Описание -
Веб-интерфейс поиска слов и фраз на проиндексированных ботом сайтах.
Веб-интерфейс минимален, предоставляет пользователю строку для запроса и результаты. 
![Tux, the Linux mascot](./images/image_search.png)
# 3.1 - Описание - Prometheus собирает метрики по адресу http://51.250.85.217:8000/metrics
![Tux, the Linux mascot](./images/image_metrics.png)
# 3.2 - Grafana - на основе метрик собранных Prometheus выводит информацию на Dashboard's
Посмотреть можно тут http://51.250.86.240:3000/d/rjj8LS_7z/metrics?orgId=1
# Login = admin
# Password = 265525
![Tux, the Linux mascot](./images/image_grafana.png)
# 4.1 Список ПО и версии
# 4.2 Для образа приложения "Search Engine Crawler" было использовано:
- Yandex Cloud CLI 0.89.0 linux/amd64
- pip 20.0.2 from /usr/lib/python3/dist-packages/pip (python 3.8)
- Ubuntu 
  DISTRIB_ID=Ubuntu
  DISTRIB_RELEASE=20.04
  DISTRIB_CODENAME=focal
  DISTRIB_DESCRIPTION="Ubuntu 20.04.4 LTS"
- RabbtMQ - 3.8.2
- MONGODB - 3.6.8
# 4.3 Для образа web intarface - "Search Engine UI" было использовано:
- Yandex Cloud CLI 0.89.0 linux/amd64
- pip 20.0.2 from /usr/lib/python3/dist-packages/pip (python 3.8)
- Ubuntu 
  DISTRIB_ID=Ubuntu
  DISTRIB_RELEASE=20.04
  DISTRIB_CODENAME=focal
  DISTRIB_DESCRIPTION="Ubuntu 20.04.4 LTS"
# 4.4 Для образа Мониторинга использовалось:
- Yandex Cloud CLI 0.89.0 linux/amd64
- Ubuntu 
  DISTRIB_ID=Ubuntu
  DISTRIB_RELEASE=20.04
  DISTRIB_CODENAME=focal
  DISTRIB_DESCRIPTION="Ubuntu 20.04.4 LTS"
- Grafana Version 8.5.2
- prometheus --version
  prometheus, version 2.31.0
  go version:       go1.17.2
  platform:         linux/amd64
# 4.5 Для разворачивания Образов выше описанных приложений:
- Yandex Cloud CLI 0.89.0 linux/amd64
- Terraform v0.13.7
- Packer - v1.8.0
- git version 2.36.1
- go version go1.18 linux/amd64 (для локальной сборки провайдера yandex.cloud)
- для локальной настройки провайдера яндекс в терраформ использовался данный репозиторий https://github.com/yandex-cloud/terraform-provider-yandex/blob/master/README.md
# 5. How it's work? (Запуск)
## Для того что бы запустить данный проект необходимо:
1. Установить ПО перечисленное в пункте 4.5 Данного readme
2. выполнить команду ***git clone git@github.com:feenord/coursework.git*** 
3. После завершения процесса клонирования необходимо из корневого каталога "coursework" выполнить запуск скрипта start_deploy.sh
4. Скрипт запускается таким вот образом ***./start_deploy.sh***.
5. Дождаться выполнения скрипта
