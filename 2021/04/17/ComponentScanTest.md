# ComponentScanTest

## ComponentScanTest
/egovframe-common-components/src/test/java/egovframework/com/test/ComponentScanTest.java
```java
@Configuration
@ImportResource({ "classpath*:/egovframework/spring/com/test-context-dao.xml" })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { CmmUseDAO.class }) })

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ComponentScanTest.class })
@ActiveProfiles({ "mysql", "dummy" })
```

## ComponentScanTest_FileManageDAO
/egovframe-common-components/src/test/java/egovframework/com/test/ComponentScanTest_FileManageDAO.java
```java
@Configuration
@ImportResource({ "classpath*:/egovframework/spring/com/test-context-dao.xml" })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { FileManageDAO.class }) })

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ComponentScanTest_FileManageDAO.class })
@ActiveProfiles({ "mysql", "dummy" })
```
## test-context-dao.xml
/egovframe-common-components/src/test/resources/egovframework/spring/com/test-context-dao.xml
```xml
	<import
		resource="classpath*:/egovframework/spring/com/context-crypto.xml" />
	<import
		resource="classpath*:/egovframework/spring/com/context-datasource.xml" />
	<import
		resource="classpath*:/egovframework/spring/com/context-mapper.xml" />

	<import
		resource="classpath*:/egovframework/spring/com/test-context-common.xml" />
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/20453ac8b4f9d7d87d652edd23fa08645fad382b>
