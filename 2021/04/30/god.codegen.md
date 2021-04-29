# Code Generation 코드 생성 - setTableVO, setColumnVO

## 1. setTableVO

### 1.1 @ImportResource

test-context-common.xml

```java
@ImportResource({

//		"classpath*:egovframework/spring/com/**/context-*.xml",

		"classpath*:egovframework/spring/com/context-crypto.xml",
		"classpath*:egovframework/spring/com/context-datasource.xml",

		"classpath*:egovframework/spring/com/test-context-common.xml",

})
```

### 1.2 @ComponentScan

- useDefaultFilters = false
- basePackages = { "god" }
- classes = {}

```java
@ComponentScan(useDefaultFilters = false, basePackages = { "god" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = {}) })
```

/god.codegen-web/src/test/java/god/java/sql/DatabaseMetaDataTest_getTables.java
```java
	ResultSetMetaData setTableVO(ResultSetMetaData rsmd, int columnCount) throws Exception {
		log.debug("columnCount={}", columnCount);

		StringBuffer sb = new StringBuffer(SystemUtils.LINE_SEPARATOR);

		for (int i = 1; i < columnCount; i++) {
			String columnName = rsmd.getColumnName(i);
			NameCasing columnNameNameCasing = new NameCasing(columnName);
			int columnType = rsmd.getColumnType(i);
			String columnClassName = rsmd.getColumnClassName(i);
			String columnClassName2 = columnClassName.substring(columnClassName.lastIndexOf(".") + 1);

			log.debug("columnName={}", columnName);
			log.debug("columnType={}", columnType);
			log.debug("");
			log.debug("");
			log.debug("");

			log.debug("getColumnCount={}", rsmd.getColumnCount());
			log.debug("getColumnDisplaySize={}", rsmd.getColumnDisplaySize(i));
			log.debug("getColumnLabel={}", rsmd.getColumnLabel(i));
			log.debug("columnName={}", columnName);
			log.debug("columnType={}", columnType);
			log.debug("getColumnTypeName={}", rsmd.getColumnTypeName(i));
			log.debug("columnClassName={}", columnClassName);
			log.debug("");
			log.debug("");
			log.debug("");

			sb.append("table.set" + columnNameNameCasing.getPcName() + "((" + columnClassName2 + ") allTable.get(\""
					+ columnNameNameCasing.getCcName() + "\"));");
			sb.append(SystemUtils.LINE_SEPARATOR);
		}
		log.debug("{}", sb);
		log.debug("");
		log.debug("");
		log.debug("");

		return rsmd;
	}
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/2bb7725ba4bb2926629dd1bb51f832338f0bdb45>

<https://youtu.be/ud0MMCxyiPQ>
