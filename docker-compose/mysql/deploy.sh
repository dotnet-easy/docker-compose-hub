#!\bin\bash

mkdir -p /etc/mysql/sql
\cp ./sql/init.sql /etc/mysql/sql/init.sql -rf
\cp ./my.cnf /etc/mysql/my.cnf -rf
docker-compose up -d