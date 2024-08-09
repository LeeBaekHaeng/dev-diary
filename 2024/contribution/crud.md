# CRUD 프로그램 자동 생성 기능

## New Folder

1. Resource(Mapper) Folder:
```
src/main/resources/egovframework/mapper/com/test
```

2. JSP Folder: 
```
src/main/webapp/WEB-INF/jsp/egovframework/com/test
```

## CRUD Program Code Generation

1. Author :
```
이백행
```

2. Create Date :
```
2024-08-09
```

### DataAccess

1. Resource(Mapper) Folder:
```
/egovframe-common-components-2024/src/main/resources/egovframework/mapper/com/test
```

2. DAO Package:
```
egovframework.com.test.comtcadministcode.service.impl
```

3. Mapper Package:
```
egovframework.com.test.comtcadministcode.service.impl
```

4. VO Package:
```
egovframework.com.test.comtcadministcode.service
```

### Service

1. Service Package:
```
egovframework.com.test.comtcadministcode.service
```

2. Service Impl Package:
```
egovframework.com.test.comtcadministcode.service.impl
```

### Web

1. Controller Package:
```
egovframework.com.test.comtcadministcode.web
```

2. JSP Folder:
```
/egovframe-common-components-2024/src/main/webapp/WEB-INF/jsp/egovframework/com/test
```

### 톰캣 시작 에러

1. No bean named 'sqlSession' available
- 'sqlSession'이라는 이름의 Bean을 사용할 수 없습니다.
```
Caused by: org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named 'sqlSession' available
```
/egovframe-common-components-2024/src/main/java/egovframework/com/test/comtcadministcode/service/impl/ComtcadministcodeDAO.java
```java
//public class ComtcadministcodeDAO extends EgovAbstractMapper {
public class ComtcadministcodeDAO extends EgovComAbstractDAO {
```

2. No bean named 'comtcadministcodeMapper' available
- 'comtcadministcodeMapper'라는 이름의 Bean을 사용할 수 없습니다.
```
Caused by: org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named 'comtcadministcodeMapper' available
```
/egovframe-common-components-2024/src/main/java/egovframework/com/test/comtcadministcode/service/impl/ComtcadministcodeServiceImpl.java
```java
//@Resource(name = "comtcadministcodeMapper")
//private ComtcadministcodeMapper comtcadministcodeDAO;

@Resource(name = "comtcadministcodeMapper")
private ComtcadministcodeMapper comtcadministcodeDAO;
```

3. 크롬
```
http://localhost:8080/egovframework-all-in-one/comtcadministcode/ComtcadministcodeList.do
```

4. Mapped Statements collection does not contain value for comtcadministcodeDAO.selectComtcadministcodeList
- 매핑된 문 컬렉션에 comtcadministcodeDAO.selectComtcadministcodeList에 대한 값이 포함되어 있지 않습니다.
```
Caused by: java.lang.IllegalArgumentException: Mapped Statements collection does not contain value for comtcadministcodeDAO.selectComtcadministcodeList
```
/egovframe-common-components-2024/src/main/resources/egovframework/mapper/com/test/comtcadministcode/Comtcadministcode_MAPPER.xml
- Comtcadministcode_MAPPER.xml 를 Comtcadministcode_SQL_mysql.xml 로 수정
```
Comtcadministcode_MAPPER.xml
```
를
```
Comtcadministcode_SQL_mysql.xml
```
로 수정

```xml
<mapper namespace="comtcadministcodeDAO">
<!-- <mapper namespace="egovframework.com.test.comtcadministcode.service.impl.ComtcadministcodeMapper"> -->
```

5. You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'limit 10 offset 0' at line 17
- SQL 구문에 오류가 있습니다. 17행의 'limit 10 offset 0' 근처에서 사용할 올바른 구문은 MariaDB 서버 버전에 해당하는 설명서를 확인하세요.
```
Caused by: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'limit 10 offset 0' at line 17
```
/egovframe-common-components-2024/src/main/resources/egovframework/mapper/com/test/comtcadministcode/Comtcadministcode_SQL_mysql.xml

ADMINIST_ZONE_SE, ADMINIST_ZONE_CODE 추가
```xml
ORDER BY ADMINIST_ZONE_SE, ADMINIST_ZONE_CODE
```

5. resultSet=net.sf.log4jdbc.ResultSetSpy@27cb001b, columnLabel=FRST_REGIST_PNTTM, type=class java.time.LocalDateTime
- resultSet=net.sf.log4jdbc.ResultSetSpy@27cb001b, columnLabel=FRST_REGIST_PNTTM, 유형=클래스 java.time.LocalDateTime
```
Caused by: java.sql.SQLFeatureNotSupportedException: resultSet=net.sf.log4jdbc.ResultSetSpy@27cb001b, columnLabel=FRST_REGIST_PNTTM, type=class java.time.LocalDateTime
```
/egovframe-common-components-2024/pom.xml
```xml
<!-- https://mvnrepository.com/artifact/com.fasterxml.jackson.datatype/jackson-datatype-jsr310 -->
<dependency>
    <groupId>com.fasterxml.jackson.datatype</groupId>
    <artifactId>jackson-datatype-jsr310</artifactId>
    <version>2.17.2</version>
</dependency>
```

Date 를 LocalDateTime 으로 수정
```java
//private Date frstRegistPnttm;
private LocalDateTime frstRegistPnttm;

//private Date lastUpdtPnttm;
private LocalDateTime lastUpdtPnttm;
```

```xml
<!-- https://mvnrepository.com/artifact/org.bgee.log4jdbc-log4j2/log4jdbc-log4j2-jdbc4.1 -->
<dependency>
    <groupId>org.bgee.log4jdbc-log4j2</groupId>
    <artifactId>log4jdbc-log4j2-jdbc4.1</artifactId>
    <version>1.16</version>
</dependency>
```

https://log4jdbc.brunorozendo.com/

/egovframe-common-components-2024/src/main/resources/egovframework/egovProps/globals.properties
```
#Globals.mysql.DriverClassName=net.sf.log4jdbc.DriverSpy
Globals.mysql.DriverClassName=net.sf.log4jdbc.sql.jdbcapi.DriverSpy
```
