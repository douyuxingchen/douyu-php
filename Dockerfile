FROM php:7.3-alpine

RUN apk update && apk add --no-cache \
    curl \
    git \
    libzip-dev \
    zlib-dev \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev \
    libmcrypt-dev \
    libxml2-dev \
    libxslt-dev \
    openssl-dev \
    openssh \
    bash \
    redis \
    $PHPIZE_DEPS \
    && docker-php-ext-install \
    bcmath \
    pdo \
    pdo_mysql \
    zip \
    gd \
    soap \
    sockets \
    opcache \
    xsl \
    && pecl install redis \
    && docker-php-ext-enable redis

# 下载并安装 Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 设置 Composer 镜像源为国内源，提高下载速度（可选）
# RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

WORKDIR /www