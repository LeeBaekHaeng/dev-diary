# Code Generation 코드 생성

## 1. TableVO

### 1.1. Table.java

/god.codegen-web/src/main/java/god/java/sql/Table.java
```java
	private String tableCat;
	private String tableSchem;
	private String tableName;
	private String tableType;
	private String remarks;
	private String typeCat;
	private String typeSchem;
	private String typeName;
	private String selfReferencingColName;
	private String refGeneration;
```

### 1.2. TableVO.java

/god.codegen-web/src/main/java/god/java/sql/TableVO.java
```java
public class TableVO extends Table {

	private String pkName;
```

### 1.3. AllTablesMapper_selectAllTablesList2_SQL_oracle.xml
/god.codegen-web/src/main/resources/god/mapper/codegen/oracle/alltables/AllTablesMapper_selectAllTablesList2_SQL_oracle.xml
```xml
	<resultMap id="resultMapTableVO" type="god.java.sql.TableVO">
		<result property="tableSchem" column="OWNER" />
		<result property="tableName" column="TABLE_NAME" />
		<result property="remarks" column="TABLE_COMMENTS" />

		<result property="pkName" column="PK_NAME" />
	</resultMap>

	<select id="selectAllTablesList2"
		parameterType="god.codegen.oracle.alltables.service.AllTablesVO"
		resultMap="resultMapTableVO">
```

### 1.4. AllTablesMapper.java

/god.codegen-web/src/main/java/god/codegen/oracle/alltables/service/impl/AllTablesMapper.java
```java
	List<TableVO> selectAllTablesList2(AllTablesVO vo);
```

### 1.5. AllTablesMapperTest_selectAllTablesList2.java

/god.codegen-web/src/test/java/god/codegen/oracle/alltables/service/impl/AllTablesMapperTest_selectAllTablesList2.java
```java
		// when
		List<TableVO> results = mapper.selectAllTablesList2(vo);

		// then
		assertEquals(results.get(0).getTableSchem(), owners.get(0));

		log.debug("results={}", results);
		log.debug("size={}", results.size());

		results.forEach(result -> {
			log.debug("result={}", result);
			log.debug("getTableSchem={}", result.getTableSchem());
			log.debug("getTableName={}", result.getTableName());
			log.debug("getRemarks={}", result.getRemarks());

			log.debug("getPkName={}", result.getPkName());
			log.debug("");
		});
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/edecab761693b3dfb6a9311c9c695815bb821178>

## 2. ColumnVO

### 2.1 Column.java

/god.codegen-web/src/main/java/god/java/sql/Column.java
```java
	private String tableCat;
	private String tableSchem;
	private String tableName;
	private String columnName;
	private int dataType;
	private String typeName;
	private int columnSize;
	private String bufferLength;
	private int decimalDigits;
	private int numPrecRadix;
	private int nullable;
	private String remarks;
	private String columnDef;
	private int sqlDataType;
	private int sqlDatetimeSub;
	private int charOctetLength;
	private int ordinalPosition;
	private String isNullable;
	private String scopeCatalog;
	private String scopeSchema;
	private String scopeTable;
	private short sourceDataType;
	private String isAutoincrement;
	private String isGeneratedcolumn;
```

### 2.2 ColumnVO.java

/god.codegen-web/src/main/java/god/java/sql/ColumnVO.java
```java
public class ColumnVO extends Column {

	private int columnId;
```

### 2.3 AllTabColsMapper_selectAllTabColsList2_SQL_oracle.xml

/god.codegen-web/src/main/resources/god/mapper/codegen/oracle/alltabcols/AllTabColsMapper_selectAllTabColsList2_SQL_oracle.xml
```xml
	<resultMap id="resultMapColumnVO"
		type="god.java.sql.ColumnVO">
		<result property="tableSchem" column="OWNER" />
		<result property="tableName" column="TABLE_NAME" />
		<result property="columnName" column="COLUMN_NAME" />
		<result property="typeName" column="DATA_TYPE" />
		<result property="columnSize" column="DATA_LENGTH" />
		<result property="isNullable" column="NULLABLE" />

		<result property="columnId" column="COLUMN_ID" />
		<result property="tableRemarks" column="TABLE_COMMENTS" />

		<result property="remarks" column="COLUMN_COMMENTS" />

		<result property="pk" column="PK" />
	</resultMap>

	<select id="selectAllTabColsList2"
		parameterType="god.codegen.oracle.alltabcols.service.AllTabColsVO"
		resultMap="resultMapColumnVO">
```

### 2.4 AllTabColsMapper.java

/god.codegen-web/src/main/java/god/codegen/oracle/alltabcols/service/impl/AllTabColsMapper.java
```java
	List<ColumnVO> selectAllTabColsList2(AllTabColsVO vo);
```

### 2.5 AllTabColsMapperTest_selectAllTabColsList2.java

/god.codegen-web/src/test/java/god/codegen/oracle/alltabcols/service/impl/AllTabColsMapperTest_selectAllTabColsList2.java
```java
@ComponentScan(useDefaultFilters = false, basePackages = {
		"god.codegen.oracle.alltabcols.service.impl" }, includeFilters = {
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { AllTabColsMapper.class }) })
```

```java
	@Autowired
	private AllTabColsMapper mapper;


```

```java
		// when
		List<ColumnVO> results = mapper.selectAllTabColsList2(vo);

		// then
		assertEquals(results.get(0).getTableSchem(), owners.get(0));

		log.debug("results={}", results);
		log.debug("size={}", results.size());

		results.forEach(result -> {
			log.debug("result={}", result);
			log.debug("getTableSchem={}", result.getTableSchem());
			log.debug("getTableName={}", result.getTableName());
			log.debug("getColumnName={}", result.getColumnName());
			log.debug("getTypeName={}", result.getTypeName());
			log.debug("getColumnSize={}", result.getColumnSize());
			log.debug("getNullable={}", result.getNullable());
			log.debug("getIsNullable={}", result.getIsNullable());
			log.debug("getRemarks={}", result.getRemarks());

			log.debug("getColumnId={}", result.getColumnId());
			log.debug("getTableRemarks={}", result.getTableRemarks());
			log.debug("getPk={}", result.getPk());
			log.debug("");
		});
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/3854fcd10f09892ecb8df533e05861f6e39ed26b>

<https://youtu.be/GOTXwoz6SHM>
