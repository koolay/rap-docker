# 使用docker搭建 [rap](https://github.com/thx/RAP)服务器

- [confd](https://github.com/kelseyhightower/confd) 工具设置容器mysql、redis连接参数。

## 怎么运行？

> 先安装好docker和docker compose

1、 运行容器

```
git clone https://github.com/koolay/rap.git
cd rap
sudo docker build -t rap .
sudo docker-compose up -d

```

2、 初始化数据库

连接数据库(127.0.0.1:3306), 运行脚本 `https://github.com/thx/RAP/blob/v0.14.1/src/main/resources/database/initialize.sql`  

3、 访问

`http://localhost:8080`  
