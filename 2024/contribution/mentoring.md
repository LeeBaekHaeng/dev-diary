# 2024년 전자정부 표준프레임워크 컨트리뷰션 주제 멘토링

[컨트리뷰션 멘토링] ※ 컨트리뷰션 멘토링 신청 방법은 추후 별도 안내 예정
- DAY1 (09.10.화/19~21시) 장소: 상공회의소
- https://www.egovframe.go.kr/home/ntt/nttRead.do?menuNo=74&bbsId=6&nttId=1896

2024년 전자정부 표준프레임워크 컨트리뷰션(기여/공적기여) 함께 참여해요!

## 컨트리뷰션 주제

1. 단위 테스트
   - DAO 단위 테스트
   - ServiceImpl 단위 테스트
   - Controller 단위 테스트
   - 셀레늄 단위 테스트
2. 통합 테스트
   - Controller 통합 테스트
   - 셀레늄 통합 테스트
3. 시큐어코딩
   - 시큐어코딩 Exception 제거
   - 시큐어코딩 일련번호 PK 파라미터 암복호화
   - 시큐어코딩 PMD 진단/조치
4. 검색 조건 유지
5. 롬복 생성자 기반 종속성 주입

## 셀레늄 단위 테스트

Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/

셀레늄 사용하기
- Using Selenium > Examples
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/#examples

브랜치 생성
```
2024/selenium/
```

`10. 로그인 셀레늄 단위 테스트`
- https://github.com/eGovFramework/egovframe-common-components/pull/354

## 시큐어코딩 Exception 제거

개정이력 수정
```
 *   2024.09.10  이백행          컨트리뷰션 시큐어코딩 Exception 제거
```

찾기/바꾸기(Find/Replace)
```
throws Exception
```

브랜치 생성
```
2024/pmd/
```

`390. 간부일정관리 시큐어코딩 Exception 제거`
- https://github.com/eGovFramework/egovframe-common-components/pull/418

## 시큐어코딩 일련번호 PK 파라미터 암복호화

```
 *   2024.09.10  이백행          컨트리뷰션 시큐어코딩 일련번호 PK 파라미터 암복호화
```

브랜치 생성
```
2024/pk/
```

/egovframe-simple-homepage-template/src/main/webapp/WEB-INF/jsp/cop/bbs/EgovBoardMstrList.jsp
```jsp
<%@ taglib prefix="egovc" uri="/WEB-INF/tlds/egovc.tld" %>

${egovc:encrypt(result.bbsId)}

```
 *   2024.09.04  이백행          컨트리뷰션 시큐어코딩 일련번호 PK 파라미터 암복호화
```

```java
searchVO.setBbsId(EgovFileMngController.decrypt(searchVO.getBbsId()));
```

Base64Utils

`30. 로그인정책관리 시큐어코딩 일련번호 PK 파라미터 암복호화`
https://github.com/eGovFramework/egovframe-common-components/pull/386

## 시큐어코딩 PMD 진단/조치

전자정부 표준프레임워크 표준 Inspection 룰셋 적용하기

표준 Inspection 룰셋 한글/영문판의 압축파일 : 개발환경 4.2 이상 버전 사용

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.2:imp:inspection#%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80_%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC_%ED%91%9C%EC%A4%80_inspection_%EB%A3%B0%EC%85%8B_%EC%A0%81%EC%9A%A9%ED%95%98%EA%B8%B0


```
 *   2024.09.10  이백행          컨트리뷰션 시큐어코딩 PMD 진단/조치
```

## 검색 조건 유지

화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정한다.

- 화면: @GetMapping 목록화면, 상세화면, 등록화면, 수정화면
- 처리: @PostMapping 등록처리, 수정처리, 삭제처리

```java
model.addAttribute("searchCondition", sampleVO.getSearchCondition());
model.addAttribute("searchKeyword", sampleVO.getSearchKeyword());
model.addAttribute("pageIndex", sampleVO.getPageIndex());

return "redirect:/egovSampleList.do";
```

```
 *   2024.09.10  이백행          컨트리뷰션 검색 조건 유지
```

브랜치 생성
```
2024/search/
```

## 롬복 생성자 기반 종속성 주입

```java
@Repository

@Service

@RequiredArgsConstructor

private final BBSManageDAO bbsManageDAO;
```

```
 *   2024.09.10  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입
```

브랜치 생성
```
2024/di/
```

`1240. 연계기관관리 롬복 생성자 기반 종속성 주입`
- https://github.com/eGovFramework/egovframe-common-components/pull/420

## 공통컴포넌트 > 시스템관리 메뉴

```
시스템관리
960. 공통분류코드
970. 공통상세코드
980. 공통코드
1000. 우편번호관리
1010. 행정코드관리
1020. 기관코드수신
1030. 로그관리
1040. 사용로그관리
1050. 송/수신로그관리
1060. 시스템이력관리
1070. 웹로그관리
1080. 접속로그관리
1085. 개인정보조회로그관리
1090. 메뉴리스트관리
1091. 메뉴관리리스트
1100. 메뉴생성관리
1101. 사이트맵
1110. 바로가기메뉴관리
1111. 프로그램관리
1112. 프로그램변경요청관리
1113. 프로그램변경요청처리
1114. 프로그램변경이력
1120. 배치작업관리
1130. 배치결과관리
1140. 스케줄처리
1150. 백업관리
1151. 백업결과관리
1160. 네트워크관리
1170. 서버정보관리
1171. 서버(S/W)목록
1180. 장애신청관리
1190. 장애처리결과관리
```
