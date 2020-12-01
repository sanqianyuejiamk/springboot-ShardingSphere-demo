## ShardingSphere实现分库分表

### 初始化数据库
>import.sql

```
`ds0`.`tab_user0`
`ds0`.`tab_user1`

`ds1`.`tab_user0`
`ds1`.`tab_user1`
```

### 分库分表规则

根据年龄分库 一共分为2个库
```
shardingColumn:"age", algorithmExpression:"ds${age % 2}"
```

根据ID分表 一共分为2张表
```
shardingColumn:"id", new PreciseModuloShardingTableAlgorithm()
```
```java
public final class PreciseModuloShardingTableAlgorithm implements PreciseShardingAlgorithm<Long> {

    @Override
    public String doSharding(final Collection<String> tableNames, final PreciseShardingValue<Long> shardingValue) {
        for (String each : tableNames) {
            if (each.endsWith(shardingValue.getValue() % 2 + "")) {
                return each;
            }
        }
        throw new UnsupportedOperationException();
    }
}
```

### 批量插入数据
```
http://localhost:8088/save-user
```

### 文档
```
https://github.com/yudiandemingzi/spring-boot-sharding-sphere
https://www.cnblogs.com/qdhxhz/p/11673493.html
```