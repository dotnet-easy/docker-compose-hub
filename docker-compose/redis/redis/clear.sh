#!/bin/bash

docker service rm redis-service_redis

sleep 5s

docker network rm redis-service_swarm_net

sleep 5s

docker volume rm redis-service_redis



