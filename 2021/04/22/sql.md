# ALL_TAB_COLS

## 1. 컬럼
```sql
SELECT /* select */
       A.OWNER
     , A.TABLE_NAME
     , A.COLUMN_NAME
     , A.DATA_TYPE
     , A.DATA_LENGTH
     , A.DATA_PRECISION
     , A.DATA_SCALE
     , A.NULLABLE
     , A.COLUMN_ID
     , A.DATA_DEFAULT
     , (SELECT L.COMMENTS FROM ALL_TAB_COMMENTS L WHERE L.OWNER = A.OWNER AND L.TABLE_NAME = A.TABLE_NAME) TABLE_COMMENTS
     , (SELECT L.COMMENTS FROM ALL_COL_COMMENTS L WHERE L.OWNER = A.OWNER AND L.TABLE_NAME = A.TABLE_NAME AND L.COLUMN_NAME = A.COLUMN_NAME) COLUMN_COMMENTS
  FROM ALL_TAB_COLS A
 WHERE 1 = 1
   AND A.OWNER = 'COM'
 ORDER BY A.OWNER, A.TABLE_NAME, A.COLUMN_ID
;
```

```sql
SELECT * FROM ALL_TAB_COLS A WHERE A.OWNER = 'COM' ORDER BY A.OWNER, A.TABLE_NAME, A.COLUMN_ID;
```

```sql
SELECT /* select */
       A.*
  FROM ALL_OBJECTS A
 WHERE 1 = 1
   AND A.OWNER = 'SYS'
   AND A.OBJECT_NAME LIKE 'ALL_TA%'
--   AND A.OBJECT_NAME LIKE 'ALL_%COMMENTS%'
 ORDER BY A.OBJECT_NAME
;


SELECT * FROM ALL_TABLES A WHERE A.OWNER = 'COM' ORDER BY A.OWNER, A.TABLE_NAME;

SELECT * FROM ALL_TAB_COMMENTS A WHERE A.OWNER = 'COM' ORDER BY A.OWNER, A.TABLE_NAME;

SELECT * FROM ALL_TAB_COLS A WHERE A.OWNER = 'COM' ORDER BY A.OWNER, A.TABLE_NAME, A.COLUMN_ID;

SELECT * FROM ALL_COL_COMMENTS A WHERE A.OWNER = 'COM' ORDER BY A.OWNER, A.TABLE_NAME;
```

<https://github.com/LeeBaekHaeng/sql/commit/41cf287e44cf09a809f1fc9d3456ab68764a9726>

<https://youtu.be/1cscUGpBrE4>

