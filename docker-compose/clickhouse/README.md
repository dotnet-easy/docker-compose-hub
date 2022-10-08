# ClickHouse列式储存数据库



官网：https://clickhouse.com/

github：https://github.com/ClickHouse/ClickHouse



![Clickhouse](assets/6253d9ae3eecda358e6d938b_clickhouse.png)



ClickHouse 是俄罗斯第一大搜索引擎 Yandex 开发的列式储存数据库。令人惊喜的是，这个列式储存数据库的性能大幅超越了很多商业 MPP 数据库软件，比如 Vertica,InfiniDB.

相比传统的数据库软件，ClickHouse 要快 100-1000X:

**100Million 数据集:**

- ClickHouse 比 Vertica 约快 5 倍，比 Hive 快 279 倍，比 My SQL 快 801 倍

**1Billion 数据集:**

- ClickHouse 比 Vertica 约快 5 倍，MySQL 和 Hive 已经无法完成任务了

该项目当前还有**一些不足**:

- pre-build 包只有 Ubuntu 平台的可用，并且该项目当前没有任何架构文档
- 只有 Github 上面的 C++ 源代码

### 主要功能

- True column-oriented
- Vectorized query execution
- Data compression
- Parallel and distributed query execution
- Real-time data ingestion
- On-disk locality of reference
- Real-time query processing
- Cross-datacenter replication
- High availability
- SQL support
- Local and distributed joins
- Pluggable external dimension tables
- Arrays and nested data types
-  Approximate query processing
- Probabilistic data structures
- Full support of IPv6
- Features for web analytics
- State-of-the-art algorithms
- Detailed documentation
- Clean documented code

### 应用场景

- Web and App analytics
- Advertising networks and RTB
- Telecommunications
- E-commerce
- Information security
- Monitoring and telemetry
- Business intelligence
- Online games
- Internet of Things
