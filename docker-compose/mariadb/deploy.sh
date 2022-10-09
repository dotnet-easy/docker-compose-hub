echo `pwd`
mkdir -p /etc/mysql/

\cp ./my.cnf /etc/mysql/my.cnf -rf
"/usr/local/bin/docker-compose" -f docker-compose.yml up -d