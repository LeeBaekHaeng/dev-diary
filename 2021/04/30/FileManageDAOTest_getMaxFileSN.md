# FileManageDAO '파일 구분자에 대한 최대값을 구한다.' 단위 테스트

## 1. FileManageDAOTest_getMaxFileSN

### 1.1 @Test

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000001");
//		fvo.setAtchFileId("FILE_000000000000031");

		// when
		int maxFileSN = fileManageDAO.getMaxFileSN(fvo);

		// then
		assertEquals(maxFileSN, 1);

		log.debug("maxFileSN={}", maxFileSN);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/62a0760b27423da06b2018f06211021746e308ca>

## 2. EgovFileMngServiceImplTest_getMaxFileSN

### 2.1 @ComponentScan

EgovFileMngService.class

```java
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovFileMngService.class, FileManageDAO.class }) })
```

### 2.2 @Autowired

EgovFileMngService

```java
	@Autowired
	private EgovFileMngService egovFileMngService;
```

### 2.3 @Test

int maxFileSN = egovFileMngService.getMaxFileSN(fvo);

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000001");
//		fvo.setAtchFileId("FILE_000000000000031");

		// when
		int maxFileSN = egovFileMngService.getMaxFileSN(fvo);

		// then
		assertEquals(maxFileSN, 1);

		log.debug("maxFileSN={}", maxFileSN);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/967097b2bab2e1c98625f18d98e2f2653431d30e>
