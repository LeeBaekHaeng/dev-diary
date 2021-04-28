# FileManageDAO '파일에 대한 목록을 조회한다.' 단위 테스트

## 1. FileManageDAOTest_selectFileInfs

### 1.1 @Test

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO vo = new FileVO();
		vo.setAtchFileId("FILE_000000000000001");
//		vo.setAtchFileId("FILE_000000000000031");

		// when
		List<FileVO> results = dao.selectFileInfs(vo);
		int size = results.size();

		// then
		if (size > 0) {
			assertEquals(results.get(0).getAtchFileId(), vo.getAtchFileId());
		}

		log.debug("results={}", results);
		log.debug("size={}", size);

		results.forEach(result -> {
			log.debug("result={}", result);
			log.debug("getAtchFileId={}", result.getAtchFileId());
			log.debug("getFileCn={}", result.getFileCn());
		});
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/4809eff9be10ad9db39382bc2ee8ad5ea403f9e6>

## 2. EgovFileMngServiceImpl_selectFileInfs

### 2.1 @ComponentScan

```java
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.cmm.service.impl" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovFileMngService.class, FileManageDAO.class }) })
```

### 2.2 @Autowired

```java
	@Autowired
	private EgovFileMngService service;
```

### 2.3 @Test

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		FileVO vo = new FileVO();
		vo.setAtchFileId("FILE_000000000000001");
//		vo.setAtchFileId("FILE_000000000000031");

		// when
		List<FileVO> results = service.selectFileInfs(vo);
		int size = results.size();

		// then
		if (size > 0) {
			assertEquals(results.get(0).getAtchFileId(), vo.getAtchFileId());
		}

		log.debug("results={}", results);
		log.debug("size={}", size);

		results.forEach(result -> {
			log.debug("result={}", result);
			log.debug("getAtchFileId={}", result.getAtchFileId());
			log.debug("getFileCn={}", result.getFileCn());
		});
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/683bdb12acee8dc62f1c2936ba6439e781963abf>
