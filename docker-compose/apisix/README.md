# Apache APISIX 云原生 API 网关



官网：https://apisix.apache.org/

github：https://github.com/apache/apisix



Apache APISIX 是 Apache 软件基金会下的云原生 API 网关，它兼具动态、实时、高性能等特点，提供了负载均衡、动态上游、灰度发布（金丝雀发布）、服务熔断、身份认证、可观测性等丰富的流量管理功能。我们可以使用 Apache APISIX 来处理传统的南北向流量，也可以处理服务间的东西向流量。同时，它也支持作为 [K8s Ingress Controller](https://github.com/apache/apisix-ingress-controller) 来使用。

### 主要特性

- 多平台支持：APISIX 提供了多平台解决方案，它不但支持裸机运行，也支持在 Kubernetes 中使用，还支持与 AWS Lambda、Azure Function、Lua 函数和 Apache OpenWhisk 等云服务集成。
- 全动态能力：APISIX 支持热加载，这意味着你不需要重启服务就可以更新 APISIX 的配置。请访问[为什么 Apache APISIX 选择 Nginx + Lua 这个技术栈？](https://apisix.apache.org/zh/blog/2021/08/25/why-apache-apisix-chose-nginx-and-lua/)以了解实现原理。
- 精细化路由：APISIX 支持使用 [NGINX 内置变量](http://nginx.org/en/docs/varindex.html)做为路由的匹配条件，你可以自定义匹配函数来过滤请求，匹配路由。
- 运维友好：APISIX 支持与以下工具和平台集成：[HashiCorp Vault](https://apisix.apache.org/zh/docs/apisix/plugins/jwt-auth/#usage-with-hashicorp-vault)、[Zipkin](https://apisix.apache.org/zh/docs/apisix/plugins/zipkin/)、[Apache SkyWalking](https://apisix.apache.org/zh/docs/apisix/plugins/skywalking/)、[Consul](https://apisix.apache.org/zh/docs/apisix/discovery/consul_kv/)、[Nacos](https://apisix.apache.org/zh/docs/apisix/discovery/nacos/)、[Eureka](https://apisix.apache.org/zh/docs/apisix/discovery/)。通过 [APISIX Dashboard](https://apisix.apache.org/zh/docs/dashboard/USER_GUIDE/)，运维人员可以通过友好且直观的 UI 配置 APISIX。
- 多语言插件支持：APISIX 支持多种开发语言进行插件开发，开发人员可以选择擅长语言的 SDK 开发自定义插件。



## 主要概念

下图为 Apache APISIX 的架构：

![flow-software-architecture](assets/flow-software-architecture.png)

下表是本文涉及到的 APISIX 的主要概念和组件：

| 概念/组件 | 描述                                                         |
| --------- | ------------------------------------------------------------ |
| Route     | 通过路由定义规则来匹配客户端请求，根据匹配结果加载并执行相应的插件，最后把请求转发给到指定的上游应用。 |
| Upstream  | 上游的作用是按照配置规则对服务节点进行负载均衡，它的地址信息可以直接配置到路由或服务上。 |
| Admin API | 用户可以通过 Admin API 控制 APISIX 实例。                    |



