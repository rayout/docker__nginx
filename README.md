Если нужно передать свой конфиг?

Можно передать вот так. (заменить текущий конфиг). Либо другое название файла, и тогда добавит.
```
    nginx:
        image: gitlab.kodeks.ru:4567/docker/nginx
        volumes:
            - ./docker/nginx/site.conf:/etc/nginx/sites-available/site.conf
        command: nginx        
```        