# 표준프레임워크 템플릿 프로젝트 내부업무 시스템

- 셀레늄 단위 테스트
- 요청 메서드 정리/검색 조건 유지

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
