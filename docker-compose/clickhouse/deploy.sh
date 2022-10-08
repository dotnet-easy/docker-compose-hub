#!\bin\bash

mkdir -p /etc/clickhouse
\cp ./config.xml /etc/clickhouse/config.xml -f
\cp ./users.xml /etc/clickhouse/users.xml -f
docker-compose up -d