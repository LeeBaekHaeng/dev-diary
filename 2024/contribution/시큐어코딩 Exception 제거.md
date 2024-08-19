# 시큐어코딩 Exception 제거

시큐어코딩 Exception 제거하는 이유
- `throws Exception/catch (Exception` 부적절한 예외 처리
- 광범위한 예외 처리 대신 구체적인 예외 처리를 수행한다.

---

1. 소프트웨어 개발 보안 가이드
소프트웨어_개발보안_가이드(2021.12.29).pdf
https://www.kisa.or.kr/2060204/form?postSeq=5&page=1

39페이지
- 4. 구현단계 기준과의 관계

구분|설계단계|구현단계
-|-|-
에러 처리(1개)|예외처리|오류 메시지 정보노출

40페이지
- 부적절한 예외 처리

294페이지
- 3. 부적절한 예외 처리

```
나. 보안대책
값을 반환하는 모든 함수의 결과값을 검사하여, 그 값이 의도했던 값인지 검사하고, 예외 처리를
사용하는 경우에 광범위한 예외 처리 대신 구체적인 예외 처리를 수행한다.
```

---

2. 소프트웨어 보안약점 진단가이드
소프트웨어_보안약점_진단가이드(2021).pdf
https://www.kisa.or.kr/2060204/form?postSeq=9&page=1

429페이지
- 제4장 구현단계 보안약점 진단

3. 부적절한 예외 처리

431페이지

```
라. 진단방법

함수 또는 메소드에 대하여 반환값을 검사하고 예외를 발생시키는 경우(①) 구체적인 예외처리를
수행하는지 확인한다.
```

---

목차
- [161. 자료이용현황통계 시큐어코딩 Exception 제거](#161-자료이용현황통계-시큐어코딩-exception-제거)

## 161. 자료이용현황통계 시큐어코딩 Exception 제거

링크 주소
```
http://localhost:8080/egovframework-all-in-one/sts/dst/selectDtaUseStatsListView.do
```

검색(Search)
```
/sts/dst/selectDtaUseStatsListView.do
```

새 브랜치:
```
2024/pmd/EgovDtaUseStatsContoller
```

161. 자료이용현황통계 Exception 제거
- `@exception Exception/throws Exception/` 제거
- ` *   2024.08.19  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format
