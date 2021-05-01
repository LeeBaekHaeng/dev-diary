# Code Generation 코드 생성 - setColumnVO

## 목차

1. [getColumns](#-1.-getColumns)
2. [Interface DatabaseMetaData](#-2.-Interface-DatabaseMetaData)

## 1. getColumns

- DatabaseMetaDataTest_getColumns

```java
	void debug(ResultSet columns) {
		try {
			log.debug("tableCat={}", columns.getString("TABLE_CAT"));
			log.debug("tableSchem={}", columns.getString("TABLE_SCHEM"));
			log.debug("tableName={}", columns.getString("TABLE_NAME"));
			log.debug("columnName={}", columns.getString("COLUMN_NAME"));
			log.debug("dataType={}", columns.getString("DATA_TYPE"));
			log.debug("typeName={}", columns.getString("TYPE_NAME"));
			log.debug("columnSize={}", columns.getString("COLUMN_SIZE"));
			log.debug("bufferLength={}", columns.getString("BUFFER_LENGTH"));
			log.debug("decimalDigits={}", columns.getString("DECIMAL_DIGITS"));
			log.debug("numPrecRadix={}", columns.getString("NUM_PREC_RADIX"));
			log.debug("nullable={}", columns.getString("NULLABLE"));
			log.debug("remarks={}", columns.getString("REMARKS"));
			log.debug("columnDef={}", columns.getString("COLUMN_DEF"));
			log.debug("sqlDataType={}", columns.getString("SQL_DATA_TYPE"));
			log.debug("sqlDatetimeSub={}", columns.getString("SQL_DATETIME_SUB"));
			log.debug("charOctetLength={}", columns.getString("CHAR_OCTET_LENGTH"));
			log.debug("ordinalPosition={}", columns.getString("ORDINAL_POSITION"));
			log.debug("isNullable={}", columns.getString("IS_NULLABLE"));
			log.debug("scopeCatalog={}", columns.getString("SCOPE_CATALOG"));
			log.debug("scopeSchema={}", columns.getString("SCOPE_SCHEMA"));
			log.debug("scopeTable={}", columns.getString("SCOPE_TABLE"));
			log.debug("sourceDataType={}", columns.getString("SOURCE_DATA_TYPE"));
			log.debug("isAutoincrement={}", columns.getString("IS_AUTOINCREMENT"));
			log.debug("");
		} catch (SQLException e) {
			log.error(e.getMessage());
		}
	}
```

```java
	void get(ResultSet columns) {
		try {
			String tableCat = columns.getString("TABLE_CAT");
			String tableSchem = columns.getString("TABLE_SCHEM");
			String tableName = columns.getString("TABLE_NAME");
			String columnName = columns.getString("COLUMN_NAME");
			Integer dataType = columns.getInt("DATA_TYPE");
			String typeName = columns.getString("TYPE_NAME");
			Integer columnSize = columns.getInt("COLUMN_SIZE");
			Integer bufferLength = columns.getInt("BUFFER_LENGTH");
			Integer decimalDigits = columns.getInt("DECIMAL_DIGITS");
			Integer numPrecRadix = columns.getInt("NUM_PREC_RADIX");
			Integer nullable = columns.getInt("NULLABLE");
			String remarks = columns.getString("REMARKS");
			String columnDef = columns.getString("COLUMN_DEF");
			Integer sqlDataType = columns.getInt("SQL_DATA_TYPE");
			Integer sqlDatetimeSub = columns.getInt("SQL_DATETIME_SUB");
			Integer charOctetLength = columns.getInt("CHAR_OCTET_LENGTH");
			Integer ordinalPosition = columns.getInt("ORDINAL_POSITION");
			String isNullable = columns.getString("IS_NULLABLE");
			String scopeCatalog = columns.getString("SCOPE_CATALOG");
			String scopeSchema = columns.getString("SCOPE_SCHEMA");
			String scopeTable = columns.getString("SCOPE_TABLE");
			Integer sourceDataType = columns.getInt("SOURCE_DATA_TYPE");
			String isAutoincrement = columns.getString("IS_AUTOINCREMENT");

			log.debug("tableCat={}", tableCat);
			log.debug("tableSchem={}", tableSchem);
			log.debug("tableName={}", tableName);
			log.debug("columnName={}", columnName);
			log.debug("dataType={}", dataType);
			log.debug("typeName={}", typeName);
			log.debug("columnSize={}", columnSize);
			log.debug("bufferLength={}", bufferLength);
			log.debug("decimalDigits={}", decimalDigits);
			log.debug("numPrecRadix={}", numPrecRadix);
			log.debug("nullable={}", nullable);
			log.debug("remarks={}", remarks);
			log.debug("columnDef={}", columnDef);
			log.debug("sqlDataType={}", sqlDataType);
			log.debug("sqlDatetimeSub={}", sqlDatetimeSub);
			log.debug("charOctetLength={}", charOctetLength);
			log.debug("ordinalPosition={}", ordinalPosition);
			log.debug("isNullable={}", isNullable);
			log.debug("scopeCatalog={}", scopeCatalog);
			log.debug("scopeSchema={}", scopeSchema);
			log.debug("scopeTable={}", scopeTable);
			log.debug("sourceDataType={}", sourceDataType);
			log.debug("isAutoincrement={}", isAutoincrement);
			log.debug("");
		} catch (SQLException e) {
			log.error(e.getMessage());
		}
	}
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/19c8cc8eb9dbef746a176877d08c76e0e2f9c1f9>

<https://youtu.be/Jv7znMwgqmA>

## 2. Interface DatabaseMetaData

<https://docs.oracle.com/javase/8/docs/api/java/sql/DatabaseMetaData.html>

getColumns(String catalog, String schemaPattern, String tableNamePattern, String columnNamePattern)

getColumns 주석

```
1. TABLE_CAT String
2. TABLE_SCHEM String
3. TABLE_NAME String
4. COLUMN_NAME String
5. DATA_TYPE int
6. TYPE_NAME String
7. COLUMN_SIZE int
8. BUFFER_LENGTH is not used. 
9. DECIMAL_DIGITS int
10. NUM_PREC_RADIX int
11. NULLABLE int
12. REMARKS String
13. COLUMN_DEF String
14. SQL_DATA_TYPE int
15. SQL_DATETIME_SUB int
16. CHAR_OCTET_LENGTH int
17. ORDINAL_POSITION int
18. IS_NULLABLE String
19. SCOPE_CATALOG String
20. SCOPE_SCHEMA String
21. SCOPE_TABLE String
22. SOURCE_DATA_TYPE short
23. IS_AUTOINCREMENT String
24. IS_GENERATEDCOLUMN String
```

ResultSetMetaData

- getColumnLabel
- getColumnClassName

```
1. TABLE_CAT String
2. TABLE_SCHEM String
3. TABLE_NAME String
4. COLUMN_NAME String
5. DATA_TYPE Integer
6. TYPE_NAME String
7. COLUMN_SIZE Integer
8. BUFFER_LENGTH Integer
9. DECIMAL_DIGITS Integer
10. NUM_PREC_RADIX Integer
11. NULLABLE Integer
12. REMARKS String
13. COLUMN_DEF String
14. SQL_DATA_TYPE Integer
15. SQL_DATETIME_SUB Integer
16. CHAR_OCTET_LENGTH Integer
17. ORDINAL_POSITION Integer
18. IS_NULLABLE String
19. SCOPE_CATALOG String
20. SCOPE_SCHEMA String
21. SCOPE_TABLE String
22. SOURCE_DATA_TYPE Integer
23. IS_AUTOINCREMENT String
```

mariadb-10.5.9-winx64

```
1	TABLE_CAT	String
2	TABLE_SCHEM	String
3	TABLE_NAME	String
4	COLUMN_NAME	String
5	DATA_TYPE	Integer
6	TYPE_NAME	String
7	COLUMN_SIZE	Integer
8	BUFFER_LENGTH	Integer
9	DECIMAL_DIGITS	Integer
10	NUM_PREC_RADIX	Integer
11	NULLABLE	Integer
12	REMARKS	String
13	COLUMN_DEF	String
14	SQL_DATA_TYPE	Integer
15	SQL_DATETIME_SUB	Integer
16	CHAR_OCTET_LENGTH	Integer
17	ORDINAL_POSITION	Integer
18	IS_NULLABLE	String
19	SCOPE_CATALOG	String
20	SCOPE_SCHEMA	String
21	SCOPE_TABLE	String
22	SOURCE_DATA_TYPE	Integer
23	IS_AUTOINCREMENT	String
```

```
TABLE_CAT	com
TABLE_SCHEM	null
TABLE_NAME	comtcadministcode
COLUMN_NAME	LAST_UPDUSR_ID
DATA_TYPE	12
TYPE_NAME	VARCHAR
COLUMN_SIZE	20
BUFFER_LENGTH	65535
DECIMAL_DIGITS	null
NUM_PREC_RADIX	10
NULLABLE	1
REMARKS	최종수정자ID
COLUMN_DEF	null
SQL_DATA_TYPE	0
SQL_DATETIME_SUB	0
CHAR_OCTET_LENGTH	20
ORDINAL_POSITION	11
IS_NULLABLE	YES
SCOPE_CATALOG	null
SCOPE_SCHEMA	null
SCOPE_TABLE	null
SOURCE_DATA_TYPE	null
IS_AUTOINCREMENT	NO
```

oracle 11g

```
1	TABLE_CAT	String
2	TABLE_SCHEM	String
3	TABLE_NAME	String
4	COLUMN_NAME	String
5	DATA_TYPE	BigDecimal
6	TYPE_NAME	String
7	COLUMN_SIZE	BigDecimal
8	BUFFER_LENGTH	BigDecimal
9	DECIMAL_DIGITS	BigDecimal
10	NUM_PREC_RADIX	BigDecimal
11	NULLABLE	BigDecimal
12	REMARKS	String
13	COLUMN_DEF	String
14	SQL_DATA_TYPE	BigDecimal
15	SQL_DATETIME_SUB	BigDecimal
16	CHAR_OCTET_LENGTH	BigDecimal
17	ORDINAL_POSITION	BigDecimal
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/f0690d8a5aa9ec11ac83cc243694adc8646bf3bd>
