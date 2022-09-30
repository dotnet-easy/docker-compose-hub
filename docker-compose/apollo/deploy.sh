#!\bin\bash

mkdir -p /etc/apollo/sql
\cp ./sql/apolloconfigdb.sql /etc/apollo/sql/apolloconfigdb.sql -f
\cp ./sql/apolloportaldb.sql /etc/apollo/sql/apolloportaldb.sql -f
docker-compose up -d