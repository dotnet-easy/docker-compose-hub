#!\bin\bash

mkdir -p /etc/apisix/dashboard_conf
mkdir -p /etc/apisix/apisix_conf
\cp ./dashboard_conf/conf.yaml /etc/apisix/dashboard_conf/conf.yaml -f
\cp ./apisix_conf/config.yaml /etc/apisix//apisix_conf/config.yaml -f
docker-compose up -d