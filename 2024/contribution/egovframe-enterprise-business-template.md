# 표준프레임워크 템플릿 프로젝트 내부업무 시스템

- 셀레늄 단위 테스트
- 요청 메서드 정리/검색 조건 유지
- 롬복 생성자 기반 종속성 주입

## 검색 조건 유지 목차
- [[내부서비스관리 > 내부업무게시판관리 > 게시판생성관리] 검색 조건 유지](#내부서비스관리--내부업무게시판관리--게시판생성관리-검색-조건-유지)
- [게시판사용관리 검색 조건 유지](#게시판사용관리-검색-조건-유지)
- [접속로그관리 검색 조건 유지](#접속로그관리-검색-조건-유지)
- [[접속통계관리] 검색 조건 유지](#접속통계관리-검색-조건-유지)
- [[로그인정책관리] 검색 조건 유지](#로그인정책관리-검색-조건-유지)
- [[사용자등록관리] 검색 조건 유지](#사용자등록관리-검색-조건-유지)
- [[사용자부재관리] 검색 조건 유지](#사용자부재관리-검색-조건-유지)
- [[권한관리] 검색 조건 유지](#권한관리-검색-조건-유지)
- [[사용자그룹관리] 검색 조건 유지](#사용자그룹관리-검색-조건-유지)
- [[사용자별권한관리] 검색 조건 유지](#사용자별권한관리-검색-조건-유지)
- [[롤관리] 검색 조건 유지](#롤관리-검색-조건-유지)
- [[프로그램목록관리] 검색 조건 유지](#프로그램목록관리-검색-조건-유지)
- [[메뉴생성관리] 검색 조건 유지](#메뉴생성관리-검색-조건-유지)

## 롬복 생성자 기반 종속성 주입 목차
- [[게시판생성관리] 롬복 생성자 기반 종속성 주입](#게시판생성관리-롬복-생성자-기반-종속성-주입)
- [[게시판사용관리] 롬복 생성자 기반 종속성 주입](#게시판사용관리-롬복-생성자-기반-종속성-주입)
- [[공지사항관리] 롬복 생성자 기반 종속성 주입](#공지사항관리-롬복-생성자-기반-종속성-주입)
- [[접속로그관리] 롬복 생성자 기반 종속성 주입](#접속로그관리-롬복-생성자-기반-종속성-주입)
- [[접속통계관리] 롬복 생성자 기반 종속성 주입](#접속통계관리-롬복-생성자-기반-종속성-주입)
- [[로그인정책관리] 롬복 생성자 기반 종속성 주입](#로그인정책관리-롬복-생성자-기반-종속성-주입)
- [[사용자등록관리] 롬복 생성자 기반 종속성 주입](#사용자등록관리-롬복-생성자-기반-종속성-주입)
- [[사용자부재관리] 롬복 생성자 기반 종속성 주입](#사용자부재관리-롬복-생성자-기반-종속성-주입)
- [[권한관리] 롬복 생성자 기반 종속성 주입](#권한관리-롬복-생성자-기반-종속성-주입)
- [[사용자그룹관리] 롬복 생성자 기반 종속성 주입](#사용자그룹관리-롬복-생성자-기반-종속성-주입)
- [[사용자별권한관리] 롬복 생성자 기반 종속성 주입](#사용자별권한관리-롬복-생성자-기반-종속성-주입)

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


### [내부서비스관리 > 내부업무게시판관리 > 게시판생성관리] 검색 조건 유지

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/cop/bbs/SelectBBSMasterInfs.do?baseMenuNo=5000000
```

검색(Search)
```
/cop/bbs/SelectBBSMasterInfs.do
```

브랜치 생성
```
2024/search/EgovBBSAttributeManageController
```

- Source > Format
- searchCnd/searchWrd 추가
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- `method="post"` 를 `method="get"` 으로 수정
- `#LINK/javascript:return false;` 제거
- onclick `event.preventDefault();` 추가
- ` *   2024.09.05  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

```java
model.addAttribute("searchCnd", boardMasterVO.getSearchCnd());
model.addAttribute("searchWrd", boardMasterVO.getSearchWrd());
model.addAttribute("pageIndex", boardMasterVO.getPageIndex());

//forward "redirect:/cop/bbs/SelectBBSMasterInfs.do";
return "redirect:/cop/bbs/SelectBBSMasterInfs.do";
```

```jsp
<input type="hidden" name="searchCnd" value="<c:out value="${searchVO.searchCnd}" />">
<input type="hidden" name="searchWrd" value="<c:out value="${searchVO.searchWrd}" />">

?searchCnd=<c:out value="${searchVO.searchCnd}" />&searchWrd=<c:out value="${searchVO.searchWrd}" />&pageIndex=<c:out value="${searchVO.pageIndex}" />
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][내부서비스관리 > 내부업무게시판관리 > 게시판생성관리] 검색 조건 유지

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][게시판생성관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovBBSAttributeManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/14

https://youtu.be/E88SgzAfygc

### 게시판사용관리 검색 조건 유지

- Source > Format
- searchCnd/searchWrd 추가
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- `method="post"` 를 `method="get"` 으로 수정
- `return false;/JavaScript:` 제거
- onclick `event.preventDefault();` 추가
- ` *   2024.09.06  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/cop/com/selectBBSUseInfs.do
```

검색(Search)
```
/cop/com/selectBBSUseInfs.do
```

브랜치 생성
```
2024/search/EgovBBSUseInfoManageController
```

/egovframe-enterprise-business-template/src/main/resources/egovframework/validator/let/cop/com/EgovCopComManage.xml
`<field property="bbsNm" depends="required">`
`<field property="trgetNm" depends="required">`

/egovframe-enterprise-business-template/src/main/webapp/WEB-INF/jsp/cop/com/EgovBoardUseInfInqire.jsp
```jsp
<input type="hidden" name="bbsNm" value="<c:out value="${bdUseVO.bbsNm}" />">
<input type="hidden" name="trgetNm" value="<c:out value="${bdUseVO.trgetId}" />">

<!-- <label for="rdo1" class="f_rdo mr30 on"> -->
<label for="rdo1">
<label for="rdo1" class="f_rdo mr30 on">
<!-- <input type="radio" id="rdo1" name="aaa"  value="Y" <c:if test="${bdUseVO.useAt == 'Y'}"> checked="checked"</c:if>> -->
<input type="radio" id="rdo1" name="useAt"  value="Y" <c:if test="${bdUseVO.useAt == 'Y'}"> checked="checked"</c:if>>

<!-- <label for="rdo2" class="f_rdo"> -->
<label for="rdo2">
<!-- <input type="radio" id="rdo2" name="aa" value="N" <c:if test="${bdUseVO.useAt == 'N'}"> checked="checked"</c:if>> -->
<input type="radio" id="rdo2" name="useAt" value="N" <c:if test="${bdUseVO.useAt == 'N'}"> checked="checked"</c:if>>
```

```java
model.addAttribute("searchCnd", bdUseVO.getSearchCnd());
model.addAttribute("searchWrd", bdUseVO.getSearchWrd());
model.addAttribute("pageIndex", bdUseVO.getPageIndex());

//return "forward:/cop/com/selectBBSUseInfs.do";
return "redirect:/cop/com/selectBBSUseInfs.do";
```

```jsp
<input type="hidden" name="searchCnd" value="<c:out value="${searchVO.searchCnd}" />">
<input type="hidden" name="searchWrd" value="<c:out value="${searchVO.searchWrd}" />">

&searchCnd=<c:out value="${searchVO.searchCnd}" />&searchWrd=<c:out value="${searchVO.searchWrd}" />&pageIndex=<c:out value="${searchVO.pageIndex}" />
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템] 게시판사용관리 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovBBSUseInfoManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/15

https://youtu.be/kjDZfrWPdUI

### 접속로그관리 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- onclick `event.preventDefault();` 추가
- ` *   2024.09.06  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sym/log/clg/SelectLoginLogList.do
```

검색(Search)
```
/sym/log/clg/SelectLoginLogList.do
```

브랜치 생성
```
2024/search/EgovLoginLogController
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템] 접속로그관리 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovLoginLogController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/16

https://youtu.be/vm8AGADxhrA

### [로그인] 셀레늄 단위 테스트: v4.13.0 로 버전 수정 했습니다.

v4.13.0 로 버전 수정 했습니다.

selenium jdk 8

Java 8 support in Selenium

https://www.selenium.dev/blog/2023/java-8-support/

https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java/4.13.0

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][로그인] 셀레늄 단위 테스트: v4.13.0 로 버전 수정 했습니다.

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/selenium/EgovLoginController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/18

### [접속통계관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- onclick `event.preventDefault();` 추가
- ` *   2024.09.10  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정
- `fromDate/toDate` 에 `searchBgnDe/searchEndDe` 값설정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sts/cst/selectConectStats.do
```

검색(Search)
```
/sts/cst/selectConectStats.do
```

브랜치 생성
```
2024/search/EgovConectStatsController
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][접속통계관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovConectStatsController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/19

https://youtu.be/qnh4gSA7u7Q

### [로그인정책관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- onclick `event.preventDefault();` 추가
- ` *   2024.09.11  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/uat/uap/selectLoginPolicyList.do
```

검색(Search)
```
/uat/uap/selectLoginPolicyList.do
```

브랜치 생성
```
2024/search/EgovLoginPolicyController
```

```java
		addAttributeSearch(loginPolicy, model);

//		return "forward:/uat/uap/selectLoginPolicyList.do";
		return "redirect:/uat/uap/selectLoginPolicyList.do";
	}

	private void addAttributeSearch(LoginPolicy loginPolicy, ModelMap model) {
		model.addAttribute("searchCondition", loginPolicy.getSearchCondition());
		model.addAttribute("searchKeyword", loginPolicy.getSearchKeyword());
		model.addAttribute("pageIndex", loginPolicy.getPageIndex());

		model.addAttribute("emplyrId", loginPolicy.getEmplyrId());
	}
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][로그인정책관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovLoginPolicyController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/20

https://youtu.be/GHdvIVf3rhM

### [사용자등록관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- onclick `event.preventDefault();` 추가
- 저장 버튼 클릭시 `사용자아이디 중복체크를 실행하십시오` 추가
- ModelMap 을 Model 로 통일
- resultMsg 정리가 필요함
- ` *   2024.09.12  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/uss/umt/user/EgovUserManage.do
```

검색
```
/uss/umt/user/EgovUserManage.do
```

브랜치 생성
```
2024/search/EgovUserManageController
```

```java

		addAttributeSearch(userManageVO, model);

//		return "forward:/uss/umt/user/EgovUserManage.do";
		return "redirect:/uss/umt/user/EgovUserManage.do";

	private void addAttributeSearch(UserManageVO userManageVO, Model model) {
		model.addAttribute("searchCondition", userManageVO.getSearchCondition());
		model.addAttribute("searchKeyword", userManageVO.getSearchKeyword());
		model.addAttribute("pageIndex", userManageVO.getPageIndex());
	}
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자등록관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovUserManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/21

https://youtu.be/hpp66IRalDE

### [사용자부재관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- onclick `event.preventDefault();` 추가
- ModelMap 을 Model 로 통일
- ` *   2024.09.13  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/uss/ion/uas/selectUserAbsnceListView.do
```

검색
```
/uss/ion/uas/selectUserAbsnceListView.do
```

브랜치 생성
```
2024/search/EgovUserAbsnceController
```

```java
		addAttributeSearch(userAbsnceVO, model);
//		return "forward:/uss/ion/uas/selectUserAbsnceList.do";
		return "redirect:/uss/ion/uas/selectUserAbsnceList.do";

	private void addAttributeSearch(UserAbsnceVO userAbsnceVO, Model model) {
		model.addAttribute("searchCondition", userAbsnceVO.getSearchCondition());
		model.addAttribute("searchKeyword", userAbsnceVO.getSearchKeyword());
		model.addAttribute("pageIndex", userAbsnceVO.getPageIndex());

		model.addAttribute("selAbsnceAt", userAbsnceVO.getSelAbsnceAt());
	}
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자부재관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovUserAbsnceController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/22

https://youtu.be/iTagYLjRs84

### [권한관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- onclick `event.preventDefault();` 추가
- ModelMap 을 Model 로 통일
- ` *   2024.09.14  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/ram/EgovAuthorList.do
```

검색
```
/sec/ram/EgovAuthorList.do
```

브랜치 생성
```
2024/search/EgovAuthorManageController
```

```java
			addAttributeSearch(authorManageVO, model);
//			return "forward:/sec/ram/EgovAuthor.do";
			return "redirect:/sec/ram/EgovAuthor.do";

	private void addAttributeSearch(final AuthorManageVO authorManageVO, final Model model) {
		model.addAttribute("searchCondition", authorManageVO.getSearchCondition());
		model.addAttribute("searchKeyword", authorManageVO.getSearchKeyword());
		model.addAttribute("pageIndex", authorManageVO.getPageIndex());

		model.addAttribute("authorCode", authorManageVO.getAuthorCode());
	}
```

```jsp
// 목록
?searchCondition=<c:out value="${authorManageVO.searchCondition}" />&searchKeyword=<c:out value="${authorManageVO.searchKeyword}" />&pageIndex=<c:out value="${authorManageVO.pageIndex}" />


```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
- 사용자권한관리
  - 권한관리: 검색 조건 유지 2024-09-14
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][권한관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovAuthorManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/23

https://youtu.be/jxn9hdU4BPY

### [사용자그룹관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- ModelMap 을 Model 로 통일
- addAttributeSearch 메서드 추가
- onclick `event.preventDefault();` 추가
- ` *   2024.09.16  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정
- 등록 처리 후 수정 화면 이동에서 목록 화면 이동으로 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/gmt/EgovGroupList.do
```

검색
```
/sec/gmt/EgovGroupList.do
```

브랜치 생성
```
2024/search/EgovGroupManageController
```

```java
	private void addAttributeSearch(final AuthorManageVO authorManageVO, final Model model) {
		model.addAttribute("searchCondition", authorManageVO.getSearchCondition());
		model.addAttribute("searchKeyword", authorManageVO.getSearchKeyword());
		model.addAttribute("pageIndex", authorManageVO.getPageIndex());

		model.addAttribute("groupId", groupManageVO.getGroupId());
	}
```

```java
		addAttributeSearch(groupManageVO, model);
//		return "forward:/sec/gmt/EgovGroupList.do";
		return "redirect:/sec/gmt/EgovGroupList.do";
```

```java
			addAttributeSearch(groupManageVO, model);
//			return "forward:/sec/gmt/EgovGroup.do";
			return "redirect:/sec/gmt/EgovGroup.do";
```

```jsp
// 목록
?searchCondition=<c:out value="${groupManageVO.searchCondition}" />&searchKeyword=<c:out value="${groupManageVO.searchKeyword}" />&pageIndex=<c:out value="${groupManageVO.pageIndex}" />
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
- 사용자권한관리
  - 권한관리: 검색 조건 유지 2024-09-14
  - 사용자그룹관리: 검색 조건 유지 2024-09-16
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자그룹관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovGroupManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/24

https://youtu.be/AXNT97tHOnI

### [사용자별권한관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- ModelMap 을 Model 로 통일
- addAttributeSearch 메서드 추가
- onclick `event.preventDefault();` 추가
- ` *   2024.09.17  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/rgm/EgovAuthorGroupListView.do
```

검색
```
/sec/rgm/EgovAuthorGroupListView.do
```

브랜치 생성
```
2024/search/EgovAuthorGroupController
```

```java
	private void addAttributeSearch(final AuthorGroupVO authorGroupVO, final Model model) {
		model.addAttribute("searchCondition", authorGroupVO.getSearchCondition());
		model.addAttribute("searchKeyword", authorGroupVO.getSearchKeyword());
		model.addAttribute("pageIndex", authorGroupVO.getPageIndex());
	}
```

```java
		addAttributeSearch(authorGroupVO, model);
//		return "forward:/sec/rgm/EgovAuthorGroupList.do";
		return "redirect:/sec/rgm/EgovAuthorGroupList.do";
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
- 사용자권한관리
  - 권한관리: 검색 조건 유지 2024-09-14
  - 사용자그룹관리: 검색 조건 유지 2024-09-16
  - 사용자별권한관리: 검색 조건 유지 2024-09-17
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

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자별권한관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovAuthorGroupController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/25

https://youtu.be/Nm8yTsPAwrw

### [롤관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- ModelMap 을 Model 로 통일
- addAttributeSearch 메서드 추가
- onclick `event.preventDefault();` 추가
- ` *   2024.09.18  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정
- roleManage 를 roleManageVO 로 이름 바꾸기

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/rmt/EgovRoleList.do
```

검색
```
/sec/rmt/EgovRoleList.do
```

브랜치 생성
```
2024/search/EgovRoleManageController
```

```java
	private void addAttributeSearch(final AuthorGroupVO authorGroupVO, final Model model) {
		model.addAttribute("searchCondition", authorGroupVO.getSearchCondition());
		model.addAttribute("searchKeyword", authorGroupVO.getSearchKeyword());
		model.addAttribute("pageIndex", authorGroupVO.getPageIndex());
	}
```

```java
		addAttributeSearch(roleManageVO, model);
//		return "forward:/sec/rmt/EgovRoleList.do";
		return "redirect:/sec/rmt/EgovRoleList.do";
```

```jsp
?searchCondition=<c:out value="${roleManageVO.searchCondition}" />&searchKeyword=<c:out value="${roleManageVO.searchKeyword}" />&pageIndex=<c:out value="${roleManageVO.pageIndex}" />
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
- 사용자권한관리
  - 권한관리: 검색 조건 유지 2024-09-14
  - 사용자그룹관리: 검색 조건 유지 2024-09-16
  - 사용자별권한관리: 검색 조건 유지 2024-09-17
  - 롤관리: 검색 조건 유지 2024-09-18
- 메뉴관리
  - 프로그램목록관리
  - 메뉴생성관리
  - 메뉴목록관리
- 코드관리
  - 분류코드관리
  - 공통코드관리
  - 상세코드관리
  - 우편번호관리

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][롤관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovRoleManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/27

https://youtu.be/LAyecbrKj64

### [프로그램목록관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- ModelMap 을 Model 로 통일
- addAttributeSearch 메서드 추가
- onclick `event.preventDefault();` 추가
- ` *   2024.09.21  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정
- 할 일(TODO): 등록화면과 수정화면을 분리해야 함

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sym/prm/EgovProgramListManageSelect.do
```

검색
```
/sym/prm/EgovProgramListManageSelect.do
```

브랜치 생성
```
2024/search/EgovProgrmManageController
```

```java
	private void addAttributeSearch(final ComDefaultVO searchVO, final Model model) {
		model.addAttribute("searchCondition", searchVO.getSearchCondition());
		model.addAttribute("searchKeyword", searchVO.getSearchKeyword());
		model.addAttribute("pageIndex", searchVO.getPageIndex());
	}
```

```java
		addAttributeSearch(searchVO, model);
//		return "forward:/sym/prm/EgovProgramListManageSelect.do";
		return "redirect:/sym/prm/EgovProgramListManageSelect.do";
```

```jsp
//     document.progrmManageForm.action = "<c:url value='/sym/prm/EgovProgramListDetailSelectUpdt.do'/>";
    document.progrmManageForm.action = "<c:url value='/sym/prm/EgovProgramListDetailSelect.do'/>";

?searchCondition=<c:out value="${searchVO.searchCondition}" />&searchKeyword=<c:out value="${searchVO.searchKeyword}" />&pageIndex=<c:out value="${searchVO.pageIndex}" />
?searchCondition=<c:out value="${searchVO.searchCondition}" />&searchKeyword=<c:out value="${param.searchKeyword}" />&pageIndex=<c:out value="${searchVO.pageIndex}" />

                                <input name="searchCondition" type="hidden" value="<c:out value="${param.searchCondition}" />">
                                <input name="searchKeyword" type="hidden" value="<c:out value="${param.searchKeyword}" />">
                                <input name="pageIndex" type="hidden" value="<c:out value="${param.pageIndex}" />">
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
- 사용자권한관리
  - 권한관리: 검색 조건 유지 2024-09-14
  - 사용자그룹관리: 검색 조건 유지 2024-09-16
  - 사용자별권한관리: 검색 조건 유지 2024-09-17
  - 롤관리: 검색 조건 유지 2024-09-18
- 메뉴관리
  - 프로그램목록관리: 검색 조건 유지 2024-09-21
  - 메뉴생성관리
  - 메뉴목록관리
- 코드관리
  - 분류코드관리
  - 공통코드관리
  - 상세코드관리
  - 우편번호관리

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][프로그램목록관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovProgrmManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/28

https://youtu.be/cuA0Gaj4OlY

### [메뉴생성관리] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- ModelMap 을 Model 로 통일
- addAttributeSearch 메서드 추가
- onclick `event.preventDefault();` 추가
- ` *   2024.09.24  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sym/mnu/mcm/EgovMenuCreatManageSelect.do
```

검색
```
/sym/mnu/mcm/EgovMenuCreatManageSelect.do
```

브랜치 생성
```
2024/search/EgovMenuCreateManageController
```

```java
	private void addAttributeSearch(final ComDefaultVO searchVO, final Model model) {
		model.addAttribute("searchCondition", searchVO.getSearchCondition());
		model.addAttribute("searchKeyword", searchVO.getSearchKeyword());
		model.addAttribute("pageIndex", searchVO.getPageIndex());
	}
```

```java
		model.addAttribute("authorCode", menuCreatVO.getAuthorCode());
		addAttributeSearch(searchVO, model);
//		return "forward:/sym/mnu/mcm/EgovMenuCreatSelect.do";
		return "redirect:/sym/mnu/mcm/EgovMenuCreatSelect.do";
```

내부서비스관리
- 내부업무게시판관리
  - 게시판생성관리: 검색 조건 유지 2024-09-05
  - 게시판사용관리: 검색 조건 유지 2024-09-06
  - 공지사항관리: 관리자 게시판 요청 메서드 정리
  - 업무게시판관리: 관리자 게시판 요청 메서드 정리
- 사용현황관리
  - 접속로그관리: 검색 조건 유지 2024-09-06
  - 접속통계관리: 검색 조건 유지 2024-09-10
  - 로그인정책관리: 검색 조건 유지 2024-09-11

내부시스템관리
- 사용자관리
  - 사용자등록관리: 검색 조건 유지 2024-09-12
  - 사용자부재관리: 검색 조건 유지 2024-09-13
- 사용자권한관리
  - 권한관리: 검색 조건 유지 2024-09-14
  - 사용자그룹관리: 검색 조건 유지 2024-09-16
  - 사용자별권한관리: 검색 조건 유지 2024-09-17
  - 롤관리: 검색 조건 유지 2024-09-18
- 메뉴관리
  - 프로그램목록관리: 검색 조건 유지 2024-09-21
  - 메뉴생성관리: 검색 조건 유지 2024-09-24
  - 메뉴목록관리
- 코드관리
  - 분류코드관리
  - 공통코드관리
  - 상세코드관리
  - 우편번호관리

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][메뉴생성관리] 검색 조건 유지

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/search/EgovMenuCreateManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/29

https://youtu.be/B9u18Utw1wY

### [게시판생성관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/cop/bbs/SelectBBSMasterInfs.do
```

검색
```
/cop/bbs/SelectBBSMasterInfs.do
```

브랜치 생성
```
2024/di/EgovBBSAttributeManageController
```

`@Repository` DAO
```java
//@Repository("BBSAttributeManageDAO")
@Repository
public class BBSAttributeManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("EgovBBSAttributeManageService")
@Service
@RequiredArgsConstructor
public class EgovBBSAttributeManageServiceImpl extends EgovAbstractServiceImpl
		implements EgovBBSAttributeManageService {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovBBSAttributeManageServiceImpl.class);

//	@Resource(name = "BBSAttributeManageDAO")
//	private BBSAttributeManageDAO attrbMngDAO;
	private final BBSAttributeManageDAO attrbMngDAO;

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseDAO;

//	@Resource(name = "EgovUserInfManageService")
//	private EgovUserInfManageService userService;
	private final EgovUserInfManageService userService;

//	@Resource(name = "egovBBSMstrIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService idgenService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

	// ---------------------------------
	// 2009.06.26 : 2단계 기능 추가
	// ---------------------------------
//	@Resource(name = "BBSAddedOptionsDAO")
//	private BBSAddedOptionsDAO addedOptionsDAO;
	private final BBSAddedOptionsDAO addedOptionsDAO;
	//// -------------------------------
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovBBSAttributeManageController {

//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;

//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

```java
@Controller
@RequiredArgsConstructor
public class EgovBBSManageController {

	@Resource(name = "EgovBBSManageService")
	private EgovBBSManageService bbsMngService;

//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;
```

```java
@Controller
@RequiredArgsConstructor
public class EgovBBSAdminManageController {

	@Resource(name = "EgovBBSManageService")
	private EgovBBSManageService bbsMngService;

//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][게시판생성관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovBBSAttributeManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/30

https://youtu.be/1Nmklfse_JQ

### [게시판사용관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/cop/com/selectBBSUseInfs.do
```

검색
```
/cop/com/selectBBSUseInfs.do
```

브랜치 생성
```
2024/di/EgovBBSUseInfoManageController
```

`@Repository` DAO
```java
//@Repository("BBSUseInfoManageDAO")
@Repository
public class BBSUseInfoManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("EgovBBSUseInfoManageService")
@Service
@RequiredArgsConstructor
public class EgovBBSUseInfoManageServiceImpl extends EgovAbstractServiceImpl implements EgovBBSUseInfoManageService {

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovBBSUseInfoManageController {

//	@Resource(name = "EgovBBSUseInfoManageService")
//	private EgovBBSUseInfoManageService bbsUseService;
	private final EgovBBSUseInfoManageService bbsUseService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

	// SHT-CUSTOMIZING//@Resource(name = "EgovCommunityManageService")
	// SHT-CUSTOMIZING//private EgovCommunityManageService cmmntyService; // 커뮤니티
	// 관리자 권한 확인

	// SHT-CUSTOMIZING//@Resource(name = "EgovClubManageService")
	// SHT-CUSTOMIZING//private EgovClubManageService clubService; // 동호회 운영자 권한 확인

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```


[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][게시판사용관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovBBSUseInfoManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/31

https://youtu.be/mnipL2A7NYs

### [공지사항관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/cop/bbs/admin/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA
```

검색
```
/cop/bbs/admin/selectBoardList.do
```

브랜치 생성
```
2024/di/EgovBBSAdminManageController
```

`@Repository` DAO
```java
//@Repository("BBSManageDAO")
@Repository
public class BBSManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("EgovBBSManageService")
@Service
@RequiredArgsConstructor
public class EgovBBSManageServiceImpl extends EgovAbstractServiceImpl implements EgovBBSManageService {

//	@Resource(name = "BBSManageDAO")
//	private BBSManageDAO bbsMngDAO;
	private final BBSManageDAO bbsMngDAO;

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileService;
	private final EgovFileMngService fileService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
//	private final EgovPropertyService propertyService;

//	@Resource(name = "leaveaTrace")
//	LeaveaTrace leaveaTrace;
//	private final LeaveaTrace leaveaTrace;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovBBSAdminManageController {

//	@Resource(name = "EgovBBSManageService")
//	private EgovBBSManageService bbsMngService;
	private final EgovBBSManageService bbsMngService;

//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileMngService;
	private final EgovFileMngService fileMngService;

//	@Resource(name = "EgovFileMngUtil")
//	private EgovFileMngUtil fileUtil;
	private final EgovFileMngUtil fileUtil;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
//	private final EgovMessageSource egovMessageSource;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

```java
@Controller
@RequiredArgsConstructor
public class EgovBBSManageController {

//	@Resource(name = "EgovBBSManageService")
//	private EgovBBSManageService bbsMngService;
	private final EgovBBSManageService bbsMngService;
```

```java
@Controller
@SessionAttributes(types = ComDefaultVO.class)
@RequiredArgsConstructor
public class EgovMainController {

	/**
	 * EgovBBSManageService
	 */
//	@Resource(name = "EgovBBSManageService")
//	private EgovBBSManageService bbsMngService;
	private final EgovBBSManageService bbsMngService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][공지사항관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovBBSAdminManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/32

https://youtu.be/ctboEni2Wq8

### [접속로그관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sym/log/clg/SelectLoginLogList.do
```

검색
```
/sym/log/clg/SelectLoginLogList.do
```

브랜치 생성
```
2024/di/EgovLoginLogController
```

`@Repository` DAO
```java
//@Repository("loginLogDAO")
@Repository
public class LoginLogDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("EgovLoginLogService")
@Service
@RequiredArgsConstructor
public class EgovLoginLogServiceImpl extends EgovAbstractServiceImpl implements EgovLoginLogService {

//	@Resource(name = "loginLogDAO")
//	private LoginLogDAO loginLogDAO;
	private final LoginLogDAO loginLogDAO;

	/** ID Generation */
//	@Resource(name = "egovLoginLogIdGnrService")
//	private EgovIdGnrService egovLoginLogIdGnrService;
	private final EgovIdGnrService egovLoginLogIdGnrService;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovLoginLogController {

//	@Resource(name = "EgovLoginLogService")
//	private EgovLoginLogService loginLogService;
	private final EgovLoginLogService loginLogService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;
```

```java
@RequiredArgsConstructor
public class EgovLoginLogAspect {

//	@Resource(name = "EgovLoginLogService")
//	private EgovLoginLogService loginLogService;
	private final EgovLoginLogService loginLogService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][접속로그관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovLoginLogController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/33

https://youtu.be/F33U297VlUM

### [접속통계관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sts/cst/selectConectStats.do
```

검색
```
/sts/cst/selectConectStats.do
```

브랜치 생성
```
2024/di/EgovConectStatsController
```

`@Repository` DAO
```java
//@Repository("conectStatsDAO")
@Repository
public class ConectStatsDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("conectStatsService")
@Service
@RequiredArgsConstructor
public class EgovConectStatsServiceImpl extends EgovAbstractServiceImpl implements EgovConectStatsService {

//	@Resource(name = "conectStatsDAO")
//	private ConectStatsDAO conectStatsDAO;
	private final ConectStatsDAO conectStatsDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovConectStatsController {

	/** EgovConectStatsService */
//	@Resource(name = "conectStatsService")
//	private EgovConectStatsService conectStatsService;
	private final EgovConectStatsService conectStatsService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][접속통계관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovConectStatsController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/34

https://youtu.be/CTSIk7YpKfY

### [로그인정책관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/uat/uap/selectLoginPolicyList.do
```

검색
```
/uat/uap/selectLoginPolicyList.do
```

브랜치 생성
```
2024/di/EgovLoginPolicyController
```

`@Repository` DAO
```java
//@Repository("loginPolicyDAO")
@Repository
public class LoginPolicyDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("egovLoginPolicyService")
@Service
@RequiredArgsConstructor
public class EgovLoginPolicyServiceImpl extends EgovAbstractServiceImpl implements EgovLoginPolicyService {

//	@Resource(name = "loginPolicyDAO")
//	LoginPolicyDAO loginPolicyDAO;
	private final LoginPolicyDAO loginPolicyDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovLoginPolicyController {

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovLoginPolicyService")
//	EgovLoginPolicyService egovLoginPolicyService;
	private final EgovLoginPolicyService egovLoginPolicyService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

```java
@Controller
@RequiredArgsConstructor
public class EgovLoginController {

	/** EgovLoginService */
	@Resource(name = "loginService")
	private EgovLoginService loginService;

	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	/** EgovLoginPolicyService */
//	@Resource(name = "egovLoginPolicyService")
//	EgovLoginPolicyService egovLoginPolicyService;
	private final EgovLoginPolicyService egovLoginPolicyService;

```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][로그인정책관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovLoginPolicyController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/35

https://youtu.be/4EXSzLxqdU0

### [사용자등록관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/uss/umt/user/EgovUserManage.do
```

검색
```
/uss/umt/user/EgovUserManage.do
```

브랜치 생성
```
2024/di/EgovUserManageController
```

`@Repository` DAO
```java
//@Repository("userManageDAO")
@Repository
public class UserManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("userManageService")
@Service
@RequiredArgsConstructor
public class EgovUserManageServiceImpl extends EgovAbstractServiceImpl implements EgovUserManageService {

	/** userManageDAO */
//	@Resource(name = "userManageDAO")
//	private UserManageDAO userManageDAO;
	private final UserManageDAO userManageDAO;

	/** mberManageDAO */
	// EBT-CUSTOMIZING//@Resource(name="mberManageDAO")
	// EBT-CUSTOMIZING//private MberManageDAO mberManageDAO;

	/** entrprsManageDAO */
	// EBT-CUSTOMIZING//@Resource(name="entrprsManageDAO")
	// EBT-CUSTOMIZING//private EntrprsManageDAO entrprsManageDAO;

	/** egovUsrCnfrmIdGnrService */
//	@Resource(name = "egovUsrCnfrmIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovUsrCnfrmIdGnrService;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovUserManageController {

	/** userManageService */
//	@Resource(name = "userManageService")
//	private EgovUserManageService userManageService;
	private final EgovUserManageService userManageService;

	/** cmmUseService */
//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
	private final EgovPropertyService propertiesService;

	/** DefaultBeanValidator beanValidator */
//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자등록관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovUserManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/36

https://youtu.be/JFaQrJ-zZzM

### [사용자부재관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/uss/ion/uas/selectUserAbsnceListView.do
```

검색
```
/uss/ion/uas/selectUserAbsnceListView.do
```

브랜치 생성
```
2024/di/EgovUserAbsnceController
```

`@Repository` DAO
```java
//@Repository("userAbsnceDAO")
@Repository
public class UserAbsnceDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("egovUserAbsnceService")
@Service
@RequiredArgsConstructor
public class EgovUserAbsnceServiceImpl extends EgovAbstractServiceImpl implements EgovUserAbsnceService {

//	@Resource(name = "userAbsnceDAO")
//	private UserAbsnceDAO userAbsnceDAO;
	private final UserAbsnceDAO userAbsnceDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovUserAbsnceController {

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovUserAbsnceService")
//	private EgovUserAbsnceService egovUserAbsnceService;
	private final EgovUserAbsnceService egovUserAbsnceService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자부재관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovUserAbsnceController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/37

https://youtu.be/Tb3aGXbGcAM

### [권한관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/ram/EgovAuthorList.do
```

검색
```
/sec/ram/EgovAuthorList.do
```

브랜치 생성
```
2024/di/EgovAuthorManageController
```

`@Repository` DAO
```java
//@Repository("authorManageDAO")
@Repository
public class AuthorManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("egovAuthorManageService")
@Service
@RequiredArgsConstructor
public class EgovAuthorManageServiceImpl extends EgovAbstractServiceImpl implements EgovAuthorManageService {

//	@Resource(name = "authorManageDAO")
//	private AuthorManageDAO authorManageDAO;
	private final AuthorManageDAO authorManageDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovAuthorManageController {

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovAuthorManageService")
//	private EgovAuthorManageService egovAuthorManageService;
	private final EgovAuthorManageService egovAuthorManageService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
//	private final EgovPropertyService propertiesService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

```java
@Controller
@RequiredArgsConstructor
public class EgovAuthorGroupController {

	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	@Resource(name = "egovAuthorGroupService")
	private EgovAuthorGroupService egovAuthorGroupService;

//	@Resource(name = "egovAuthorManageService")
//	private EgovAuthorManageService egovAuthorManageService;
	private final EgovAuthorManageService egovAuthorManageService;
```

```java
@Controller
@RequiredArgsConstructor
public class EgovRoleManageController {

	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	@Resource(name = "egovRoleManageService")
	private EgovRoleManageService egovRoleManageService;

	@Resource(name = "EgovCmmUseService")
	EgovCmmUseService egovCmmUseService;

//	@Resource(name = "egovAuthorManageService")
//	private EgovAuthorManageService egovAuthorManageService;
	private final EgovAuthorManageService egovAuthorManageService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][권한관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovAuthorManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/38

https://youtu.be/X9VfFWzj4qo

### [사용자그룹관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/gmt/EgovGroupList.do
```

검색
```
/sec/gmt/EgovGroupList.do
```

브랜치 생성
```
2024/di/EgovGroupManageController
```

`@Repository` DAO
```java
//@Repository("groupManageDAO")
@Repository
public class GroupManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("egovGroupManageService")
@Service
@RequiredArgsConstructor
public class EgovGroupManageServiceImpl extends EgovAbstractServiceImpl implements EgovGroupManageService {

//	@Resource(name = "groupManageDAO")
//	private GroupManageDAO groupManageDAO;
	private final GroupManageDAO groupManageDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovGroupManageController {

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovGroupManageService")
//	private EgovGroupManageService egovGroupManageService;
	private final EgovGroupManageService egovGroupManageService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
//	private final EgovPropertyService propertiesService;

	/** Message ID Generation */
//	@Resource(name = "egovGroupIdGnrService")
//	private EgovIdGnrService egovGroupIdGnrService;
	private final EgovIdGnrService egovGroupIdGnrService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자그룹관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovGroupManageController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/39

https://youtu.be/o4Pj0hF1id4

### [사용자별권한관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/ebt_webapp/sec/rgm/EgovAuthorGroupListView.do
```

검색
```
/sec/rgm/EgovAuthorGroupListView.do
```

브랜치 생성
```
2024/di/EgovAuthorGroupController
```

`@Repository` DAO
```java
//@Repository("authorGroupDAO")
@Repository
public class AuthorGroupDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("egovAuthorGroupService")
@Service
@RequiredArgsConstructor
public class EgovAuthorGroupServiceImpl extends EgovAbstractServiceImpl implements EgovAuthorGroupService {

//	@Resource(name = "authorGroupDAO")
//	private AuthorGroupDAO authorGroupDAO;
	private final AuthorGroupDAO authorGroupDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovAuthorGroupController {

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovAuthorGroupService")
//	private EgovAuthorGroupService egovAuthorGroupService;
	private final EgovAuthorGroupService egovAuthorGroupService;

//	@Resource(name = "egovAuthorManageService")
//	private EgovAuthorManageService egovAuthorManageService;
	private final EgovAuthorManageService egovAuthorManageService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
//	private final EgovPropertyService propertiesService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 내부업무 시스템][사용자별권한관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/di/EgovAuthorGroupController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/40

https://youtu.be/a3Ou-3D_CQQ
