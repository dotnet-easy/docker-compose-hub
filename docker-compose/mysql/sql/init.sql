use mysql;
# navicat连接mysql报错1251解决方案
CREATE USER 'root'@'%' IDENTIFIED BY 'Mysql123$';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'Mysql123$';

# 刷新
FLUSH PRIVILEGES;