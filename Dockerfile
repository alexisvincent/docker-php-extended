FROM php:7.0-fpm
MAINTAINER Alexis Vincent <alexis@alexisvincent.io>

# Install modules
RUN apt-get update && apt-get install -y zlib1g-dev \
		&& rm -rf /var/lib/apt/lists/* \
		&& docker-php-ext-install mbstring pdo pdo_mysql zip
