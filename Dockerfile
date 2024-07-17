From ddev/ddev-webserver:v1.23.3

RUN apt update && apt install -y autoconf zlib1g-dev php8.2-dev php-pear \
  && pecl -d  php_suffix=8.2 install grpc \
  && pecl -d  php_suffix=8.2 install protobuf \
  && sed -i '/\; Dynamic Extensions \;/a extension=grpc.so\nextension=protobuf.so' /etc/php/8.2/cli/php.ini \
  && sed -i '/\; Dynamic Extensions \;/a extension=grpc.so\nextension=protobuf.so' /etc/php/8.2/fpm/php.ini \
