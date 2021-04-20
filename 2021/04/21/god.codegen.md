# Code Generation 코드 생성

## 1. pom.xml 수정
/god.codegen-web/pom.xml

eclipse > Source > Format

```xml
		<!-- https://mvnrepository.com/artifact/junit/junit -->
		<dependency>
			<groupId>junit</groupId>
			<artifactId>junit</artifactId>
			<version>4.13.2</version>
			<scope>test</scope>
		</dependency>

		<!-- https://mvnrepository.com/artifact/org.projectlombok/lombok -->
		<dependency>
			<groupId>org.projectlombok</groupId>
			<artifactId>lombok</artifactId>
			<version>1.18.20</version>
			<scope>provided</scope>
		</dependency>
```

## 2. test-context-*.xml 추가
- /god.codegen-web/src/test/resources/egovframework/spring/com/test-context-common.xml
- /god.codegen-web/src/test/resources/egovframework/spring/com/test-context-dao.xml

## 3. 단위 테스트
/god.codegen-web/src/test/java/egovframework/com/cmm/service/impl/CmmUseDAOTest_selectCmmCodeDetail.java

## 4. Globals.oracle.* 수정
/god.codegen-web/src/main/resources/egovframework/egovProps/globals.properties
```properties
Globals.oracle.DriverClassName=net.sf.log4jdbc.DriverSpy
Globals.oracle.Url=jdbc:log4jdbc:oracle:thin:@192.168.0.254:1521:orcl
```

egovframework.com.god.codegen.oracle.alltabcols.service.impl

AllTabColsDAO
AllTabCols
AllTabColsVO

```xml
<![CDATA[
]]>
```
