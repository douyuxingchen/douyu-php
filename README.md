# douyu-php
当你使用PHP+Composer的为SDK安装Vendor依赖服务的时候，这个镜像为你提供了一个便捷的环境，让你能够轻松地运行和管理 PHP 应用程序。以下是这个项目的一些值得关注的亮点。

## HubDocker
- https://hub.docker.com/repository/docker/jefferyjob/douyu-php

## 特性

这个 `douyu-php` 的 Docker 镜像是一个理想选择，因为它能为构建 SDK 统一的依赖提供一个稳定的解决方案。通过使用这个镜像，你能够避免使用不同的 PHP 版本构建不同 SDK 依赖带来的兼容性问题。这个镜像中所包含的 PHP 版本和安装的扩展是根据企业现有运行的项目配置进行精心选择的，具有高度的重合性。这意味着你可以依赖于一个已经经过验证的环境，而不必担心版本不一致或配置不同步的问题。
- **统一依赖解决方案**: 通过使用这个镜像，你可以确保所有的 SDK 都使用同一个环境和依赖，消除了因为不同 PHP 版本或扩展配置导致的兼容性问题。这种一致性能够显著减少开发中的错误和不一致性。
- **基于现有项目配置**: `douyu-php` 中包含的 PHP 版本和扩展都是参考了企业当前正在运行的项目配置而选择的。这意味着这个镜像中的设置与你实际项目中的配置高度重合，让你能够信任其稳定性和可靠性。
- **高度重合性**: 这个镜像不仅仅是一个普通的 PHP 环境，更是一个与现有企业项目高度重合的环境。这意味着你可以放心地使用这个镜像来构建 SDK 依赖，而无需担心环境不一致带来的问题。
通过使用 `douyu-php`，你能够以一种可靠、一致的方式管理和构建 SDK 的依赖，保持与企业项目环境的高度一致性。这将帮助提高开发效率，并大大降低由于环境不一致性而引起的问题。

## 基本使用

### 安装Composer依赖
您可以使用以下命令，在任意项目的根目录为项目或扩展包下载依赖
```bash
docker run -it --rm -v "$(pwd)":/www jefferyjob/douyu-php composer install
```

### 本地cli运行
请将以下方法配置到Mac系统中 `~/.zshrc` 文件后，刷新 `source ~/.zshrc` 即可使用
```bash
php() {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --volume $PWD:/www:rw \
        --workdir /www \
        jefferyjob/douyu-php php "$@"
}
```

测试如下
```bash
libin@bogon ~ % php -v
PHP 7.3.33 (cli) (built: Mar 17 2022 17:55:03) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.33, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.33, Copyright (c) 1999-2018, by Zend Technologies
```

## 使用指南
请参阅我们的完整[文档](docs)以了解如何使用此库、添加新服务类、处理状态和错误等更多详细信息。

## 版权和许可
本项目基于 [GPL-3.0] 许可证。请查阅 LICENSE 文件以获取更多信息。
