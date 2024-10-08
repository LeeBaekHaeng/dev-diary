# 시큐어코딩 Exception 제거

시큐어코딩 Exception 제거하는 이유
- `throws Exception/catch (Exception` 부적절한 예외 처리
- 광범위한 예외 처리 대신 구체적인 예외 처리를 수행한다.

---

`1. 소프트웨어 개발 보안 가이드`
- 소프트웨어_개발보안_가이드(2021.12.29).pdf
- https://www.kisa.or.kr/2060204/form?postSeq=5&page=1

39페이지
- `4. 구현단계 기준과의 관계`

구분|설계단계|구현단계
-|-|-
에러 처리(1개)|예외처리|오류 메시지 정보노출

40페이지
- 부적절한 예외 처리

294페이지
- `3. 부적절한 예외 처리`

```
나. 보안대책
값을 반환하는 모든 함수의 결과값을 검사하여, 그 값이 의도했던 값인지 검사하고, 예외 처리를
사용하는 경우에 광범위한 예외 처리 대신 구체적인 예외 처리를 수행한다.
```

---

2. 소프트웨어 보안약점 진단가이드
- 소프트웨어_보안약점_진단가이드(2021).pdf
- https://www.kisa.or.kr/2060204/form?postSeq=9&page=1

429페이지
- 제4장 구현단계 보안약점 진단

`3. 부적절한 예외 처리`

431페이지

```
라. 진단방법

함수 또는 메소드에 대하여 반환값을 검사하고 예외를 발생시키는 경우(①) 구체적인 예외처리를
수행하는지 확인한다.
```

---

## 시큐어코딩 Exception 제거 목차

