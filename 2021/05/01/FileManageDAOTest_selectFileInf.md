# FileManageDAO '파일에 대한 상세정보를 조회한다.' 단위 테스트

## 1. FileManageDAOTest_selectFileInf

- selectFileInf

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
		FileVO fileInf = fileManageDAO.selectFileInf(fvo);

		// then
		if (fileInf == null) {
			return;
		}

		assertEquals(fileInf.getAtchFileId(), fvo.getAtchFileId());
		assertEquals(fileInf.getFileSn(), fvo.getFileSn());

		log.debug("fileInf={}", fileInf);
		log.debug("getAtchFileId={}", fileInf.getAtchFileId());
		log.debug("getFileSn={}", fileInf.getFileSn());
	}
```

## 2. EgovFileMngServiceImplTest_selectFileInf

- EgovFileMngService

### 2.1 @ComponentScan

- EgovFileMngService.class

```java
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovFileMngService.class, FileManageDAO.class }) })
```

### 2.2 @Autowired

- EgovFileMngService
- egovFileMngService

```java
	@Autowired
	private EgovFileMngService egovFileMngService;
```

### 2.3 @Test

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = getFileVO();
//		FileVO fvo = getFileVO2();

		// when
		FileVO fileInf = egovFileMngService.selectFileInf(fvo);

		// then
		if (fileInf == null) {
			return;
		}

		assertEquals(fileInf.getAtchFileId(), fvo.getAtchFileId());
		assertEquals(fileInf.getFileSn(), fvo.getFileSn());

		log.debug("fileInf={}", fileInf);
		log.debug("getAtchFileId={}", fileInf.getAtchFileId());
		log.debug("getFileSn={}", fileInf.getFileSn());
	}

	FileVO getFileVO() {
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000001");
		fvo.setFileSn("1");
		return fvo;
	}

	FileVO getFileVO2() {
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000031");
		fvo.setFileSn("1");
		return fvo;
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/6481a5f9f814734e4ed8c3c4f9294bf7ab6fb307>
