# EgovCmmUseServiceImplTest_selectCmmCodeDetails

```java
		// given
		List<ComDefaultCodeVO> voList = new ArrayList<>();
		ComDefaultCodeVO vo = new ComDefaultCodeVO();
		vo.setCodeId("COM001");
		voList.add(vo);

		vo = new ComDefaultCodeVO();
		vo.setCodeId("COM002");
		voList.add(vo);

		// when
		Map<String, List<CmmnDetailCode>> result = service.selectCmmCodeDetails(voList);
```

<https://github.com/LeeBaekHaeng/egovframe-common-components/commit/e08db1357cfb828b2073e54613d8fff5d94fecc1>
