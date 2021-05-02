# Code Generation 코드 생성 - GodTestV1 리팩토링

## 목차

1. [package](#1-package)
2. [@ActiveProfiles](#2-@activeprofiles)

## 1. package

god.test.GodTestV1

```java
package god.test;
```

1. getTables -> setEntity
2. getColumns -> setAttributes, setPrimaryKeys
3. getDataModelContext
4. A1_sql

## 2. @ActiveProfiles

altibase
cubrid
maria
mysql
oracle
postgres
tibero

```java
//@ActiveProfiles({ "altibase", "dummy" })
//@ActiveProfiles({ "cubrid", "dummy" })
//@ActiveProfiles({ "maria", "dummy" })
@ActiveProfiles({ "mysql", "dummy" })
//@ActiveProfiles({ "oracle", "dummy" })
//@ActiveProfiles({ "postgres", "dummy" })
//@ActiveProfiles({ "tibero", "dummy" })
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/73871d35502fcb73169d77e339ec4165409672e7>

## 3. DataModelService

- god.codegen.datamodel.service.impl
- DataModelVO
- DataModelService
- DataModelServiceImpl

god.java.sql.A1_sql

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/3afab3ac0c0fda17e5524dd3dea92977f2f87da1>

model.GodPathname

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/a33df368d065b211e604ac43ff2463521267392f>

info

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/f5cc1999e8b95125b855f141c63c10d434044032>
