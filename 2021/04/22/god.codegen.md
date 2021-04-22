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

## 3. ALL_TABLES

- ALL_TABLES
- alltables
- AllTables

### 3.1 package
- god.codegen.oracle.alltables.service.impl

### 3.2 VO
- AllTables
- AllTablesVO

### 3.3 mapper xml
- god/mapper/codegen/oracle/alltables/AllTables_SQL_oracle.xml

### 3.4 mapper
- AllTablesMapper

### 3.5 AllTablesMapperTest_selectList

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/e579a36f141b6d39bb152ae687e39ba65971217d>

<https://youtu.be/oFW4OtON8RI>

## 4. egovframework.dev.imp.templates

<https://github.com/LeeBaekHaeng/egovframe-development/tree/master/egovframework.dev.imp.templates>

<https://github.com/LeeBaekHaeng/egovframe-development/blob/master/egovframework.dev.imp.templates/pom.xml>
```xml
<dependency>
    <groupId>org.apache.velocity</groupId>
    <artifactId>velocity</artifactId>
    <version>1.6.2</version>
</dependency>
```

<https://mvnrepository.com/artifact/org.apache.velocity/velocity/1.6.2>
```xml
<!-- https://mvnrepository.com/artifact/org.apache.velocity/velocity -->
<dependency>
    <groupId>org.apache.velocity</groupId>
    <artifactId>velocity</artifactId>
    <version>1.6.2</version>
</dependency>
```

CrudCodeGenTest

CrudCodeGenTest_A1_sql

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/4668d76dec7a6991f4e6ad59a78811cb41a4e253>

<https://youtu.be/BtZ4BfDlBDc>
