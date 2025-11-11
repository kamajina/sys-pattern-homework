# Домашнее задание к занятию "`«HAproxy»`" - `grr`
### Задание 1
```
listen stats  # веб-страница со статистикой
        bind                    :888
        mode                    http
        stats                   enable
        stats uri               /stats
        stats refresh           5s
        stats realm             Haproxy\ Statistics



frontend tcp_front

        bind :8088
        mode tcp
        default_backend tcp_servers

backend tcp_servers

        mode tcp
        balance roundrobin
        option tcp-check

        server s1 127.0.0.1:8888 check inter 3s
        server s2 127.0.0.1:9999 check inter 3s
```
[!1](./haproxy1.png)
### Задание 1
