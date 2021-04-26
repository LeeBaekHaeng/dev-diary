# FileManageDAO '여러 개의 파일을 삭제한다.' 단위 테스트

## 1. FileManageDAOTest_deleteFileInfs

```java
@ImportResource({ "classpath*:/egovframework/spring/com/context-crypto.xml",
		"classpath*:/egovframework/spring/com/context-datasource.xml",
		"classpath*:/egovframework/spring/com/context-mapper.xml",
		"classpath*:/egovframework/spring/com/context-transaction.xml",
		"classpath*:/egovframework/spring/com/test-context-common.xml",

		"classpath*:egovframework/spring/com/idgn/context-idgn-File.xml" })
```

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId(egovFileIdGnrService.getNextStringId());
		int maxFileSN = dao.getMaxFileSN(fvo);
		log.debug("maxFileSN={}", maxFileSN);
		fvo.setFileSn(String.valueOf(maxFileSN++));
		fvo.setFileMg(fvo.getFileSn());
		dao.insertFileInf(fvo);

		List<FileVO> fileList = new ArrayList<>();
		FileVO file = new FileVO();
		file.setAtchFileId(fvo.getAtchFileId());
		file.setFileSn(String.valueOf(maxFileSN++));
		fileList.add(file);

		file = new FileVO();
		file.setAtchFileId(fvo.getAtchFileId());
		file.setFileSn(String.valueOf(maxFileSN++));
		fileList.add(file);

		for (int i = 0; i < 10; i++) {
			file = new FileVO();
			file.setAtchFileId(fvo.getAtchFileId());
			file.setFileSn(String.valueOf(maxFileSN++));
			fileList.add(file);
		}

		// when
		boolean result = false;
		try {
			dao.deleteFileInfs(fileList);
			result = true;
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/61b5b10c377a3163b76d5b817718735dc199f228>

## 2. EgovFileMngServiceImplTest_deleteFileInfs

```java
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovFileMngService.class, FileManageDAO.class }) })
```

```java
	@Autowired
	private EgovFileMngService service;
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/513f9ebf31bc49d825b9816d9bbc9bea2d14b779>

<https://youtu.be/gLzeq39QacI>
