FROM php:fpm-alpine
RUN apk add --no-cache libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev && docker-php-ext-configure opcache --enable-opcache && docker-php-ext-install opcache && docker-php-ext-install gd && apk del libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev
