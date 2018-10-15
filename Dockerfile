FROM php:fpm-alpine
RUN \
	apk add --no-cache libpng libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev libmcrypt-dev && \
	pecl install mcrypt-1.0.1 && \n
	docker-php-ext-install gd && \
	docker-php-ext-install mcrypt && \
	apk del libpng-dev libjpeg-turbo-dev libwebp-dev zlib-dev libxpm-dev libmcrypt-dev && \
	docker-php-ext-install opcache && \
	docker-php-ext-install mysqli && \
	docker-php-ext-install pdo_mysql && \
	docker-php-ext-install bcmath && \
	docker-php-ext-install xsl && \
	docker-php-ext-install intl && \
	docker-php-ext-install soap && \
	docker-php-ext-install zip && \
	docker-php-ext-enable gd && \
	docker-php-ext-enable mcrypt && \
	docker-php-ext-enable opcache && \
	docker-php-ext-enable mysqli && \
	docker-php-ext-enable pdo_mysql && \
	docker-php-ext-enable bcmath && \
	docker-php-ext-enable xsl && \
	docker-php-ext-enable intl && \
	docker-php-ext-enable soap && \
	docker-php-ext-enable zip
