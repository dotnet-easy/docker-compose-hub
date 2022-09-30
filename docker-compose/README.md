# docker-compose使用说明



使用前需要先初始化网络，可以基于`docker-swarm`实现跨机器分布式部署

```shell
# 集群初始化
docker swarm init
# 创建名为swarm_net的网络
docker network create --driver=overlay --attachable swarm_net
```

