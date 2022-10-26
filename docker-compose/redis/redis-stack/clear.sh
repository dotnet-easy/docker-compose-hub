#!/bin/bash

docker service rm redis-stack-service_redis-stack

sleep 5s

docker network rm redis-stack-service_swarm_net

sleep 5s

docker volume rm redis-stack-service_redis-stack



