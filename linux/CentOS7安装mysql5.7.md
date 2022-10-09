# CentOS7安装mysql5.7

> 文件下载地址：https://cdn.mysql.com//Downloads/MySQL-5.7/mysql-5.7.33-1.el7.x86_64.rpm-bundle.tar



* 卸载系统默认mariadb
```
rpm -qa | grep mariadb;
rpm -e mariadb-libs-5.5.60-1.el7_5.x86_64 --nodeps
```

* 上传并解压文件
```
mkdir /usr/local/mysql/
tar -vxf mysql-5.7.33-1.el7.x86_64.rpm-bundle.tar -C /usr/local/mysql/
```

* 安装
```
cd /usr/local/mysql/
rpm -ivh mysql-community-common-5.7.33-1.el7.x86_64.rpm
rpm -ivh mysql-community-libs-5.7.33-1.el7.x86_64.rpm
rpm -ivh mysql-community-client-5.7.33-1.el7.x86_64.rpm
yum -y install perl.x86_64
rpm -ivh mysql-community-server-5.7.33-1.el7.x86_64.rpm
```

* 删除默认文件
```
rm -rf /var/lib/mysql/*
```

* 启动服务
```
service mysqld start
systemctl enable mysqld
```

* 查看初始密码
```
grep 'temporary password' /var/log/mysqld.log;
```

* 登录
```
mysql -u root -p aUuTak1Geg!k
```

* 重新设置密码
```
set password for 'root'@'localhost' = password('Root123@');
#修改密码验证强度
set global validate_password_policy=LOW;
set global validate_password_length=6;
set password for 'root'@'localhost' = password('123456');
#本地授权
grant all privileges on *.* to root@"%" identified by '123456' with grant option;
#远程授权
grant all privileges on *.* to root@localhost identified by '123456' with grant option;
#刷新权限
flush privileges;
```