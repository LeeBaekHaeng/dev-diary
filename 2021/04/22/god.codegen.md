# Code Generation 코드 생성

## 1. Mapped Statements collection does not contain value for

/god.codegen-web/src/main/resources/egovframework/spring/com/context-mapper.xml
```xml
<bean id="egov.sqlSession" class="org.mybatis.spring.SqlSessionFactoryBean">
```

C:\EGOVFRAME-3.10.0\.m2\repository\org\mybatis\mybatis-spring\2.0.3\mybatis-spring-2.0.3.jar

SqlSessionFactoryBean.class

```java
package org.mybatis.spring;

private Resource[] mapperLocations;

public void setMapperLocations(Resource... mapperLocations) {
```

- setMapperLocations 브레이크포인트
- 디버그
- mapperLocations 확인
