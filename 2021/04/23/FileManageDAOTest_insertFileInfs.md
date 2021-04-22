# FileManageDAO '여러 개의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트

FileManageDAO

FileManageDAOTest_insertFileInfs

## 1. "classpath*:egovframework/spring/com/idgn/context-idgn-File.xml"
```java
@ImportResource({ "classpath*:egovframework/spring/com/test-context-dao.xml",
		"classpath*:egovframework/spring/com/idgn/context-idgn-File.xml" })
```

## 2. egovFileIdGnrService
```java
@Resource(name = "egovFileIdGnrService")
private EgovIdGnrService egovFileIdGnrService;
```

## 3. insertFileInfs
```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId(egovFileIdGnrService.getNextStringId());
		int maxFileSN = fileManageDAO.getMaxFileSN(fvo);
		log.debug("maxFileSN={}", maxFileSN);

		List<FileVO> fileList = new ArrayList<>();
		FileVO file = new FileVO();
		file.setAtchFileId(fvo.getAtchFileId());
		file.setFileSn(String.valueOf(maxFileSN++));
		file.setFileMg(file.getFileSn());
		fileList.add(file);

		file = new FileVO();
		file.setAtchFileId(fvo.getAtchFileId());
		file.setFileSn(String.valueOf(maxFileSN++));
		file.setFileMg(file.getFileSn());
		fileList.add(file);

		for (int i = 0; i < 10; i++) {
			file = new FileVO();
			file.setAtchFileId(fvo.getAtchFileId());
			file.setFileSn(String.valueOf(maxFileSN++));
			file.setFileMg(file.getFileSn());
			fileList.add(file);
		}

		// when
		String result = fileManageDAO.insertFileInfs(fileList);

		// then
		assertEquals(result, fvo.getAtchFileId());

		log.debug("result={}", result);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/217ceef51a392d06fa30d69227079f93d1a60451>

