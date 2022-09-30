# PostgreSQL 对象-关系数据库



官网：https://www.postgresql.org/

github：https://github.com/postgres/postgres



简介：

​    PostgreSQL 是一个先进的对象关系数据库管理系统，支持SQL标准的扩展子集，包括事务、外键、子查询、触发器、用户定义类型和功能。

提供的功能包括：

1：函数：通过函数，可以在数据库服务器端执行指令程序。
2：索引：用户可以自定义索引方法，或使用内置的 B 树，哈希表与 GiST 索引。
3：触发器：触发器是由SQL语句查询所触发的事件。如：一个INSERT语句可能触发一个检查数据完整性的触发器。触发器通常由INSERT或UPDATE语句触发。 多版本并发控制：PostgreSQL使用多版本并发控制（MVCC，Multiversion concurrency control）系统进行并发控制，该系统向每个用户提供了一个数据库的"快照"，用户在事务内所作的每个修改，对于其他的用户都不可见，直到该事务成功提交。
4：规则：规则（RULE）允许一个查询能被重写，通常用来实现对视图（VIEW）的操作，如插入（INSERT）、更新（UPDATE）、删除（DELETE）。 
5：数据类型：包括文本、任意精度的数值数组、JSON 数据、枚举类型、XML 数据 等。
6：全文检索：通过 Tsearch2 或 OpenFTS，8.3版本中内嵌 Tsearch2。
7：NoSQL：JSON，JSONB，XML，HStore 原生支持，至 NoSQL 数据库的外部数据包装器。
8：数据仓库：能平滑迁移至同属 PostgreSQL 生态的 GreenPlum，DeepGreen，HAWK 等，使用 FDW 进行 ETL。