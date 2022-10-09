use mysql;
# navicat连接mysql报错1251解决方案
CREATE USER 'root'@'%' IDENTIFIED BY 'mysql_Techsel2o19';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'mysql_Techsel2o19';

CREATE USER 'flink'@'%' IDENTIFIED BY 'flink_Techsel2o19';
ALTER USER 'flink'@'%' IDENTIFIED WITH mysql_native_password BY 'flink_Techsel2o19';
grant select on *.* to 'flink'@'%';
# 刷新
FLUSH PRIVILEGES;