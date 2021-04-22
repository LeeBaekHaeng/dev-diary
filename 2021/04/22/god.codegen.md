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

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/f8905549dd4b614c4845c792bd9f03ea66b2e41f>

<https://youtu.be/lzSpUnzsM8c>

## 2. AllTabColsMapper

```java
package god.codegen.oracle.alltabcols.service.impl;

import java.util.List;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import god.codegen.oracle.alltabcols.service.AllTabColsVO;

@Mapper
public interface AllTabColsMapper {

	List<EgovMap> selectList(AllTabColsVO vo);

}

```

/god.codegen-web/src/main/resources/god/mapper/codegen/oracle/alltabcols/AllTabColsMapper_SQL_oracle.xml
```xml
<mapper	namespace="god.codegen.oracle.alltabcols.service.impl.AllTabColsMapper">
<select id="selectList"
```

/god.codegen-web/src/main/resources/egovframework/spring/com/context-mapper-god-oracle.xml
```xml
<bean class="egovframework.rte.psl.dataaccess.mapper.MapperConfigurer">
    <property name="basePackage" value="god.codegen.oracle.**.service.impl" />
    <property name="sqlSessionFactoryBeanName" value="egov.sqlSession.oracle" />
</bean>
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/123dfbd56e81ead1360fe60420fcba15f09cba8c>

<https://youtu.be/ojVsYZkbbXk>

