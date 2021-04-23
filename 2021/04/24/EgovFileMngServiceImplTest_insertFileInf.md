# EgovFileMngServiceImpl '하나의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트

EgovFileMngServiceImplTest_insertFileInf

## 1. ComponentScan
```java
@Configuration
@ImportResource({ "classpath*:egovframework/spring/com/test-context-dao.xml",
		"classpath*:egovframework/spring/com/idgn/context-idgn-File.xml" })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovFileMngService.class, FileManageDAO.class }) })
```

## 2. Autowired
```java
	@Autowired
	private EgovFileMngService service;

	@Autowired
	@Qualifier("egovFileIdGnrService")
	private EgovIdGnrService egovFileIdGnrService;
```

## 3. Test
```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO fvo = new FileVO();
		fvo.setAtchFileId(egovFileIdGnrService.getNextStringId());
		int maxFileSN = service.getMaxFileSN(fvo);
		log.debug("maxFileSN={}", maxFileSN);

		FileVO vo = new FileVO();
		vo.setAtchFileId(fvo.getAtchFileId());
		vo.setFileSn(String.valueOf(maxFileSN++));
		vo.setFileMg(vo.getFileSn());

		// when
		boolean result = false;
		try {
			service.insertFileInf(vo);
			result = true;
		} catch (Exception e) {
			log.error(e.getMessage());
		}

		// then
		assertEquals(result, true);

		log.debug("result={}", result);
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/e030ad6c84c768f49a858fb3761af26c72e550c4>