- [161. 자료이용현황통계 시큐어코딩 Exception 제거](#161-자료이용현황통계-시큐어코딩-exception-제거)
- [170. 블로그관리 시큐어코딩 Exception 제거](#170-블로그관리-시큐어코딩-exception-제거)
- [게시물 관리 시큐어코딩 Exception 제거](#게시물-관리-시큐어코딩-exception-제거)
- [200. 템플릿관리 시큐어코딩 Exception 제거](#200-템플릿관리-시큐어코딩-exception-제거)
- [250. 스크랩 목록 시큐어코딩 Exception 제거](#250-스크랩-목록-시큐어코딩-exception-제거)
- [270. 커뮤니티관리 시큐어코딩 Exception 제거](#250-스크랩-목록-시큐어코딩-exception-제거)
- [커뮤니티 사용자/게시판관리 시큐어코딩 Exception 제거](#커뮤니티-사용자게시판관리-시큐어코딩-exception-제거)
- [310. 문자메시지 시큐어코딩 Exception 제거](#310-문자메시지-시큐어코딩-exception-제거)
- [320. 부서일정관리 시큐어코딩 Exception 제거](#320-부서일정관리-시큐어코딩-exception-제거)
- [[협업 > 330. 일정관리] 시큐어코딩 Exception 제거](#320-부서일정관리-시큐어코딩-exception-제거)
- [[340. 일지관리] 시큐어코딩 Exception 제거](#340-일지관리-시큐어코딩-exception-제거)
- [[350. 전체일정관리] 시큐어코딩 Exception 제거](#350-전체일정관리-시큐어코딩-exception-제거)
- [[360. 메일발송] 시큐어코딩 Exception 제거](#360-메일발송-시큐어코딩-exception-제거)
- [[협업 > 361. 발송메일내역] 시큐어코딩 Exception 제거](#협업--361-발송메일내역-시큐어코딩-exception-제거)
- [[협업 > 370. 명함관리] 시큐어코딩 Exception 제거](#협업--370-명함관리-시큐어코딩-exception-제거)
- [[협업 > 380. 주소록관리] 시큐어코딩 Exception 제거](#협업--380-주소록관리-시큐어코딩-exception-제거)
- [390. 간부일정관리 시큐어코딩 Exception 제거](#390-간부일정관리-시큐어코딩-exception-제거)
- [[400. 부서업무함관리] 시큐어코딩 Exception 제거](#400-부서업무함관리-시큐어코딩-exception-제거)
- [[410. 주간/월간보고관리] 시큐어코딩 Exception 제거](#410-주간월간보고관리-시큐어코딩-exception-제거)
- [[420. 메모할일관리] 시큐어코딩 Exception 제거](#420-메모할일관리-시큐어코딩-exception-제거)
- [[430. 메모보고] 시큐어코딩 Exception 제거](#430-메모보고-시큐어코딩-exception-제거)

## 롬복 생성자 기반 종속성 주입 목차

- [1240. 연계기관관리 롬복 생성자 기반 종속성 주입](#1240-연계기관관리-롬복-생성자-기반-종속성-주입)

## 검색 조건 유지 목록

- [[970. 공통상세코드] 검색 조건 유지](#970-공통상세코드-검색-조건-유지)

## DAO, ServiceImpl 단위 테스트

- [[10. 로그인][LoginDAO.actionLoginByEsntlId] DAO 단위 테스트](#10-로그인logindaoactionloginbyesntlid-dao-단위-테스트)
- [[10. 로그인][LoginDAO.actionCrtfctLogin] DAO 단위 테스트](#10-로그인logindaoactioncrtfctlogin-dao-단위-테스트)
- [[10. 로그인][LoginDAO.searchId] DAO 단위 테스트](#10-로그인logindaosearchid-dao-단위-테스트)
- [[10. 로그인][LoginDAO.searchPassword] DAO 단위 테스트](#10-로그인logindaosearchpassword-dao-단위-테스트)
- [[10. 로그인][LoginDAO.updatePassword] DAO 단위 테스트](#10-로그인logindaoupdatepassword-dao-단위-테스트)
- [[10. 로그인][LoginDAO.selectLoginIncorrect] DAO 단위 테스트](#10-로그인logindaoselectloginincorrect-dao-단위-테스트)
- [[10. 로그인][LoginDAO.updateLoginIncorrect] DAO 단위 테스트](#10-로그인logindaoupdateloginincorrect-dao-단위-테스트)
- [[10. 로그인][LoginDAO.selectPassedDayChangePWD] DAO 단위 테스트](#10-로그인logindaoselectpasseddaychangepwd-dao-단위-테스트)
- [[10. 로그인][LoginDAO.onepassLogin] DAO 단위 테스트](#10-로그인logindaoonepasslogin-dao-단위-테스트)
- [[10. 로그인][EgovLoginServiceImpl.actionLoginByEsntlId] ServiceImpl 단위 테스트](#10-로그인egovloginserviceimplactionloginbyesntlid-serviceimpl-단위-테스트)
- [[10. 로그인][EgovLoginServiceImpl.actionLogin] ServiceImpl 단위 테스트](#10-로그인egovloginserviceimplactionlogin-serviceimpl-단위-테스트)
- [[10. 로그인][EgovLoginServiceImpl.actionCrtfctLogin] ServiceImpl 단위 테스트](#10-로그인egovloginserviceimplactioncrtfctlogin-serviceimpl-단위-테스트)
- [[10. 로그인][EgovLoginServiceImpl.searchId] ServiceImpl 단위 테스트](#10-로그인egovloginserviceimplsearchid-serviceimpl-단위-테스트)
- [[10. 로그인][EgovLoginServiceImpl.searchPassword] ServiceImpl 단위 테스트](#10-로그인egovloginserviceimplsearchpassword-serviceimpl-단위-테스트)
- [[10. 로그인][EgovLoginServiceImpl.selectLoginIncorrect] ServiceImpl 단위 테스트](#10-로그인egovloginserviceimplselectloginincorrect-serviceimpl-단위-테스트)

---

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

161. 자료이용현황통계 시큐어코딩 Exception 제거
- 주석 위치 수정
- `throws Exception/` 제거
- ` *   2024.08.19  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovDtaUseStatsContoller/

https://github.com/eGovFramework/egovframe-common-components/pull/391

https://youtu.be/auivh3BSt_g

## 170. 블로그관리 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/bbs/selectBlogList.do
```

검색(Search)
```
/cop/bbs/selectBlogList.do
```

새 브랜치:
```
2024/pmd/EgovBBSMasterController
```

170. 블로그관리 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception` 제거
- ` *   2024.08.20  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format
- `throw new BaseRuntimeException("FdlException: egovBlogIdGnrService", e);`
- `throw new BaseRuntimeException("FdlException: egovBBSMstrIdGnrService", e);`
- `throws FdlException` 제거
- `throws IllegalAccessException` 추가

`throws Exception`
`throw processException("info.nodata.msg");`
Exception Handling
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:rte2:bsl:exception_handling
EgovBBSMasterServiceImpl
```java
	@Override
	public BoardMasterVO selectBBSMasterInf(BoardMasterVO boardMasterVO) throws Exception {
		BoardMasterVO resultVO = egovBBSMasterDao.selectBBSMasterDetail(boardMasterVO);
		if (resultVO == null)
			throw processException("info.nodata.msg");
```

`throw processException("fail.common.msg", e);`
```
	@Override
	public void insertBBSMasterInf(BoardMaster boardMaster) throws Exception {

		// 2021 github 반영
		// String bbsId = idgenService.getNextStringId();
		// 게시판 ID 채번
		String bbsId;
		try {
			bbsId = idgenService.getNextStringId() + RandomStringUtils.randomAlphabetic(10);
		} catch (FdlException e) {
			throw processException("fail.common.msg", e);
		}
		boardMaster.setBbsId(bbsId);
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovBBSMasterController/

https://github.com/eGovFramework/egovframe-common-components/pull/392

https://youtu.be/YavT8xzJ-pk

## 게시물 관리 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/bbs/selectBBSMasterDetail.do?bbsId=BBSMSTR_000000001662AEJYmJtsfq
```

검색(Search)
```
/cop/bbs/selectArticleList.do
```

새 브랜치:
```
2024/pmd/EgovArticleController
```

게시물 관리 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/throws FdlException` 제거
- ` *   2024.08.21  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format
- `throw processException("info.nodata.msg");`
- `throw processException("fail.common.msg", e);`
- `throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);`

EgovFileMngUtil
`throw new FileNotFoundException(downFileName);` 을 `throw new BaseRuntimeException(downFileName + " 파일이 존재하지 않습니다.");/throw new BaseRuntimeException(downFileName + " 파일이 아닙니다.");` 로 수정

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovArticleController/

https://github.com/eGovFramework/egovframe-common-components/pull/394

https://youtu.be/OTTLx2vqMWk

## 200. 템플릿관리 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/tpl/selectTemplateInfs.do
```

검색(Search)
```
/cop/tpl/selectTemplateInfs.do
```

새 브랜치:
```
2024/pmd/EgovTemplateManageController
```

200. 템플릿관리 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception` 제거
- ` *   2024.08.22  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format
- EgovCmmUseService
- `throw processException("fail.common.msg", e);`, `throws Exception`

https://youtu.be/WNNOhcbcVlc

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovTemplateManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/396

## 250. 스크랩 목록 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/scp/selectArticleScrapList.do
```

검색(Search)
```
/cop/scp/selectArticleScrapList.do
```

새 브랜치:
```
2024/pmd/EgovArticleScrapController
```

250. 스크랩 목록 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/throws FdlException` 제거
- ` *   2024.08.23  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format
- EgovArticleScrapServiceImpl, `throw processException("fail.common.msg", e);`, `throws Exception`
- processRuntimeException 추가하면 좋을 것 같음

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovArticleScrapController/

https://github.com/eGovFramework/egovframe-common-components/pull/398

https://youtu.be/sUJEw261gkM

## 270. 커뮤니티관리 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/cmy/selectCommuMasterList.do
```

검색(Search)
```
/cop/cmy/selectCommuMasterList.do
```

새 브랜치:
```
2024/pmd/EgovCommuMasterController
```

270. 커뮤니티관리 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/throws FdlException/throws DataAccessException` 제거
- ` *   2024.08.24  이백행          시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format
- `throw processException("info.nodata.msg");` `throws Exception`
- `throw processException("fail.common.msg", e);` `throws Exception`
- TODO 삭제 버튼 안 보임

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovCommuMasterController/

https://github.com/eGovFramework/egovframe-common-components/pull/399

https://youtu.be/PWRXCs_Hpe8

## 커뮤니티 사용자/게시판관리 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/cmy/cmmntyMain.do?cmmntyId=CMMNTY_0000000000301
```

검색(Search)
```
/cop/cmy/cmmntyMain.do
```

새 브랜치:
```
2024/pmd/EgovCommuManageController
```

커뮤니티 사용자/게시판관리 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/throws FdlException/throws DataAccessException` 제거
- ` *   2024.08.26  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovCommuManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/400

https://youtu.be/y1CiUkd1CaE

## 310. 문자메시지 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/sms/selectSmsList.do
```

검색(Search)
```
/cop/sms/selectSmsList.do
```

새 브랜치:
```
2024/pmd/EgovSmsInfoController
```

310. 문자메시지 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/throws ParseException/throws SMEException/catch (Exception` 제거
- ` *   2024.08.27  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

```java
throw new BaseRuntimeException("SQLException: getConnection", e);
throw new BaseRuntimeException("Exception: configSet", e);
throw new BaseRuntimeException("SMEException: SMEConnectionFactoryImpl", e);
throw new BaseRuntimeException("SQLException: selectSmsInfsCnt", e);
throw new BaseRuntimeException("SQLException: insertSmsInf", ex);
throw processException("fail.common.msg", e);
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovSmsInfoController/

https://github.com/eGovFramework/egovframe-common-components/pull/401

https://youtu.be/ic7FsLG8oTg

## 320. 부서일정관리 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageList.do
```

검색(Search)
```
/cop/smt/sdm/EgovDeptSchdulManageList.do
```

새 브랜치:
```
2024/pmd/EgovDeptSchdulManageController
```

320. 부서일정관리 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/@exception Exception` 제거
- ` *   2024.08.28  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

```java
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(Map<String, MultipartFile> files, transferTo", e);
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(List<MultipartFile> files, transferTo", e);
throw new BaseRuntimeException("IOException: writeUploadedFile", e);
throw new BaseRuntimeException("FileNotFoundException: downFile " + downFileName);
throw new BaseRuntimeException("UnsupportedEncodingException: downFile new String", e);
throw new BaseRuntimeException("IOException: downFile", e);
throw new BaseRuntimeException("IOException: writeFile", e);
throw new BaseRuntimeException("FdlException: parseFileInf(Map<String, MultipartFile> files, egovFileIdGnrService", e);
throw new BaseRuntimeException("FdlException: parseFileInf(List<MultipartFile> files, egovFileIdGnrService", e);

throw processException("fail.common.msg", e);
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovDeptSchdulManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/402

https://youtu.be/VYW_HWxCzX8

## [협업 > 330. 일정관리] 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/sim/EgovIndvdlSchdulManageList.do
```

검색(Search)
```
/cop/smt/sim/EgovIndvdlSchdulManageList.do
```

새 브랜치:
```
2024/pmd/EgovIndvdlSchdulManageController
```

[협업 > 330. 일정관리] 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception/@exception Exception` 제거
- ` *   2024.08.29  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

```java
throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);
} catch (IOException e) {
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(Map<String, MultipartFile> files, transferTo", e);

throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(List<MultipartFile> files, transferTo", e);

throw new BaseRuntimeException("IOException: writeUploadedFile", e);

throw new BaseRuntimeException("FileNotFoundException: downFile(HttpServletRequest request, " + downFileName);
throw new BaseRuntimeException("UnsupportedEncodingException: downFile(HttpServletRequest request, new String", e);
throw new BaseRuntimeException("IOException: downFile(HttpServletRequest request,", e);

throw new BaseRuntimeException("IOException: writeFile", e);

throw new BaseRuntimeException("FileNotFoundException: downFile(HttpServletResponse response, " + downFileName);
throw new BaseRuntimeException("IOException: downFile(HttpServletResponse response,", e);

throw processException("fail.common.msg", e);
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovIndvdlSchdulManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/403

https://youtu.be/WExo3nqOq4g

## [340. 일지관리] 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/dsm/EgovDiaryManageList.do
```

검색(Search)
```
/cop/smt/dsm/EgovDiaryManageList.do
```

새 브랜치:
```
2024/pmd/EgovDiaryManageController
```

[협업 > 340. 일지관리] 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception` 제거
- ` *   2024.08.30  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

```java
// parseFileInf(Map<String, MultipartFile> files,
throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);

} catch (IOException e) {
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(Map<String, MultipartFile> files, transferTo", e);

// parseFileInf(List<MultipartFile> files,
throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(List<MultipartFile> files, transferTo", e);

// writeUploadedFile
} catch (IOException e) {
throw new BaseRuntimeException("IOException: writeUploadedFile", e);

// downFile(HttpServletRequest request,
throw new BaseRuntimeException("FileNotFoundException: downFile(HttpServletRequest request, " + downFileName);
throw new BaseRuntimeException("UnsupportedEncodingException: downFile(HttpServletRequest request, new String", e);
} catch (IOException e) {
throw new BaseRuntimeException("IOException: downFile(HttpServletRequest request,", e);

// writeFile
} catch (IOException e) {
throw new BaseRuntimeException("IOException: writeFile", e);

// downFile(HttpServletResponse response,
throw new BaseRuntimeException("FileNotFoundException: downFile(HttpServletResponse response, " + downFileName);
} catch (IOException e) {
throw new BaseRuntimeException("IOException: downFile(HttpServletResponse response,", e);

throw processException("fail.common.msg", e);
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovDiaryManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/404

https://youtu.be/3Zou_M8dn_c

## [350. 전체일정관리] 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/sam/EgovAllSchdulManageList.do
```

검색(Search)
```
/cop/smt/sam/EgovAllSchdulManageList.do
```

새 브랜치:
```
2024/pmd/EgovAllSchdulManageController
```

[협업 > 350. 전체일정관리] 시큐어코딩 Exception 제거
- `@throws Exception/throws Exception` 제거
- ` *   2024.08.31  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovAllSchdulManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/405

https://youtu.be/qh0JTMgCP4s

## [360. 메일발송] 시큐어코딩 Exception 제거

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/ems/insertSndngMailView.do
```

검색(Search)
```
/cop/ems/insertSndngMailView.do
```

새 브랜치:
```
2024/pmd/EgovSndngMailRegistController
```

[협업 > 360. 메일발송] 시큐어코딩 Exception 제거
- `@exception Exception/throws Exception/@throws Exception/throws EmailException` 제거
- ` *   2024.09.02  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

```java
// parseFileInf(Map<String, MultipartFile> files,
throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);

} catch (IOException e) {
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(Map<String, MultipartFile> files, transferTo", e);

// parseFileInf(List<MultipartFile> files,
throw new BaseRuntimeException("FdlException: egovFileIdGnrService", e);
throw new BaseRuntimeException("IllegalStateException | IOException: parseFileInf(List<MultipartFile> files, transferTo", e);

// writeUploadedFile
} catch (IOException e) {
throw new BaseRuntimeException("IOException: writeUploadedFile", e);

// downFile(HttpServletRequest request,
throw new BaseRuntimeException("FileNotFoundException: downFile(HttpServletRequest request, " + downFileName);
throw new BaseRuntimeException("UnsupportedEncodingException: downFile(HttpServletRequest request, new String", e);
} catch (IOException e) {
throw new BaseRuntimeException("IOException: downFile(HttpServletRequest request,", e);

// writeFile
} catch (IOException e) {
throw new BaseRuntimeException("IOException: writeFile", e);

// downFile(HttpServletResponse response,
throw new BaseRuntimeException("FileNotFoundException: downFile(HttpServletResponse response, " + downFileName);
} catch (IOException e) {
throw new BaseRuntimeException("IOException: downFile(HttpServletResponse response,", e);

throw processException("fail.common.msg", e);
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovSndngMailRegistController/

https://github.com/eGovFramework/egovframe-common-components/pull/410

https://youtu.be/STMewOltSK0

```java
@Resource(name = "egovMultiPartEmail")
private EgovMultiPartEmail egovMultiPartEmail;
```

/egovframe-common-components-2024/src/main/resources/egovframework/spring/com/context-mail.xml
```xml
<!-- 메일 연동 인터페이스에서 첨부파일 사용 -->
<bean id="egovMultiPartEmail" class="egovframework.com.cop.ems.service.EgovMultiPartEmail"
p:host="이메일SMTP주소"
p:port="587"
p:id="아이디"
p:password="비밀번호"
p:senderName="System"
p:emailAddress="이메일주소" />
```

### [협업 > 361. 발송메일내역] 시큐어코딩 Exception 제거

[2024년 전자정부 표준프레임워크 컨트리뷰션][협업 > 361. 발송메일내역] 시큐어코딩 Exception 제거

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][361. 발송메일내역] 시큐어코딩 Exception 제거

- `@exception Exception/throws Exception/@exception` 제거
- ` *   2024.09.03  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/ems/selectSndngMailList.do
```

검색(Search)
```
/cop/ems/selectSndngMailList.do
```

브랜치 생성
```
2024/pmd/EgovSndngMailDtlsController
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovSndngMailDtlsController/

https://github.com/eGovFramework/egovframe-common-components/pull/412

https://youtu.be/mT5oPsXqMxY

### [협업 > 370. 명함관리] 시큐어코딩 Exception 제거

- `@exception Exception/throws Exception` 제거
- ` *   2024.09.04  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- Source > Format

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/ncm/selectNcrdInfs.do
```

검색(Search)
```
/cop/ncm/selectNcrdInfs.do
```

브랜치 생성
```
2024/pmd/EgovNcrdManageController
```

```java
	@Override
	public void insertNcrdItem(NameCard nameCard) throws Exception {

		try {
			nameCard.setNcrdId(idgenService.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: egovNcrdIdGnrService", e);
		}
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][협업 > 370. 명함관리] 시큐어코딩 Exception 제거

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][370. 명함관리] 시큐어코딩 Exception 제거

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovNcrdManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/414

https://youtu.be/mFXdAt3zAK0

### [협업 > 380. 주소록관리] 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception/@exception Exception` 제거
- ` *   2024.09.05  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/adb/selectAdbkList.do
```

검색(Search)
```
/cop/adb/selectAdbkList.do
```

브랜치 생성
```
2024/pmd/EgovAddressBookController
```

```java
	@Override
	public void insertAdressBook(AddressBookVO adbkVO) throws Exception {

		try {
			adbkVO.setAdbkId(idgenService.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: egovAdbkIdGnrService", e);
		}

		for (int i = 0; i < adbkVO.getAdbkMan().size(); i++) {
			try {
				adbkVO.getAdbkMan().get(i).setAdbkUserId(idgenService2.getNextStringId());
			} catch (FdlException e) {
				throw processException("FdlException: egovAdbkUserIdGnrService", e);
			}

	@Override
	public void updateAdressBook(AddressBookVO adbkVO) throws Exception {

			if (!check) {
				try {
					adbkVO.getAdbkMan().get(i).setAdbkUserId(idgenService2.getNextStringId());
				} catch (FdlException e) {
					throw processException("FdlException: egovAdbkUserIdGnrService", e);
				}

```

[2024년 전자정부 표준프레임워크 컨트리뷰션][협업 > 380. 주소록관리] 시큐어코딩 Exception 제거

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][380. 주소록관리] 시큐어코딩 Exception 제거

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovAddressBookController/

https://github.com/eGovFramework/egovframe-common-components/pull/416

https://youtu.be/eqDgWMMhnNY

### 390. 간부일정관리 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception` 제거
- ` *   2024.09.06  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- 전 PR에서 시큐어코딩 Exception 제거해서 `cmmUseService.selectCmmCodeDetail` 만 시큐어코딩 Exception 제거
- `processException` 사용

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/lsm/usr/selectLeaderSchdulList.do
```

검색(Search)
```
/cop/smt/lsm/usr/selectLeaderSchdulList.do
```

브랜치 생성
```
2024/pmd/EgovLeaderSchdulController
```

```java
	 * @throws Exception
	 */
	@Override
	public void insertLeaderSchdul(LeaderSchdul leaderSchdul) throws Exception {
		String schdulID;
		try {
			schdulID = idgenService.getNextStringId();
		} catch (FdlException e) {
			throw processException("FdlException: egovLeaderSchdulIdGnrService", e);
		}
		leaderSchdul.setSchdulId(schdulID);
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][390. 간부일정관리] 시큐어코딩 Exception 제거

https://github.com/eGovFramework/egovframe-common-components/pull/418

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovLeaderSchdulController/

## 롬복 생성자 기반 종속성 주입

### 1240. 연계기관관리 롬복 생성자 기반 종속성 주입

- Source > Format
- 필수 Args 생성자 `@RequiredArgsConstructor`, `final` 추가
- ` *   2024.09.07  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정
- 생성자 기반 종속성 주입
  - Constructor-based Dependency Injection
  - https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html#beans-constructor-injection
- 스프링 빈과 종속성 주입
  - Spring Beans and Dependency Injection
  - https://docs.spring.io/spring-boot/reference/using/spring-beans-and-dependency-injection.html

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/ssi/syi/iis/getCntcInsttList.do
```

검색
```
/ssi/syi/iis/getCntcInsttList.do
```

브랜치 생성
```
2024/di/EgovCntcInsttController
```

```java
//@Repository("CntcInsttDAO")
@Repository

//@Service("CntcInsttService")
@Service
@RequiredArgsConstructor
//	@Resource(name = "CntcInsttDAO")
//	private CntcInsttDAO cntcInsttDAO;
	private final CntcInsttDAO cntcInsttDAO;

@Controller
@RequiredArgsConstructor
//	@Resource(name = "CntcInsttService")
//	private EgovCntcInsttService cntcInsttService;
	private final EgovCntcInsttService cntcInsttService;

//	@Resource(name = "CntcMessageService")
//	private EgovCntcMessageService cntcMessageService;
	private final EgovCntcMessageService cntcMessageService;

	/** EgovIdGnrService */
//	@Resource(name = "egovCntcInsttIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovCntcInsttIdGnrService;

	/** EgovIdGnrService */
//	@Resource(name = "egovCntcSystemIdGnrService")
//	private EgovIdGnrService idgenServiceSys;
	private final EgovIdGnrService egovCntcSystemIdGnrService;

	/** EgovIdGnrService */
//	@Resource(name = "egovCntcServiceIdGnrService")
//	private EgovIdGnrService idgenServiceSvc;
	private final EgovIdGnrService egovCntcServiceIdGnrService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
//	protected final EgovPropertyService propertiesService;
	private final EgovPropertyService propertiesService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

오류
```
org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named 'CntcInsttService' available
```

"CntcInsttService" 검색

```java
@Controller
@RequiredArgsConstructor
public class EgovSystemCntcController {

//	@Resource(name = "CntcInsttService")
//	private EgovCntcInsttService cntcInsttService;
	private final EgovCntcInsttService cntcInsttService;
```

빈 최종 필드 cntcInsttService가 초기화되지 않았을 수 있습니다.
```
[log4j]2024-09-07 06:53:24,339 ERROR [org.springframework.web.servlet.DispatcherServlet] Context initialization failed
org.springframework.beans.factory.BeanCreationException: Error creating bean with name 'egovSystemCntcController' defined in file [C:\EGOVFRAME\eGovFrameDev-4.2.0-64bit\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp2\wtpwebapps\egovframe-common-components-2024\WEB-INF\classes\egovframework\com\ssi\syi\sim\web\EgovSystemCntcController.class]: Instantiation of bean failed; nested exception is org.springframework.beans.BeanInstantiationException: Failed to instantiate [egovframework.com.ssi.syi.sim.web.EgovSystemCntcController]: Constructor threw exception; nested exception is java.lang.Error: Unresolved compilation problem: 
	The blank final field cntcInsttService may not have been initialized
```

기관명
```
test 이백행 2024-09-07 기관명
```

```java
@Controller
@RequiredArgsConstructor
public class EgovSystemCntcController {

//	@Resource(name = "SystemCntcService")
//	private EgovSystemCntcService systemCntcService;
	private final EgovSystemCntcService systemCntcService;

	private final EgovCntcInsttService egovCntcInsttService;

	/** EgovIdGnrService */
//	@Resource(name = "egovSystemCntcIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovSystemCntcIdGnrService;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
	private final EgovPropertyService propertiesService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][1240. 연계기관관리] 롬복 생성자 기반 종속성 주입

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/di/EgovCntcInsttController/

https://github.com/eGovFramework/egovframe-common-components/pull/420

https://youtu.be/A1gXWGnd9eY

## 검색 조건 유지

### [970. 공통상세코드] 검색 조건 유지

- Source > Format
- `@RequestMapping` 을 화면은 `@GetMapping` 으로 처리는 `@PostMapping` 으로 수정
- `forward` 를 `redirect` 로 수정
- ` *   2024.09.07  이백행          컨트리뷰션 검색 조건 유지` 개정이력 수정
- `method="post"` 를 method="get" 으로 수정
- onclick `event.preventDefault();` 추가

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do
```

검색(Search)
```
/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do
```

브랜치 생성
```
2024/search/EgovCcmCmmnDetailCodeManageController
```

컨트롤러
```java
		model.addAttribute("searchCondition", cmmnDetailCodeVO.getSearchCondition());
		model.addAttribute("searchKeyword", cmmnDetailCodeVO.getSearchKeyword());
		model.addAttribute("pageIndex", cmmnDetailCodeVO.getPageIndex());

//		return "forward:/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do";
		return "redirect:/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do";
```

목록 화면
```jsp
?searchCondition=<c:out value="${searchVO.searchCondition}" />&searchKeyword=<c:out value="${searchVO.searchKeyword}" />&pageIndex=<c:out value="${searchVO.pageIndex}" />
```

등록 화면
```jsp
?searchCondition=<c:out value="${cmmnDetailCodeVO.searchCondition}" />&searchKeyword=<c:out value="${cmmnDetailCodeVO.searchKeyword}" />&pageIndex=<c:out value="${cmmnDetailCodeVO.pageIndex}" />

	<input name="searchCondition" type="hidden" value="<c:out value="${cmmnDetailCodeVO.searchCondition}" />">
	<input name="searchKeyword" type="hidden" value="<c:out value="${cmmnDetailCodeVO.searchKeyword}" />">
	<input name="pageIndex" type="hidden" value="<c:out value="${cmmnDetailCodeVO.pageIndex}" />">
</form:form>
```

```
test 이백행 2024-09-07
```

수정 화면
```
	<input name="searchCondition" type="hidden" value="<c:out value="${param.searchCondition}" />">
	<input name="searchKeyword" type="hidden" value="<c:out value="${param.searchKeyword}" />">
	<input name="pageIndex" type="hidden" value="<c:out value="${param.pageIndex}" />">
</form:form>
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][970. 공통상세코드] 검색 조건 유지

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/search/EgovCcmCmmnDetailCodeManageController/

https://github.com/eGovFramework/egovframe-common-components/pull/421

https://youtu.be/SVrCj80VX5w

### [400. 부서업무함관리] 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception` 제거
- ` *   2024.09.09  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- `processException` 사용
  - EgovBizException 으로 리턴하면 좋겠음
  - processRuntimeException(BaseRuntimeException) 추가되면 좋겠음

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/djm/selectDeptJobBxList.do
```

검색(Search)
```
/cop/smt/djm/selectDeptJobBxList.do
```

브랜치 생성
```
2024/pmd/EgovDeptJobController
```

```java
	 * @throws Exception
	 */
	@Override
	public void insertDeptJobBx(DeptJobBxVO deptJobBxVO) throws Exception {
		try {
			deptJobBxVO.setDeptJobBxId(idgenServiceDeptJobBx.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: insertDeptJobBx( egovDeptJobBxIdGnrService", e);
		}

	 * @throws Exception
	 */
	@Override
	public void insertDeptJob(DeptJob deptJob) throws Exception {
		try {
			deptJob.setDeptJobId(idgenServiceDeptJob.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: insertDeptJobBx( egovDeptJobIdGnrService", e);
		}
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][400. 부서업무함관리] 시큐어코딩 Exception 제거

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovDeptJobController/

https://github.com/eGovFramework/egovframe-common-components/pull/423

https://youtu.be/j-3HPaTxzxA

### [410. 주간/월간보고관리] 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception` 제거
- ` *   2024.09.10  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- `processException` 사용
  - EgovBizException 으로 리턴하면 좋겠음
  - processRuntimeException(BaseRuntimeException) 추가되면 좋겠음
- `작성자명은(는) 필수 입력값입니다.` 오류

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/wmr/selectWikMnthngReprtList.do
```

검색(Search)
```
/cop/smt/wmr/selectWikMnthngReprtList.do
```

브랜치 생성
```
2024/pmd/EgovWikMnthngReprtController
```

```java
	 * @throws Exception
	 */
	@Override
	public void insertWikMnthngReprt(WikMnthngReprt wikMnthngReprt) throws Exception {
		try {
			wikMnthngReprt.setReprtId(idgenServiceWikMnthngReprt.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: egovWikMnthngReprtIdGnrService", e);
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][410. 주간/월간보고관리] 시큐어코딩 Exception 제거

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovWikMnthngReprtController/

https://github.com/eGovFramework/egovframe-common-components/pull/426

https://youtu.be/bx8NjyoPD_8

### [420. 메모할일관리] 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception` 제거
- ` *   2024.09.11  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- `processException` 사용
  - EgovBizException 으로 리턴하면 좋겠음
  - processRuntimeException(BaseRuntimeException) 추가되면 좋겠음

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/mtm/selectMemoTodoList.do
```

검색(Search)
```
/cop/smt/mtm/selectMemoTodoList.do
```

브랜치 생성
```
2024/pmd/EgovMemoTodoController
```

```java
	 * @throws Exception
	 */
	@Override
	public void insertMemoTodo(MemoTodo memoTodo) throws Exception {
		try {
			memoTodo.setTodoId(idgenServiceMemoTodo.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: egovMemoTodoIdGnrService", e);
		}
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][420. 메모할일관리] 시큐어코딩 Exception 제거

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovMemoTodoController/

https://github.com/eGovFramework/egovframe-common-components/pull/428

https://youtu.be/j9oax62prPw

### [430. 메모보고] 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception` 제거
- ` *   2024.09.12  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정
- `processException` 사용
  - EgovBizException 으로 리턴하면 좋겠음
  - processRuntimeException(BaseRuntimeException) 추가되면 좋겠음

크롬 링크 주소 복사
```
http://localhost:8080/egovframework-all-in-one/cop/smt/mrm/selectMemoReprtList.do
```

검색(Search)
```
/cop/smt/mrm/selectMemoReprtList.do
```

브랜치 생성
```
2024/pmd/EgovMemoReprtController
```

```java
	 * @throws Exception
	 */
	@Override
	public void insertMemoReprt(MemoReprt memoReprt) throws Exception {
		try {
			memoReprt.setReprtId(idgenServiceMemoReprt.getNextStringId());
		} catch (FdlException e) {
			throw processException("FdlException: egovMemoReprtIdGnrService", e);
		}
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][430. 메모보고] 시큐어코딩 Exception 제거

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovMemoReprtController/

https://github.com/eGovFramework/egovframe-common-components/pull/431

https://youtu.be/C51rGCfunNQ

### [10. 로그인][LoginDAO.actionLoginByEsntlId] DAO 단위 테스트

브랜치 생성
```
2024/test/LoginDAO/actionLoginByEsntlId
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestActionLoginByEsntlIdTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.actionLoginByEsntlId] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/actionLoginByEsntlId/

https://github.com/eGovFramework/egovframe-common-components/pull/434

https://youtu.be/k73Fqn3Fjp4

### [10. 로그인][LoginDAO.actionCrtfctLogin] DAO 단위 테스트

- `인증서 로그인을 처리한다` DAO 단위 테스트

브랜치 생성
```
2024/test/LoginDAO/actionCrtfctLogin
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestActionCrtfctLoginTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.actionCrtfctLogin] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/actionCrtfctLogin/

https://github.com/eGovFramework/egovframe-common-components/pull/436

https://youtu.be/t8oWCP6Km00

### [10. 로그인][LoginDAO.searchId] DAO 단위 테스트

- `아이디를 찾는다.` DAO 단위 테스트

브랜치 생성
```
2024/test/LoginDAO/searchId
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestSearchIdTest
```

```sql
SELECT A.MBER_NM, A.MBER_EMAIL_ADRES, A.MBER_STTUS, A.MBER_ID FROM COMTNGNRLMBER A
;

SELECT A.CMPNY_NM, A.APPLCNT_EMAIL_ADRES, A.ENTRPRS_MBER_STTUS, A.ENTRPRS_MBER_ID FROM COMTNENTRPRSMBER A
;

SELECT A.USER_NM, A.EMAIL_ADRES, A.EMPLYR_STTUS_CODE, A.EMPLYR_ID FROM COMTNEMPLYRINFO A
;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.searchId] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/searchId/

https://github.com/eGovFramework/egovframe-common-components/pull/447

https://youtu.be/vq4cyWakUCM

### [10. 로그인][LoginDAO.searchPassword] DAO 단위 테스트

- `아이디를 찾는다.` DAO 단위 테스트

브랜치 생성
```
2024/test/LoginDAO/searchPassword
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestSearchPasswordTest
```

```sql
SELECT A.MBER_ID, A.MBER_NM, A.MBER_EMAIL_ADRES, A.PASSWORD_HINT, A.PASSWORD_CNSR, A.MBER_STTUS, A.PASSWORD FROM COMTNGNRLMBER A
;

SELECT A.ENTRPRS_MBER_ID, A.CMPNY_NM, A.APPLCNT_EMAIL_ADRES, A.ENTRPRS_MBER_PASSWORD_HINT, A.ENTRPRS_MBER_PASSWORD_CNSR, A.ENTRPRS_MBER_STTUS, A.ENTRPRS_MBER_PASSWORD FROM COMTNENTRPRSMBER A
;

SELECT A.EMPLYR_ID, A.USER_NM, A.EMAIL_ADRES, A.PASSWORD_HINT, A.PASSWORD_CNSR, A.EMPLYR_STTUS_CODE, A.PASSWORD FROM COMTNEMPLYRINFO A
;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.searchId] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/searchPassword/

https://github.com/eGovFramework/egovframe-common-components/pull/455

https://youtu.be/oR3y4r4lhjs

### [10. 로그인][LoginDAO.updatePassword] DAO 단위 테스트

- 변경된 비밀번호를 저장한다.
- Source > Format
- ` *   2024.09.18  이백행          컨트리뷰션 updatePassword return 을 void 에서 int 로 수정` 개정이력 수정

브랜치 생성
```
2024/test/LoginDAO/updatePassword
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestUpdatePasswordTest
```

```sql
SELECT A.MBER_ID, A.PASSWORD FROM COMTNGNRLMBER A
;

SELECT A.ENTRPRS_MBER_ID, A.ENTRPRS_MBER_PASSWORD FROM COMTNENTRPRSMBER A
;

SELECT A.EMPLYR_ID, A.PASSWORD FROM COMTNEMPLYRINFO A
;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.updatePassword] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/updatePassword/

https://github.com/eGovFramework/egovframe-common-components/pull/457

https://youtu.be/oG4iyawnUPg

### [10. 로그인][LoginDAO.selectLoginIncorrect] DAO 단위 테스트

- 로그인인증제한 내역을 조회한다.

브랜치 생성
```
2024/test/LoginDAO/selectLoginIncorrect
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestSelectLoginIncorrectTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.selectLoginIncorrect] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/selectLoginIncorrect/

https://github.com/eGovFramework/egovframe-common-components/pull/460

https://youtu.be/okWaMVwWpGA

### [10. 로그인][LoginDAO.updateLoginIncorrect] DAO 단위 테스트

- 로그인인증제한 내역을 업데이트 한다.

브랜치 생성
```
2024/test/LoginDAO/updateLoginIncorrect
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestUpdateLoginIncorrectTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.updateLoginIncorrect] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/updateLoginIncorrect/

https://github.com/eGovFramework/egovframe-common-components/pull/474

https://youtu.be/KO-lQTaZ6X8

### [10. 로그인][LoginDAO.selectPassedDayChangePWD] DAO 단위 테스트

- 비밀번호를 수정한후 경과한 날짜를 조회한다.

브랜치 생성
```
2024/test/LoginDAO/selectPassedDayChangePWD
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestSelectPassedDayChangePWDTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.selectPassedDayChangePWD] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/selectPassedDayChangePWD/

https://github.com/eGovFramework/egovframe-common-components/pull/480

https://youtu.be/CZv8-fl28BQ

### [10. 로그인][LoginDAO.onepassLogin] DAO 단위 테스트

- 디지털원패스 인증 회원 조회한다.

브랜치 생성
```
2024/test/LoginDAO/onepassLogin
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
LoginDAOTestOnepassLoginTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][LoginDAO.onepassLogin] DAO 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/LoginDAO/onepassLogin/

https://github.com/eGovFramework/egovframe-common-components/pull/497

https://youtu.be/9YbQcUyoCV4

### [10. 로그인][EgovLoginServiceImpl.actionLoginByEsntlId] ServiceImpl 단위 테스트

- EsntlId를 이용한 로그인을 처리한다

브랜치 생성
```
2024/test/EgovLoginServiceImpl/actionLoginByEsntlId
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
EgovLoginServiceImplTestActionLoginByEsntlIdTest
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][EgovLoginServiceImpl.actionLoginByEsntlId] ServiceImpl 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/EgovLoginServiceImpl/actionLoginByEsntlId/

https://github.com/eGovFramework/egovframe-common-components/pull/503

https://youtu.be/syTg2VpdH5U

### [10. 로그인][EgovLoginServiceImpl.actionLogin] ServiceImpl 단위 테스트

- 일반 로그인을 처리한다

브랜치 생성
```
2024/test/EgovLoginServiceImpl/actionLogin
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
EgovLoginServiceImplTestActionLoginTest
```

```java
@ImportResource({ "egovframework/spring/com/idgn/context-idgn-MailMsg.xml", })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.uat.uia.service.impl",
		"egovframework.com.cop.ems.service", "egovframework.com.cmm.config",
		"egovframework.com.cmm.service", }, includeFilters = {
				@Filter(type = FilterType.ANNOTATION, classes = { Repository.class, Service.class }),
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovLoginService.class, EgovLoginConfig.class,
						EgovMultiPartEmail.class, }) })
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][EgovLoginServiceImpl.actionLogin] ServiceImpl 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/EgovLoginServiceImpl/actionLogin/

https://github.com/eGovFramework/egovframe-common-components/pull/505

https://youtu.be/iYOlnvM2hT4

### [10. 로그인][EgovLoginServiceImpl.actionCrtfctLogin] ServiceImpl 단위 테스트

- EsntlId를 이용한 로그인을 처리한다

브랜치 생성
```
2024/test/EgovLoginServiceImpl/actionCrtfctLogin
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
EgovLoginServiceImplTestActionCrtfctLoginTest
```

```java
@ImportResource({ "classpath*:egovframework/spring/com/idgn/context-idgn-MailMsg.xml", })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.uat.uia.service.impl",
		"egovframework.com.cop.ems.service", "egovframework.com.cmm.config",
		"egovframework.com.cmm.service", }, includeFilters = {
				@Filter(type = FilterType.ANNOTATION, classes = { Repository.class, Service.class }),
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovLoginService.class, EgovLoginConfig.class,
						EgovMultiPartEmail.class, }) })
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][EgovLoginServiceImpl.actionCrtfctLogin] ServiceImpl 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/EgovLoginServiceImpl/actionCrtfctLogin/

https://github.com/eGovFramework/egovframe-common-components/pull/508

https://youtu.be/t1fLNWvQg1M

### [10. 로그인][EgovLoginServiceImpl.searchId] ServiceImpl 단위 테스트

- 아이디를 찾는다.

브랜치 생성
```
2024/test/EgovLoginServiceImpl/searchId
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
EgovLoginServiceImplTestSearchIdTest
```

```java
@ImportResource({ "classpath*:egovframework/spring/com/idgn/context-idgn-MailMsg.xml", })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.uat.uia.service.impl",
		"egovframework.com.cop.ems.service", "egovframework.com.cmm.config",
		"egovframework.com.cmm.service", }, includeFilters = {
				@Filter(type = FilterType.ANNOTATION, classes = { Repository.class, Service.class, }),
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovLoginService.class, EgovLoginConfig.class,
						EgovMultiPartEmail.class, }) })
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][EgovLoginServiceImpl.searchId] ServiceImpl 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/EgovLoginServiceImpl/searchId/

https://github.com/eGovFramework/egovframe-common-components/pull/511

https://youtu.be/TZejifZoxzE

### [10. 로그인][EgovLoginServiceImpl.searchPassword] ServiceImpl 단위 테스트

- 비밀번호를 찾는다.
- EgovTestMultiPartEmail 테스트 클래스 추가
- send 는 실제 메일 발송하지 않고 return null 로 함

브랜치 생성
```
2024/test/EgovLoginServiceImpl/searchPassword
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
EgovLoginServiceImplTestSearchPasswordTest
```

```java
@ImportResource({ "classpath*:egovframework/spring/com/idgn/context-idgn-MailMsg.xml",
		"classpath*:egovframework/spring/com/test-context-mail.xml", })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.uat.uia.service.impl",
		"egovframework.com.cop.ems.service", "egovframework.com.cmm.config",
		"egovframework.com.cmm.service", }, includeFilters = {
				@Filter(type = FilterType.ANNOTATION, classes = { Repository.class, Service.class, }),
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovLoginService.class, EgovLoginConfig.class,
						EgovMultiPartEmail.class, }) })
```

/egovframe-common-components-2024/src/test/java/egovframework/com/cop/ems/service/EgovTestMultiPartEmail.java
```java
	@Override
	public String send() throws EmailException {
		return null;
	}

	@Override
	public String send(String addTo, String subject, String msg, EmailAttachment attachment) throws EmailException {
		return null;
	}
```

/egovframe-common-components-2024/src/test/resources/egovframework/spring/com/test-context-mail.xml
```xml
    <!-- 메일 연동 인터페이스에서 첨부파일 사용 -->
	<bean id="egovMultiPartEmail" class="egovframework.com.cop.ems.service.EgovTestMultiPartEmail"
		p:host="이메일SMTP주소"
		p:port="587"
		p:id="아이디"
		p:password="비밀번호"
		p:senderName="System"
		p:emailAddress="이메일주소" />
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][EgovLoginServiceImpl.searchPassword] ServiceImpl 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/EgovLoginServiceImpl/searchPassword/

https://github.com/eGovFramework/egovframe-common-components/pull/513

https://youtu.be/q405I5zIB3c

### [10. 로그인][EgovLoginServiceImpl.selectLoginIncorrect] ServiceImpl 단위 테스트

- 로그인인증제한을 조회한다.

브랜치 생성
```
2024/test/EgovLoginServiceImpl/selectLoginIncorrect
```

테스트 패키지 생성
```
egovframework.com.uat.uia.service.impl
```

테스트 파일 생성
```
EgovLoginServiceImplTestSelectLoginIncorrectTest
```

```java
@ImportResource({ "classpath*:egovframework/spring/com/idgn/context-idgn-MailMsg.xml", })
@ComponentScan(useDefaultFilters = false, basePackages = { "egovframework.com.uat.uia.service.impl",
		"egovframework.com.cop.ems.service", "egovframework.com.cmm.config",
		"egovframework.com.cmm.service", }, includeFilters = {
				@Filter(type = FilterType.ANNOTATION, classes = { Repository.class, Service.class, }),
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { EgovLoginService.class, EgovLoginConfig.class,
						EgovMultiPartEmail.class, }) })
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][공통컴포넌트][10. 로그인][EgovLoginServiceImpl.selectLoginIncorrect] ServiceImpl 단위 테스트

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/test/EgovLoginServiceImpl/selectLoginIncorrect/

https://github.com/eGovFramework/egovframe-common-components/pull/519

https://youtu.be/asi4Fa5PLgY
