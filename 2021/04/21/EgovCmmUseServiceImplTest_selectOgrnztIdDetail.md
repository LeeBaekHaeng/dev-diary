# EgovCmmUseServiceImplTest_selectOgrnztIdDetail

조직정보를 코드형태로 리턴한다.

```java
	@Test
	public void test() throws Exception {
		log.debug("test");

		// given
		ComDefaultCodeVO vo = new ComDefaultCodeVO();
		vo.setTableNm("COMTNORGNZTINFO");
		vo.setHaveDetailCondition("Y");
		vo.setDetailCondition("ORGNZT_0000000000000");

		// when
		List<CmmnDetailCode> results = service.selectOgrnztIdDetail(vo);

		// then
		assertEquals(results.get(0).getCodeId(), vo.getTableNm());

		log.debug("results={}", results);

		results.forEach(result -> {
			log.debug("result={}", result);
			log.debug("getCodeId={}", result.getCodeId());
			log.debug("getCode={}", result.getCode());
			log.debug("getCodeNm={}", result.getCodeNm());
			log.debug("getCodeDc={}", result.getCodeDc());
		});
	}
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/05796f2a64b9de56c1db21650733a4ef28cfb9a7>
