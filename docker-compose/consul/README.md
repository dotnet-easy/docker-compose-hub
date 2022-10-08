# Consul服务的注册和发现



官网：https://consulproject.org/

github：https://github.com/consul/consul



### 软件简介

Consul 简化了分布式环境中的服务的注册和发现流程，通过 HTTP 或者 DNS 接口发现。支持外部 SaaS 提供者等。

在线演示：http://demo.consul.io/ui/



![img](assets/consul.jpeg)



Consul是HashiCorp公司推出的开源工具，用于实现分布式系统的服务发现与配置。 Consul是分布式的、高可用的、可横向扩展的。它具备以下特性 :

- 服务发现：consul通过DNS或者HTTP接口使服务注册和服务发现变的很容易，一些外部服务，例如saas提供的也可以一样注册。
- 健康检查：健康检测使consul可以快速的告警在集群中的操作。和服务发现的集成，可以防止服务转发到故障的服务上面。
- 键/值存储：一个用来存储动态配置的系统。提供简单的HTTP接口，可以在任何地方操作。
- 多数据中心：无需复杂的配置，即可支持任意数量的区域。

## 优势

- 使用 Raft 算法来保证一致性, 比复杂的 Paxos 算法更直接. 相比较而言, zookeeper 采用的是 Paxos, 而 etcd 使用的则是 Raft. 
- 支持多数据中心，内外网的服务采用不同的端口进行监听。 多数据中心集群可以避免单数据中心的单点故障,而其部署则需要考虑网络延迟, 分片等情况等. zookeeper 和 etcd 均不提供多数据中心功能的支持. 
- 支持健康检查. etcd 不提供此功能. 
- 支持 http 和 dns 协议接口. zookeeper 的集成较为复杂, etcd 只支持 http 协议. 
- 官方提供web管理界面, etcd 无此功能.
