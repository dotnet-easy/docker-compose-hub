# docker-compose使用说明



使用前需要先初始化网络，可以基于`docker-swarm`实现跨机器分布式部署

```shell
# 集群初始化
docker swarm init
# 创建名为swarm_net的网络
docker network create --driver=overlay --attachable swarm_net
```

> install.sh 一键安装 docker docker-compose 基本上能支持的操作全支持了
```shell
chmod -R 777 install.sh 
sh install.sh
```
