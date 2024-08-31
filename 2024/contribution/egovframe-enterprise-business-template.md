# 표준프레임워크 템플릿 프로젝트 내부업무 시스템

- 셀레늄 단위 테스트
- 요청 메서드 정리

## [로그인] 셀레늄 단위 테스트

1. Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/

```xml
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.23.1</version>
    <scope>test</scope>
</dependency>
```

2. 셀레늄 사용
- Using Selenium
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/#examples

3. 셀레늄 단위 테스트 추가

```
2024/selenium/EgovLoginController
```

http://localhost:8080/ebt_webapp/


http://localhost:8080/ebt_webapp/uat/uia/egovLoginUsr.do

```
/uat/uia/egovLoginUsr.do
```

```
egovframework.let.uat.uia.web
```

```
EgovLoginControllerTestSelenium
```

```xml
<!-- https://mvnrepository.com/artifact/org.junit.jupiter/junit-jupiter-api -->
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-api</artifactId>
    <version>5.11.0</version>
    <scope>test</scope>
</dependency>
<!-- https://mvnrepository.com/artifact/org.projectlombok/lombok -->
<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
    <version>1.18.28</version>
    <scope>provided</scope>
</dependency>
```

cssSelector
```
body > div > div.header > div > div.top_menu > span.t > span
```

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/selenium/EgovLoginController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/13

https://youtu.be/rGxVxy61dx0

## 관리자 게시판 요청 메서드 정리

```
/cop/bbs/admin/selectBoardList.do
```

내부서비스관리
- 공지사항관리
  - http://localhost:8080/ebt_webapp/cop/bbs/admin/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA
- 업무게시판관리
  - http://localhost:8080/ebt_webapp/cop/bbs/admin/selectBoardList.do?bbsId=BBSMSTR_CCCCCCCCCCCC

TODO 할 일

관리자 메뉴는 메뉴별로 요청 메서드 정리를 하려고 합니다.

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리
  - 게시판사용관리
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리
  - 접속통계관리
  - 로그인정책관리

내부시스템관리
- 사용자관리
  - 사용자등록관리
  - 사용자부재관리
- 사용자권한관리
  - 권한관리
  - 사용자그룹관리
  - 사용자별권한관리
  - 롤관리
- 메뉴관리
  - 프로그램목록관리
  - 메뉴생성관리
  - 메뉴목록관리
- 코드관리
  - 분류코드관리
  - 공통코드관리
  - 상세코드관리
  - 우편번호관리

관리자 게시판 요청 메서드 정리
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- ` *   2024.08.31  이백행          컨트리뷰션 관리자 게시판 요청 메서드 정리` 개정이력 수정
- Source > Format
- onclick `event.preventDefault();` 추가

searchCnd, searchWrd

```java
model.addAttribute("bbsId", boardVO.getBbsId());
model.addAttribute("searchCnd", boardVO.getSearchCnd());
model.addAttribute("searchWrd", boardVO.getSearchWrd());
model.addAttribute("pageIndex", boardVO.getPageIndex());

//return "forward:/cop/bbs/selectBoardList.do";
return "redirect:/cop/bbs/selectBoardList.do";
```

```jsp
        var link = '<c:url value="/" />' + getLastLink(baseMenuNo).substring(1);
        if (link.indexOf('?') === -1) {
            link = link + '?';
        } else {
            link = link + '&';
        }
        link = link + 'baseMenuNo=' + baseMenuNo;
        location.href = link;

<input type="hidden" name="searchCnd" value="<c:out value="${searchVO.searchCnd}" />">
<input type="hidden" name="searchWrd" value="<c:out value="${searchVO.searchWrd}" />">

<a href="<c:url value="/cop/bbs${prefix}/addBoardArticle.do" />?bbsId=<c:out value="${boardVO.bbsId}" />&searchCnd=<c:out value="${boardVO.searchCnd}" />&searchWrd=<c:out value="${boardVO.searchWrd}" />&pageIndex=<c:out value="${boardVO.pageIndex}" />"
```

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/08/23/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/12

https://youtu.be/9-yjjsIPBWY

