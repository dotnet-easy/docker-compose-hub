# 报错信息配置修改参考



##  Max query size exceeded

```xml
1024*1024*1024bytes=1,073,741,824
<max_query_size>1073741824</max_query_size>
```

## AST is too big，Maximum: 50000
```xml
<max_ast_elements>10000000</max_ast_elements>
<max_expanded_ast_elements>10000000</max_expanded_ast_elements>
```