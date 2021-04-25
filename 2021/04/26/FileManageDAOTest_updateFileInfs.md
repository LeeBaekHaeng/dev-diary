# FileManageDAO '여러 개의 파일에 대한 정보(속성 및 상세)를 수정한다.' 단위 테스트

## 1. FileManageDAOTest_updateFileInfs

```sql
SELECT next_id FROM COMTECOPSEQ WHERE table_name = 'FILE_ID';

SELECT * FROM COMTNFILEDETAIL;
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
		boolean result = false;
		try {
			dao.updateFileInfs(fileList);
			result = true;
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

## 2. EgovFileMngServiceImplTest_updateFileInfs

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/1e23750c230ee4c4d07fc3d28547123573ff34b9>

