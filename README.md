# Docker Compose Laravel Mongodb

## Introdução

Criação de um ambiente para de desenvolvimento utilizando:

* [Docker](https://www.docker.com)
* [Nginx](http://nginx.org/)
* [PHP 7](https://php-fpm.org)
* [Laravel](https://laravel.com)
* [MongoDB](https://www.mongodb.com)

Para criação do nosso ambiente, será necessário que o Docker e o Docker Compose estejam instalados no nosso sistema Linux.

### Instalação Docker

```bash
# curl -fsSl https://get.docker.com | bash
```

### Instalação Docker Compose

```bash
# curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# chmod 755 /usr/local/bin/docker-compose
```

### Configurando ambiente

No arquivo .env definimos algumas configurações do nosso ambiente:

```bash
APP_DIR=./code
APP_USER=user

DOCKER_ETC=./etc/docker
DOCKER_PHP=Dockerfile.php-fpm
DOCKER_CONSOLE=Dockerfile.console

NGINX_VERSION=latest
NGINX_NAME=web
NGINX_PORT=80
NGINX_CONF=./etc/default.conf

MONGO_VERSION=latest
MONGO_NAME=db
MONGO_PORT=27017
MONGO_DATA=./data
```

Abaixo temos as configurações mais importantes:

- APP_DIR

Define a pasta que ficará o código do Laravel.

- APP_USER

Define o seu usuário utilizado no Linux, com isso todo o conteúdo gerado no console já terá permissão de escrita, não sendo necessário usar chown.

- NGINX_PORT

Define a porta de acesso da aplicação pelo browser.

- MONGO_PORT

Define a porta de acesso ao mongodb.

- MONGO_DATA

Define a pasta onde ficarão os arquivos do MongoDB.


## Comandos

Criei alguns atalhos para manipular os serviços definidos no docker-compose.

> **Nota**:
>
> Os comandos abaixo foram testados apenas no Linux e será necessário instalar o pacote make para funcionar. Em outro sistema operacional terá que utilizar os comandos do docker-compose que se encontram no arquivo Makefile.


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


## Comandos no console

Dentro do console podemos utilizar alguns comandos, abaixo temos alguns:

- Cria um projeto Laravel no diretório /code que foi definido em APP_DIR

```bash
$ create-laravel
```

- Acessa o shell do MongoDB

```bash
$ mongo-cli
```

- Executando funções do Laravel

```bash
$ php artisan migrate
```

- Utilizando o Gerenciador de Dependências do PHP

```bash
$ composer require "laravelcollective/html":"^5.4.0"
```

- Utilizando o Gerenciador de Pacotes do Node

```bash
$ npm install vuex
```
