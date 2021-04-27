# FileManageDAO '하나의 파일을 삭제한다.' 단위 테스트

## 1. FileManageDAOTest_deleteFileInf

### 1.1 ImportResource

```java
@ImportResource({

		"classpath*:/egovframework/spring/com/context-crypto.xml",
		"classpath*:/egovframework/spring/com/context-datasource.xml",
		"classpath*:/egovframework/spring/com/context-mapper.xml",
		"classpath*:/egovframework/spring/com/context-transaction.xml",

		"classpath*:/egovframework/spring/com/test-context-common.xml",

})
```

### 1.2 Test

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000001");
//		fvo.setAtchFileId("FILE_000000000000031");
		fvo.setFileSn("1");

		// when
		boolean result = false;
		try {
			dao.deleteFileInf(fvo);
			result = true;
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/fb2311a5d0636bde14fcef549313687977f425f0>

## 2. EgovFileMngServiceImplTest_deleteFileInf


### 2.1 ComponentScan

```java
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovFileMngService.class, FileManageDAO.class }) })
```

### 2.2 Autowired

```java
	@Autowired
	private EgovFileMngService service;
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/68d24928705d4b949dd5dfdd2d6b80a284a565a9>
