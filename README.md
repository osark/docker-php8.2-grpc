# PHP 8.2 with gRPC extension

Based on DDEV webserver v1.23.3

## Specs

* PHP 8.2 (cli-fpm)
* NginX
* pcel
* pecl installed grpc
* pecl installed protobuf

## Image

https://hub.docker.com/repository/docker/arkdevnet/docker-php8.2-grpc/general

## Usage

Add the following line to `.ddev/config.yml` 

```yml
webimage: arkdevnet/docker-php8.2-grpc:1.23.3
```

In your PHP project:

```bash
composer require "grpc/grpc:^1.38"
```

## Reference

https://cloud.google.com/php/grpc
