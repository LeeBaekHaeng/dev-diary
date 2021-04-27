# JNDI Datasource How-To JNDI 데이터 소스 방법

## 1. MySQL DBCP 2 Example MySQL DBCP 2 예

### 1.0. Introduction 소개

pom.xml
```xml
<!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
<!-- <dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.31</version>
</dependency> -->

<!-- https://mvnrepository.com/artifact/mysql/mysql-connector-java -->
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>8.0.24</version>
</dependency>
```

<https://mvnrepository.com/artifact/mysql/mysql-connector-java/5.1.31>

### 1.1. MySQL configuration MySQL 구성

```sql
GRANT ALL PRIVILEGES ON *.* TO javauser@localhost
   IDENTIFIED BY 'javadude' WITH GRANT OPTION;

create database javatest;

use javatest;

create table testdata (
   id int not null auto_increment primary key,
   foo varchar(25),
   bar int);

insert into testdata values(null, 'hello', 12345);
```

### 1.2. Context configuration 컨텍스트 구성

/Servers/test-config/context.xml
```xml
  <Resource name="jdbc/TestDB" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="javauser" password="javadude" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/javatest"/>
```

### 1.3. web.xml configuration web.xml 구성

### 1.4. Test code 테스트 코드

Now create a simple test.jsp page for use later.

이제 나중에 사용할 간단한 test.jsp 페이지를 만듭니다.

test.jsp
```jsp
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/TestDB">
select id, foo, bar from testdata
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    Foo ${row.foo}<br/>
    Bar ${row.bar}<br/>
</c:forEach>

  </body>
</html>
```

Once deployed, point a browser at <http://localhost:8080/test/test.jsp> to view the fruits of your hard work.

배포가 완료되면 <http://localhost:8080/test/test.jsp>에서 브라우저를 지정하여 노력의 결과를 확인하십시오.

<http://localhost:8080/test/test.jsp>

# 2. 참고 주소

<http://tomcat.apache.org/tomcat-8.5-doc/jndi-datasource-examples-howto.html>

<https://tomcat.apache.org/download-80.cgi>

Full documentation: apache-tomcat-8.5.65-fulldocs.tar.gz

<https://youtu.be/7fRc--6c5w0>
