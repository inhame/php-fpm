FROM php:fpm-alpine
RUN \
	apk add --no-cache libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev && \
	docker-php-ext-install gd && \
	apk del libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev && \
	docker-php-ext-install opcache && \
	docker-php-ext-install mysqli && \
	docker-php-ext-install pdo_mysql && \
	docker-php-ext-enable gd && \
	docker-php-ext-enable opcache && \
	docker-php-ext-enable mysqli && \
	docker-php-ext-enable pdo_mysql
