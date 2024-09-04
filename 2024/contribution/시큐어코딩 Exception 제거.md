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

목차
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
