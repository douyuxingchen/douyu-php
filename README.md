# douyu-php

为PHP的扩展包安装依赖服务的Docker的PHP服务

## 发布镜像
```bash
# 编译
docker build -t douyu-php:latest .

# 重命名
docker tag douyu-php:latest jefferyjob/douyu-php:latest

# 登陆docker
docker login -u jefferyjob

# 发布docker镜像
docker push jefferyjob/douyu-php:latest
```

## 使用指南
请参阅我们的完整[文档](docs)以了解如何使用此库、添加新服务类、处理状态和错误等更多详细信息。

## 版权和许可
本项目基于 [GPL-3.0] 许可证。请查阅 LICENSE 文件以获取更多信息。