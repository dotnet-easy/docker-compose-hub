#!\bin\bash

mkdir -p /etc/consul
\cp ../config/watchs.json /etc/consul/watchs.json -f
docker-compose up -d