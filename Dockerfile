FROM php:7.3-alpine

# 下载并安装 Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# 设置 Composer 镜像源为国内源，提高下载速度（可选）
# RUN composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

# 显示 Composer 版本信息
RUN composer --version

# 设置工作目录
WORKDIR /www

# 声明容器启动时执行的命令（可选）
# CMD ["php", "-S", "0.0.0.0:8000"]
