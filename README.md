# Docker Compose Laravel Mongodb

## Introdução

Criação de um ambiente para de desenvolvimento utilizando:

* [Docker](https://www.docker.com)
* [Nginx](http://nginx.org/)
* [PHP 7](https://php-fpm.org)
* [Laravel](https://laravel.com)
* [MongoDB](https://www.mongodb.com)


## Comandos

Criei alguns atalhos para manipular os serviços definidos no docker-compose.

> **Nota**:
>
> Os comandos abaixo foram testados apenas no Linux e será necessário instalar o pacote make para funcionar. E outro sistema operacional terá que utilizar os comando do docker-compose que se encontram no arquivo Makefile.


- Para subir os serviços

```bash
$ make up
```

- Para derrubar os serviços

```bash
$ make down
```

- Para dar restart nos serviços

```bash
$ make restart
```

- Para listar os serviços

```bash
$ make ps
```

- Para verificar os logs

```bash
$ make logs
```

- Para acessar o console (executar comandos do Laravel)

```bash
$ make console
```
