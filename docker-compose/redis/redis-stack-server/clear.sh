#!/bin/bash

docker service rm redis-stack-server-service_redis-stack-server

sleep 5s

docker network rm redis-stack-server-service_swarm_net

sleep 5s

docker volume rm redis-stack-server-service_redis-stack-server