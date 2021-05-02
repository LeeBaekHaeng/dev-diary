# FileManageDAO '전체 파일을 삭제한다.' 단위 테스트

## 목차

1. [FileManageDAOTest_deleteAllFileInf](#1-filemanagedaotest_deleteallfileinf)
2. [EgovFileMngServiceImplTest_deleteAllFileInf](#2-egovfilemngserviceimpltest_deleteallfileinf)

## 1. FileManageDAOTest_deleteAllFileInf

deleteAllFileInf

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000001");
//		fvo.setAtchFileId("FILE_000000000000031");

		// when
		boolean result = false;
		try {
			fileManageDAO.deleteAllFileInf(fvo);
			result = true;
		} catch (Exception e) {
			log.error(e.getMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

## 2. EgovFileMngServiceImplTest_deleteAllFileInf

- EgovFileMngServiceImplConfigurationTest
- EgovFileMngService
- deleteAllFileInf

```java
@ContextConfiguration(classes = { EgovFileMngServiceImplConfigurationTest.class })

	@Autowired
	private EgovFileMngService egovFileMngService;

	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId("FILE_000000000000001");
//		fvo.setAtchFileId("FILE_000000000000031");

		// when
		boolean result = false;
		try {
			egovFileMngService.deleteAllFileInf(fvo);
			result = true;
		} catch (Exception e) {
			log.error(e.getMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/1130a4ec8b817f98ce75a63ebabaca7a0b2033e0>

