# FileManageDAO '하나의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트

FileManageDAOTest_insertFileInf

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId(egovFileIdGnrService.getNextStringId());
		int maxFileSN = dao.getMaxFileSN(fvo);
		log.debug("maxFileSN={}", maxFileSN);

		FileVO vo = new FileVO();
		vo.setAtchFileId(fvo.getAtchFileId());
		vo.setFileSn(String.valueOf(maxFileSN++));
		vo.setFileMg(vo.getFileSn());

		// when
		boolean result = false;
		try {
			dao.insertFileInf(vo);
			result = true;
		} catch (Exception e) {
			log.error(e.getMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

```sql
SELECT * from COMTNFILE;

SELECT * FROM COMTNFILEDETAIL;
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/e2bc34687e74bb8be5c04d91dd6c4ad13e205d88>

<https://youtu.be/uAfc1eqxueI>
