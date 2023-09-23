# 2023 전자정부 표준프레임워크 컨트리뷰션 참가

https://github.com/GSITM2023/egovframe-common-components

https://github.com/eGovFramework/egovframe-common-components

https://github.com/eGovFramework/egovframe-common-components/pulls

## 2023-09-23

DeptJobDAO.selectDeptJobListCnt 부서업무 목록에 대한 전체 건수를 조회한다.
- `throws Exception` 제거
- `(Integer)` 제거

https://youtu.be/Zpi-j67n2Nc

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/b16248dcaa6d4977c8528a7768b994b4324bc3a2

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-21

DeptJobDAO.selectDeptJobList 주어진 조건에 따른 부서업무 목록을 불러온다.
- `throws Exception` 제거

https://youtu.be/AYJpAJ_o6ms

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/abd16c68760a66280b6a21ee1620bd9367bcf404

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-20

DeptJobDAO.deleteDeptJobBx 부서업무함 정보를 삭제한다.
- `void` 를 `int` 로 수정
- `throws Exception` 제거

https://youtu.be/dscgwJy3OTw

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/635322cac417d7255759b01b9fb2becf246ccf62

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-19

DeptJobDAO.selectDeptJobBxCheck 부서내 부서업무함명의 건수를 조회한다.
- `throws Exception` 제거
- `(Integer)` 제거

https://youtu.be/Ud2kuNby-5M

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/9f9701c5b48dfb57730bf3cba4c8fb5213d04921

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-18

DeptJobDAO.selectMaxDeptJobBxOrdr 등록시 부서업무함의 표시순서를 조회한다.
- `throws Exception` 제거
- `(Integer)` 제거

https://youtu.be/NmOw7g88Fao

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/d8bf6901104ef6f909b08264ec2adb38a03260d2

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-16

DeptJobDAO.updateDeptJobBxOrdrAll 주어진 조건에 만족하는 전체 부서업무함 정보의 표시순서를 수정한다.
- `void` 를 `int` 로 수정
- `throws Exception` 제거

https://youtu.be/9GrQ1Zg0DoM

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/d6bc33cca6669c3cc69a4cb8679bb7ade1a2c37a

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-15

DeptJobDAO.updateDeptJobBxOrdr 부서업무함 정보의 표시순서를 수정한다.
- `void` 를 `int` 로 수정
- `throws Exception` 제거

https://youtu.be/txqzMMU9ME4

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/a0dbbbf4eb58bedb9b1368a13dd48339ab23e576

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-14

DeptJobDAO.updateDeptJobBxOrdrDown 부서업무함 정보의 표시순서를 수정한다. (표시순서 감소)
- `void` 를 `int` 로 수정
- `throws Exception` 제거

https://youtu.be/NDVg94sQxnA

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/7e45ded2334246d0220ca5c38c76a4a16595ad68

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-13

DeptJobDAO.updateDeptJobBxOrdrUp 부서업무함 정보의 표시순서를 수정한다. (표시순서 증가)
- `void` 를 `int` 로 수정
- `throws Exception` 제거

https://youtu.be/UxiKFO-GuPA

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/7ccb7d651de257d422417869d4bd52db23e55bbb

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-12

DeptJobDAO.selectDeptJobBxOrdr 부서업무함의 표시순서가 중복되는지를 조회한다.
- `throws Exception` 제거
- `(Integer)` 제거

https://youtu.be/UoCKdsS9Nb0

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/068bb8a360a75033add15a3aad5cb23d54032190

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-11

DeptJobDAO.updateDeptJobBx 부서업무함 정보를 수정한다.
- `void` 를 `int` 로 수정
- `throws Exception` 제거

https://youtu.be/vM2gYfIVowU

https://github.com/eGovFramework/egovframe-common-components/pull/248/commits/ea93fd78cf702d5c1676b6b9622df5af8f8cbc2d

https://github.com/eGovFramework/egovframe-common-components/pull/248

## 2023-09-09

### 제네릭 타입 명시: RSS태그관리 목록을 조회한다.

- `List<?>` 을 `List<Map<String, String>>` 로 수정

```java
rss
service
impl
EgovRssTagManageServiceImpl.java (3 matches)
58: public List<?> selectRssTagManageTableColumnList(Map map) throws Exception {
EgovRssTagManageService.java (3 matches)
36: public List<?> selectRssTagManageTableColumnList(Map<?, ?> map) throws Exception;
web
EgovRssTagManageController.java (3 matches)
83: ArrayList<?> arrListResult = (ArrayList<?>)egovRssManageService.selectRssTagManageTableColumnList(hmParam);
```

http://localhost:8080/egovframework-all-in-one/uss/ion/rss/listRssTagManageTableColumnList.do?tableName=comtczip

https://youtu.be/MoXdZQ5R9Ac

https://github.com/GSITM2023/egovframe-common-components/commit/57ba90e70abb7125699e66ae94b3c58c34081233

https://github.com/eGovFramework/egovframe-common-components/pull/308

## 2023-09-08

### 제네릭 타입 명시: RSS태그관리를 수정한다.

- `List<?>` 을 `List<ComDefaultCodeVO>` 로 수정

```java
rss
service
impl
EgovRssTagManageServiceImpl.java (3 matches)
47: public List<?> selectRssTagManageTableList() throws Exception {
EgovRssTagManageService.java (3 matches)
28: public List<?> selectRssTagManageTableList() throws Exception;
```

RSS태그관리를 수정한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/rss/updtRssTagManage.do

RSS태그관리를 등록한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/rss/registRssTagManage.do

https://youtu.be/YV1_dsmsLKQ

https://github.com/GSITM2023/egovframe-common-components/commit/1fac1aeacbb4f99f853f56bde5aa508fed9ad48c

https://github.com/eGovFramework/egovframe-common-components/pull/307

## 2023-09-04

### 제네릭 타입 명시: RSS태그서비스

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
rsn
service
impl
EgovRssServiceImpl.java (2 matches)
102: public List<?> selectRssTagServiceList(RssInfo rssInfo) throws Exception {
RssDao.java (2 matches)
43: public List<?> selectRssTagServiceList(RssInfo rssInfo) throws Exception {
EgovRssService.java (2 matches)
37: public List<?> selectRssTagServiceList(RssInfo rssInfo) throws Exception;
web
EgovRssController.java
87: List<?> reusltList = egovRssService.selectRssTagServiceList(searchVO);
```

http://localhost:8080/egovframework-all-in-one/uss/ion/rsn/listRssTagService.do

https://youtu.be/H24xUydGGLc

https://github.com/GSITM2023/egovframe-common-components/commit/a79b9667c8f22cf4f8c267a898545d1f038c0cd3

https://github.com/eGovFramework/egovframe-common-components/pull/303

## 2023-09-02

### 제네릭 타입 명시: RSS서비스 목록을 상세조회 조회한다.

- `List<?>` 을 `List<Map<String, String>>` 로 수정

```java
rsn
service
impl
EgovRssServiceImpl.java (2 matches)
46: List<?> listResult = dao.selectRssTagServiceTable(param);
RssDao.java (2 matches)
33: public List<?> selectRssTagServiceTable(Map<?, ?> param) throws Exception {
EgovRssService.java (2 matches)
29: public List<?> selectRssTagServiceTable(Map<?, ?> param) throws Exception;
```

820. RSS태그관리 > 등록

http://localhost:8080/egovframework-all-in-one/uss/ion/rsn/detailRssTagService.do?rssId=RSS_ID00000000000001

TODO

Caused by: java.sql.SQLSyntaxErrorException: Unknown column 'FRST_REGISTER_PNTTM' in 'field list'

FRST_REGISTER_PNTTM -> FRST_REGIST_PNTTM

[log4j]2023-09-02 15:32:59,515 ERROR [egovframework.com.cmm.EgovComOthersExcepHndlr] egovframework.com.uss.ion.rsn.service.impl.EgovRssServiceImpl.selectRssTagServiceTable
org.springframework.dao.InvalidDataAccessApiUsageException: Error attempting to get column 'FRST_REGIST_PNTTM' from result set.  Cause: java.sql.SQLFeatureNotSupportedException: resultSet=net.sf.log4jdbc.ResultSetSpy@686379b9, columnLabel=FRST_REGIST_PNTTM, type=class java.time.LocalDateTime
; resultSet=net.sf.log4jdbc.ResultSetSpy@686379b9, columnLabel=FRST_REGIST_PNTTM, type=class java.time.LocalDateTime; nested exception is java.sql.SQLFeatureNotSupportedException: resultSet=net.sf.log4jdbc.ResultSetSpy@686379b9, columnLabel=FRST_REGIST_PNTTM, type=class java.time.LocalDateTime

DATE_FORMAT(FRST_REGISTER_PNTTM,'%Y-%m-%d') AS FRST_REGISTER_PNTTM, -> TO_CHAR(FRST_REGIST_PNTTM,'YYYY-MM-DD') AS FRST_REGISTER_PNTTM,

https://youtu.be/ULT4b4atX4I

https://github.com/GSITM2023/egovframe-common-components/commit/81a7ebf041c3d781ad66b818b31b69fe45f0eb4d

https://github.com/eGovFramework/egovframe-common-components/pull/302

## 2023-09-01

### 제네릭 타입 명시: 최근검색어결과 목록을 조회한다.

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
rsm
service
impl
EgovRecentSrchwrdServiceImpl.java (3 matches)
125: public List<?> selectRecentSrchwrdResultList(RecentSrchwrd searchVO) throws Exception {  
RecentSrchwrdDao.java (3 matches)
100: public List<?> selectRecentSrchwrdResultList(RecentSrchwrd searchVO) throws Exception {  
EgovRecentSrchwrdService.java (3 matches)
82: public List<?> selectRecentSrchwrdResultList(RecentSrchwrd searchVO) throws Exception;  
web
EgovRecentSrchwrdController.java (3 matches)
294: List<?> reusltList = egovRecentSrchwrdService.selectRecentSrchwrdResultList(searchVO);  
```

http://localhost:8080/egovframework-all-in-one/uss/ion/rsm/listRecentSrchwrdResult.do

https://youtu.be/vRJ_daC10pE

https://github.com/GSITM2023/egovframe-common-components/commit/307bd5322d612b06b2f02199c56321f9e7a3d145

https://github.com/eGovFramework/egovframe-common-components/pull/299

## 2023-08-31

### 제네릭 타입 명시: 최근검색어 결과를 조회한다.

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
rsm
service
impl
EgovRecentSrchwrdServiceImpl.java (3 matches)
114: public List<?> selectRecentSrchwrdResultInquire(RecentSrchwrd recentSrchwrd) throws Exception {
RecentSrchwrdDao.java (3 matches)
90: public List<?> selectRecentSrchwrdResultInquire(RecentSrchwrd recentSrchwrd) throws Exception {
EgovRecentSrchwrdService.java (3 matches)
74: public List<?> selectRecentSrchwrdResultInquire(RecentSrchwrd recentSrchwrd) throws Exception;
web
EgovRecentSrchwrdController.java (3 matches)
331: List<?> reusltList = null;
```

http://localhost:8080/egovframework-all-in-one/uss/ion/rsm/listRecentSrchwrdResultSerach.do?searchKeyword=공통코드관리&srchwrdManageId=SRCMGR_0000000000001&srchwrdManageUseYn=Y

https://youtu.be/v1uY4aWUx3o

https://github.com/GSITM2023/egovframe-common-components/commit/f313d5fb9f69467a361735346c08273bdb5f0a5a

https://github.com/eGovFramework/egovframe-common-components/pull/284

## 2023-08-30

### 제네릭 타입 명시: 최근검색어 조회

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
rsm
service
impl
EgovRecentSrchwrdServiceImpl.java (3 matches)
48: public List<?> selectRecentSrchwrdList(RecentSrchwrd searchVO) throws Exception {
RecentSrchwrdDao.java (3 matches)
33: public List<?> selectRecentSrchwrdList(RecentSrchwrd searchVO) throws Exception {
EgovRecentSrchwrdService.java (3 matches)
29: public List<?> selectRecentSrchwrdList(RecentSrchwrd searchVO) throws Exception;
web
EgovRecentSrchwrdController.java (3 matches)
109: List<?> reusltList = egovRecentSrchwrdService.selectRecentSrchwrdList(searchVO);
```

http://localhost:8080/egovframework-all-in-one/uss/ion/rsm/listRecentSrchwrd.do

https://youtu.be/ATI3iG_GRKU

https://github.com/GSITM2023/egovframe-common-components/commit/d5e2735f264a7c5973a011b0afc38baf8cec93be

https://github.com/eGovFramework/egovframe-common-components/pull/279

## 2023-08-26

### 제네릭 타입 명시: 약도 관리

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
rmm
service
impl
EgovRoughMapDAO.java
43: public List<?> selectRoughMapList(RoughMapDefaultVO searchVO) throws Exception {  
EgovRoughMapServiceImpl.java
57: public List<?> selectRoughMapList(RoughMapDefaultVO searchVO) throws Exception {  
EgovRoughMapService.java
36: List<?> selectRoughMapList(RoughMapDefaultVO searchVO) throws Exception;  
web
EgovRoughMapController.java
94: List<?> roughMapList = egovRoughMapService.selectRoughMapList(searchVO);  
```

http://localhost:8080/egovframework-all-in-one/com/uss/ion/rmm/selectRoughMapList.do

https://youtu.be/txlMfES17w4

https://github.com/GSITM2023/egovframe-common-components/commit/20ed56be84ccaf5dcdd2b491c38392de6a4d48b4

https://github.com/eGovFramework/egovframe-common-components/pull/269

## 2023-08-25

### 제네릭 타입 명시: 팝업창관리 메인 테스트 목록을 조회한다.

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
pwm
service
impl
EgovPopupManageServiceImpl.java (3 matches)
133: public List<?> selectPopupMainList(PopupManageVO popupManageVO) throws Exception {
PopupManageDAO.java (3 matches)
109: public List<?> selectPopupMainList(PopupManageVO popupManageVO) throws Exception {
EgovPopupManageService.java (3 matches)
88: public List<?> selectPopupMainList(PopupManageVO popupManageVO) throws Exception;
web
EgovPopupManageController.java (3 matches)
349: List<?> resultList = egovPopupManageService.selectPopupMainList(popupManageVO);
```

### 팝업창관리 메인 테스트 목록을 조회한다.
```java
EgovPopupManageController.java (3 matches)
349: List<?> resultList = egovPopupManageService.selectPopupMainList(popupManageVO);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/pwm/listMainPopup.do

720. 팝업창관리
- http://localhost:8080/egovframework-all-in-one/uss/ion/pwm/listPopup.do
- 등록
- 게시기간: 2023-08-23 00:00 ~ 2023-08-24 00:00

https://youtu.be/lSdT8aabKRY

https://github.com/GSITM2023/egovframe-common-components/commit/30e4dd03881e4a976f470cf641e35be594427d54

https://github.com/eGovFramework/egovframe-common-components/pull/256

## 2023-08-23

### 제네릭 타입 명시: 팝업창의 취약점을 관리하기 위해 등록된 팝업창 화이트리스트를 조회한다.

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
pwm
service
impl
EgovPopupManageServiceImpl.java (3 matches)
97: public List<?> selectPopupWhiteList() throws Exception {
PopupManageDAO.java (3 matches)
76: public List<?> selectPopupWhiteList() throws Exception {
EgovPopupManageService.java (3 matches)
61: public List<?> selectPopupWhiteList() throws Exception;
web
EgovPopupManageController.java (3 matches)
321: List<?> popupWhiteList = egovPopupManageService.selectPopupWhiteList();
```

### 팝업창의 취약점을 관리하기 위해 등록된 팝업창 화이트리스트를 조회한다.
```java
EgovPopupManageController.java (3 matches)
321: List<?> popupWhiteList = egovPopupManageService.selectPopupWhiteList();
```
http://localhost:8080/egovframework-all-in-one/uss/ion/pwm/openPopupManage.do

720. 팝업창관리
- http://localhost:8080/egovframework-all-in-one/uss/ion/pwm/listPopup.do
- 등록
- 체크박스
- 미리보기

https://youtu.be/JFE0ocZ9Xjk

https://github.com/GSITM2023/egovframe-common-components/commit/194207d15cc85b71d361e479d0ded0e32c73ca0c

https://github.com/eGovFramework/egovframe-common-components/pull/252

## 2023-08-22

### 제네릭 타입 명시: 받은쪽지함관리

- `List<?>` 을 `List<EgovMap>` 로 수정

```java
ntr
service
impl
EgovNoteRecptnServiceImpl.java
42: public List<?> selectNoteRecptnList(NoteRecptn noteRecptn) throws Exception {
NoteRecptnDao.java
34: public List<?> selectNoteRecptnList(NoteRecptn noteRecptn) throws Exception {
EgovNoteRecptnService.java
29: public List<?> selectNoteRecptnList(NoteRecptn noteRecptn) throws Exception;
web
EgovNoteRecptnController.java (2 matches)
164: List<?> reusltList = egovNoteRecptnService.selectNoteRecptnList(searchVO);
```

### 받은쪽지함관리
```java
EgovNoteRecptnController.java (2 matches)
164: List<?> reusltList = egovNoteRecptnService.selectNoteRecptnList(searchVO);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ntr/listNoteRecptn.do

https://youtu.be/uEKBYUymsBg

https://github.com/GSITM2023/egovframe-common-components/commit/5c07f58c90a218db803c4a499ca07a63cbfb6024

https://github.com/eGovFramework/egovframe-common-components/pull/250

## 2023-08-21

### 제네릭 타입 명시: 쪽지관리

- `List<?>` 을 `List<EgovMap>` 로 수정
- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
ntm
service
impl
EgovNoteManageServiceImpl.java
124: public List<?> selectNoteEmpListPopup(ComDefaultVO searchVO) throws Exception{
NoteManageDao.java
73: public List<?> selectNoteEmpListPopup(ComDefaultVO searchVO) throws Exception {
EgovNoteManageService.java
48: public List<?> selectNoteEmpListPopup(ComDefaultVO searchVO) throws Exception;
web
EgovNoteManageController.java (3 matches)
104: List<?> listComCode = cmmUseService.selectCmmCodeDetail(voComCode);
234: List<?> resultList = egovNoteManageService.selectNoteEmpListPopup(searchVO);
251: List<?> reusltList = egovNoteManageService.selectNoteEmpListPopup(searchVO);
```

### 쪽지 관리(보내기) 사용자 목록을 조회한다.
```java
EgovNoteManageController.java (3 matches)
234: List<?> resultList = egovNoteManageService.selectNoteEmpListPopup(searchVO);
251: List<?> reusltList = egovNoteManageService.selectNoteEmpListPopup(searchVO);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ntm/listEgovNoteEmpListPopup.do

### 쪽지관리
```java
EgovNoteManageController.java (3 matches)
104: List<?> listComCode = cmmUseService.selectCmmCodeDetail(voComCode);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ntm/registEgovNoteManage.do

https://youtu.be/JIQc62ro9as

https://github.com/GSITM2023/egovframe-common-components/commit/924ecb17c33d9983a77f93b69951fd8162632af6

https://github.com/eGovFramework/egovframe-common-components/pull/247

## 2023-08-19

### 제네릭 타입 명시: 등록된 회의실관리의 상세정보를 조회한다.

- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
mtg
web
EgovMtgPlaceManageController.java (2 matches)
142: List<?> lcSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
166: List<?> lcSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```

### 등록된 회의실관리의 상세정보를 조회한다.
```java
EgovMtgPlaceManageController.java (2 matches)
142: List<?> lcSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/mtg/selectMtgPlaceManage.do

### 회의실관리 등록 화면으로 이동한다.
```java
EgovMtgPlaceManageController.java (2 matches)
166: List<?> lcSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/mtg/insertViewMtgPlace.do

https://youtu.be/wNamgEKxzf8

https://github.com/GSITM2023/egovframe-common-components/commit/c5fed5c9af6c882d8ad02a48b19d90365825af1b

https://github.com/eGovFramework/egovframe-common-components/pull/243

## 2023-08-18

### 제네릭 타입 명시: 행사신청관리

- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
evt
web
EgovEventManageController.java (4 matches)
101: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
186: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
284: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
469: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```

### 행사신청관리
```java
EgovEventManageController.java (4 matches)
101: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/evt/EgovEventReqstManageList.do

### 행사관리 등록 화면으로 이동한다.
```java
EgovEventManageController.java (4 matches)
186: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/evt/EgovEventReqstRegist.do

### 행사접수관리
```java
EgovEventManageController.java (4 matches)
284: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/evt/EgovEventRcrptManageList.do

### 행사접수승인관리
```java
EgovEventManageController.java (4 matches)
469: List<?> eventSeCodeList = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/evt/selectEventRceptConfmList.do

https://youtu.be/yTQUdskPcTw

https://github.com/GSITM2023/egovframe-common-components/commit/8bcd3f6942377cd9b392b1ff5df437b044939532

https://github.com/eGovFramework/egovframe-common-components/pull/240

## 2023-08-17

### 제네릭 타입 명시: 행사/이벤트/캠페인 등록전 단계

- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
ecc
service
impl
EgovEventCmpgnDAO.java (2 matches)
14: public List<?> selectEventCmpgnList(EventCmpgnVO searchVO) {
38: public List<?> selectTnextrlHrList(TnextrlHrVO searchVO) {
EgovEventCmpgnServiceImpl.java (2 matches)
29: public List<?> selectEventCmpgnList(EventCmpgnVO searchVO) {
70: public List<?> selectTnextrlHrList(TnextrlHrVO searchVO) {
EgovEventCmpgnService.java (2 matches)
9: List<?> selectEventCmpgnList(EventCmpgnVO searchVO);
21: List<?> selectTnextrlHrList(TnextrlHrVO searchVO);
web
EgovEventCmpgnController.java (7 matches)
93: List<?> sampleList = egovEventCmpgnService.selectEventCmpgnList(searchVO);
129: List<?> sampleList = egovEventCmpgnService.selectEventCmpgnList(searchVO);
175: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
232: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
316: List<?> sampleList = egovEventCmpgnService.selectTnextrlHrList(searchVO);
358: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
419: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
```

1. 행사/이벤트/캠페인 등록전 단계
```java
EgovEventCmpgnController.java (7 matches)
175: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ecc/insertEventCmpgnView.do

2. 행사/이벤트/캠페인을 수정하기 전 처리
```java
EgovEventCmpgnController.java (7 matches)
232: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ecc/updateEventCmpgnView.do

3. 외부인사정보 등록전 단계
```java
EgovEventCmpgnController.java (7 matches)
358: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ecc/insertTnextrlHrView.do

4. 외부인사정보를 수정하기 전 처리
```java
EgovEventCmpgnController.java (7 matches)
419: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ecc/updateTnextrlHrView.do

https://youtu.be/K4i4h4Kw7UY

https://github.com/GSITM2023/egovframe-common-components/commit/f84cacf66d899229f018efd4daeeb729163125ec

https://github.com/eGovFramework/egovframe-common-components/pull/237

## 2023-08-16

### 제네릭 타입 명시: 직원경조사관리

- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
ctn
web
EgovCtsnnManageController.java (7 matches)
75: List<?> ctsnnCdCodeList = null;  
108: List<?> ctsnnCdCodeList = null;  
143: List<?> ctsnnCdCodeList = null;  
144: List<?> relateCodeList  = null;  
185: List<?> ctsnnCdCodeList = null;  
186: List<?> relateCodeList  = null;  
297: List<?> ctsnnCdCodeList = null;  
```

경조관리 목록화면 이동
```java
75: List<?> ctsnnCdCodeList = null;
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ctn/EgovCtsnnManageListView.do

직원경조사관리
```java
108: List<?> ctsnnCdCodeList = null;
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ctn/selectCtsnnManageList.do

등록된 경조관리의 상세정보를 조회한다.
```java
143: List<?> ctsnnCdCodeList = null;
144: List<?> relateCodeList  = null;
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ctn/EgovCtsnnManageDetail.do

경조관리 등록 화면으로 이동한다.
```java
185: List<?> ctsnnCdCodeList = null;
186: List<?> relateCodeList  = null;
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ctn/EgovCtsnnRegist.do

직원경조사승인관리
```java
297: List<?> ctsnnCdCodeList = null;
```
http://localhost:8080/egovframework-all-in-one/uss/ion/ctn/EgovCtsnnConfmList.do

https://youtu.be/gT3ND-nBpZ0

https://github.com/GSITM2023/egovframe-common-components/commit/03cb89a0dc5a88c00eed9f20aec9da190f62ce0b

https://github.com/eGovFramework/egovframe-common-components/pull/236

## 2023-08-15

### 제네릭 타입 명시: 당직체크관리

- `List<?>` 을 `List<BndtDiaryVO>` 로 수정
- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
bnt
service
impl
EgovBndtManageServiceImpl.java
228: public List<?> selectBndtDiary(BndtDiaryVO bndtDiaryVO) throws Exception {  
EgovBndtManageService.java
124: public List<?> selectBndtDiary(BndtDiaryVO bndtDiaryVO) throws Exception;  
web
EgovBndtManageController.java (4 matches)
321: List<?> bndtCeckSeList = cmmUseService.selectCmmCodeDetail(vo);  
380: List<?> bndtCeckSeList = cmmUseService.selectCmmCodeDetail(vo);  
406: List<?> bndtCeckSeList = cmmUseService.selectCmmCodeDetail(vo);  
422: List<?> bndtCeckSeList = cmmUseService.selectCmmCodeDetail(vo);  
```

등록된 당직일지의 정보를 조회한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/bnt/selectBndtDiary.do

당직체크관리
- http://localhost:8080/egovframework-all-in-one/uss/ion/bnt/EgovBndtCeckManageList.do

당직체크 등록 화면으로 이동한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/bnt/EgovBndtCeckManageRegist.do

당직체크정보를 신규로 등록한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/bnt/insertBndtCeckManage.do

https://youtu.be/mnz10DZf_rM

https://github.com/GSITM2023/egovframe-common-components/commit/250eed89ae0c274c37b0aebf7dcb129a78d0787a

https://github.com/eGovFramework/egovframe-common-components/pull/235

## 2023-08-12

### 제네릭 타입 명시: 기념일관리

- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
ion
ans
web
EgovAnnvrsryManageController.java (5 matches)
187: List<?> annvrsrySeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
216: List<?> annvrsrySeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
240: List<?> annvrsrySeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
260: List<?> annvrsrySeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
302: List<?> annvrsrySeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
```

등록된 기념일관리의 상세정보를 조회한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/ans/selectAnnvrsryManage.do

기념일관리 등록 화면으로 이동한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/ans/insertViewAnnvrsry.do

기념일관리정보를 신규로 등록한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/ans/insertAnnvrsry.do

기념일관리정보를 신규로 등록한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/ans/insertAnnvrsry.do

기 등록된 기념일관리정보를 수정한다.
- http://localhost:8080/egovframework-all-in-one/uss/ion/ans/updateAnnvrsryManage.do

https://youtu.be/Q2NHz74sPds

https://github.com/GSITM2023/egovframe-common-components/commit/83de7072c83d855a4b32bbda2bdd0c7c86afce60

https://github.com/eGovFramework/egovframe-common-components/pull/230

## 2023-08-11

### 제네릭 타입 명시: 아이디/비밀번호 찾기 화면으로 들어간다

- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
uat
uia
web
EgovLoginController.java
367: List<?> code = cmmUseService.selectCmmCodeDetail(vo);  
```

아이디/비밀번호 찾기 화면으로 들어간다
- http://localhost:8080/egovframework-all-in-one/uat/uia/egovIdPasswordSearch.do

https://youtu.be/dFn9Kl_3lIc

https://github.com/GSITM2023/egovframe-common-components/commit/f748c5fdb587871bdbd8ba1b474a1c649ee92479

https://github.com/eGovFramework/egovframe-common-components/pull/228

## 2023-08-10

### 제네릭 타입 명시: 장애신청관리

- `List<?>` 을 `List<TroblReqstVO>` 로 수정
- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
tbr
service
TroblReqstVO.java (3 matches)
22: private List<?> troblReqstList;  
44: public List<?> getTroblReqstList() {  
51: public void setTroblReqstList(List<?> troblReqstList) {  
web
EgovTroblReqstController.java
291: public List<?> getCmmCodeDetailList(ComDefaultCodeVO comDefaultCodeVO, String codeId)  throws Exception {  
```

장애신청관리
- http://localhost:8080/egovframework-all-in-one/sym/tbm/tbr/selectTroblReqstList.do

https://youtu.be/hSPWKdKn4Bc

https://github.com/GSITM2023/egovframe-common-components/commit/2d931c5da8391286114f0dfb0b8caefd7b714e78

https://github.com/eGovFramework/egovframe-common-components/pull/225

## 2023-08-09

### 제네릭 타입 명시: 장애처리결과관리

- `List<?>` 을 `List<TroblProcessVO>` 로 수정
- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

TODO
- `setTroblProcessList` 제거
- `@ModelAttribute("troblProcessVO") TroblProcessVO troblProcessVO` 에서 `("troblProcessVO")` 제거
- `model.addAttribute("troblProcessList", troblProcessVO.getTroblProcessList());` 을 `model.addAttribute("troblProcessList", egovTroblProcessService.selectTroblProcessList(troblProcessVO));` 로 수정

```java
tbm
tbp
service
TroblProcessVO.java (3 matches)
22: private List<?> troblProcessList;  
42: public List<?> getTroblProcessList() {  
48: public void setTroblProcessList(List<?> troblProcessList) {  
web
EgovTroblProcessController.java
182: public List<?> getCmmCodeDetailList(ComDefaultCodeVO comDefaultCodeVO, String codeId)  throws Exception {  
```

장애처리결과관리
- 장애처리정보를 관리하기 위해 대상 장애처리목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/tbm/tbp/selectTroblProcessList.do

https://youtu.be/-gQnHEH8UoU

https://github.com/GSITM2023/egovframe-common-components/commit/821be57573f5752766ffd4662f6448529c8990aa

https://github.com/eGovFramework/egovframe-common-components/pull/223

## 2023-08-08

### 제네릭 타입 명시: 서버정보관리

- `List<?>` 을 `List<ServerEqpmnRelateVO>` 로 수정
  - `model.addAttribute("serverEqpmnRelateList", serverEqpmnRelateVO.getServerEqpmnRelateList());` 제거
  - `items="${serverEqpmnRelateList}"` 을 `items="${serverEqpmnRelateVO.serverEqpmnRelateList}"` 로 수정
  - `@ModelAttribute("serverEqpmnRelateVO") ServerEqpmnRelateVO serverEqpmnRelateVO` 을 `@ModelAttribute ServerEqpmnRelateVO serverEqpmnRelateVO` 로 수정
- `List<?>` 을 `List<ServerEqpmnVO>` 로 수정
  - `model.addAttribute("serverEqpmnList", serverEqpmnVO.getServerEqpmnList());` 제거
  - `items="${serverEqpmnList}"` 을 `items="${serverEqpmnVO.serverEqpmnList}"` 로 수정
- `List<?>` 을 `List<ServerVO>` 로 수정
  - `model.addAttribute("serverList", serverVO.getServerList());` 제거
  - `items="${serverList}"` 을 `items="${serverVO.serverList}"` 로 수정
- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
srv
service
ServerEqpmnRelateVO.java (3 matches)
32: private List<?> serverEqpmnRelateList;  
50: public List<?> getServerEqpmnRelateList() {  
57: public void setServerEqpmnRelateList(List<?> serverEqpmnRelateList) {  
ServerEqpmnVO.java (3 matches)
32: private List<?> serverEqpmnList;  
45: public List<?> getServerEqpmnList() {  
51: public void setServerEqpmnList(List<?> serverEqpmnList) {  
ServerVO.java (3 matches)
33: private List<?> serverList;  
47: public List<?> getServerList() {  
53: public void setServerList(List<?> serverList) {  
web
EgovServerController.java
492: public List<?> getCmmCodeDetailList(ComDefaultCodeVO comDefaultCodeVO, String codeId)  throws Exception {  
```

서버장비관계정보를 관리하기 위해 대상 서버장비목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/sym/srv/selectServerEqpmnRelateList.do
- 서버S/W 관리 > 서버H/W 등록
- http://localhost:8080/egovframework-all-in-one/sym/sym/srv/selectServerEqpmnRelateList.do?strServerId=SRV_0000000000000001

서버장비를 관리하기 위해 등록된 서버장비목록을 조회한다.
- 서버정보관리
- http://localhost:8080/egovframework-all-in-one/sym/sym/srv/selectServerEqpmnList.do

서버정보를 관리하기 위해 등록된 서버목록을 조회한다.
- 서버(S/W)목록
- http://localhost:8080/egovframework-all-in-one/sym/sym/srv/selectServerList.do

https://youtu.be/ht2HDXXna6s

https://github.com/GSITM2023/egovframe-common-components/commit/7864f6b1f16d3dc8ba0b626ad97832f34c592642

https://github.com/eGovFramework/egovframe-common-components/pull/219

## 2023-08-07

### 제네릭 타입 명시: 네트워크관리

- `List<?>` 을 `List<NtwrkVO>` 로 수정
- `List<?>` 을 `List<CmmnDetailCode>` 로 수정

```java
nwk
service
EgovNtwrkService.java
24: public List<?> selectNtwrkList(NtwrkVO ntwrkVO) throws Exception;  
NtwrkVO.java (3 matches)
32: private List<?> ntwrkList;  
65: public List<?> getNtwrkList() {  
71: public void setNtwrkList(List<?> ntwrkList) {  
web
EgovNtwrkController.java
251: public List<?> getCmmCodeDetailList(ComDefaultCodeVO comDefaultCodeVO, String codeId)  throws Exception {  
```

네트워크관리
- 네트워크정보를 관리하기 위해 등록된 네트워크목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/sym/nwk/selectNtwrkList.do

https://youtu.be/Qr-F0Ck454k

https://github.com/GSITM2023/egovframe-common-components/commit/7394eb61c23bda908a1b7e1865e6e4ea1c9dc1a1

https://github.com/eGovFramework/egovframe-common-components/pull/217

## 2023-08-05

### 제네릭 타입 명시: 백업결과정보목록을  조회한다.

- `List<?>` 을 `List<BackupResult>` 로 수정
- `List<?> result = ` 제거
- `(List<BackupResult>) ` 제거
- `@SuppressWarnings("unchecked")` 제거

selectBackupResultList

백업작업정보목록을  조회한다.

```java
sym
bak
service
impl
BackupOpertDao.java (2 matches)
98: public List<?> selectBackupOpertList(BackupOpert searchVO)  
100: List<?> resultList = selectList("BackupOpertDao.selectBackupOpertList", searchVO);  
BackupResultDao.java
69: public List<?> selectBackupResultList(BackupResult searchVO)  
EgovBackupOpertServiceImpl.java (2 matches)
88: public List<?> selectBackupOpertList(BackupOpert searchVO)  
90: List<?> result = backupOpertDao.selectBackupOpertList(searchVO);  
EgovBackupResultServiceImpl.java (2 matches)
70: public List<?> selectBackupResultList(BackupResult searchVO)  
72: List<?> result = dao.selectBackupResultList(searchVO);  
EgovBackupOpertService.java
55: public List<?> selectBackupOpertList(BackupOpert searchVO) throws Exception;  
EgovBackupResultService.java
47: public List<?> selectBackupResultList(BackupResult searchVO) throws Exception;  
```

백업결과 목록을 조회한다.
- 백업결과관리
- http://localhost:8080/egovframework-all-in-one/sym/sym/bak/getBackupResultList.do

https://youtu.be/u7NckvVd_lM

https://github.com/GSITM2023/egovframe-common-components/commit/77394c39c3fba7ad0739d34abf1e7781680b7593

https://github.com/eGovFramework/egovframe-common-components/pull/213

## 2023-08-04

### 제네릭 타입 명시: 메뉴생성 사이트맵 내용 조회

- `List<?>` 을 `List<EgovMap>` 로 수정
- import egovframework.com.sym.mnu.stm.service.SiteMapngVO; 제거
- debugger; 제거

selectMenuCreatSiteMapList

메뉴생성 사이트맵 내용 조회

```java
mcm
service
impl
EgovMenuCreateManageServiceImpl.java (4 matches)
68: public List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception {  
105: public List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception {  
135: public List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception {  
145: public List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception {  
MenuCreateManageDAO.java (4 matches)
61: public List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception{  
82: public List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception{  
101: public List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception{  
122: public List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception{  
EgovMenuCreateManageService.java (4 matches)
49: List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception;  
65: List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception;  
82: List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception;  
90: List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception;  
web
EgovMenuCreateManageController.java (5 matches)
114: List<?> list_menumanage = menuCreateManageService.selectMenuCreatManagList(searchVO);  
143: List<?> list_menulist = menuCreateManageService.selectMenuCreatList(menuCreatVO);  
198: List<?> list_menulist = menuCreateManageService.selectMenuCreatSiteMapList(menuSiteMapVO);  
257: List<?> list_menulist = menuCreateManageService.selectMenuCreatSiteMapList(menuSiteMapVO);  
287: List<?> list_menulist = menuCreateManageService.selectSiteMapByUser(menuSiteMapVO);  
```

메뉴사이트맵을 생성할 내용을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mcm/EgovMenuCreatSiteMapSelect.do

사이트맵 화면을 조회한다.
- 사이트맵
- http://localhost:8080/egovframework-all-in-one/sym/mnu/stm/EgovSiteMapng.do

https://youtu.be/rJFb0DhkDsM

https://github.com/GSITM2023/egovframe-common-components/commit/fdc9f3f7a5bc5bd164a274ca16121204656275bf

https://github.com/eGovFramework/egovframe-common-components/pull/208

## 2023-08-03

### 제네릭 타입 명시: 프로그램변경요청 목록을 조회

- `List<?>` 를 `List<ProgrmManageDtlVO>` 로 수정
- `resultMap id="progrmManageDtlVO"` 을 `resultMap id="progrmManageDtl"` 로 수정
- `resultType="egovMap"` 를 `resultMap="progrmManageDtl"` 로 수정

selectProgrmChangeRequstList

프로그램변경요청 목록을 조회

```java
prm
service
impl
EgovProgrmManageServiceImpl.java (3 matches)
56: public List<?> selectProgrmList(ComDefaultVO vo) throws Exception {  
128: public List<?> selectProgrmChangeRequstList(ComDefaultVO vo) throws Exception {  
191: public List<?> selectChangeRequstProcessList(ComDefaultVO vo) throws Exception {  
ProgrmManageDAO.java (3 matches)
37: public List<?> selectProgrmList(ComDefaultVO vo) throws Exception{  
106: public List<?> selectProgrmChangeRequstList(ComDefaultVO vo) throws Exception{  
173: public List<?> selectChangeRequstProcessList(ComDefaultVO vo) throws Exception{  
EgovProgrmManageService.java (3 matches)
38: List<?> selectProgrmList(ComDefaultVO vo) throws Exception;  
89: List<?> selectProgrmChangeRequstList(ComDefaultVO vo) throws Exception;  
133: List<?> selectChangeRequstProcessList(ComDefaultVO vo) throws Exception;  
web
EgovProgrmManageController.java (6 matches)
131: List<?> list_progrmmanage = progrmManageService.selectProgrmList(searchVO);  
312: List<?> list_changerequst = progrmManageService.selectProgrmChangeRequstList(searchVO);  
513: List<?> list_changerequst = progrmManageService.selectChangeRequstProcessList(searchVO);  
687: List<?> list_changerequst = progrmManageService.selectProgrmChangeRequstList(searchVO);  
756: List<?> list_progrmmanage = progrmManageService.selectProgrmList(searchVO);  
798: List<?> list_progrmmanage = progrmManageService.selectProgrmList(searchVO);  
```

selectProgrmChangeRequstList_D

```
egovframe-common-components
src
main
resources
egovframework
mapper
com
sym
prm
EgovProgrmManageDtl_SQL_altibase.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultMap="progrmManageDtl">  
EgovProgrmManageDtl_SQL_cubrid.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultType="egovMap">  
EgovProgrmManageDtl_SQL_goldilocks.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultMap="progrmManageDtl">  
EgovProgrmManageDtl_SQL_maria.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultType="egovMap">  
EgovProgrmManageDtl_SQL_mysql.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultType="egovMap">  
EgovProgrmManageDtl_SQL_oracle.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultType="egovMap">  
EgovProgrmManageDtl_SQL_postgres.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultType="egovMap">  
EgovProgrmManageDtl_SQL_tibero.xml
25: <select id="selectProgrmChangeRequstList_D" parameterType="comDefaultVO" resultType="egovMap">  
```

프로그램변경요청목록 조회한다.
- 프로그램변경요청관리
- http://localhost:8080/egovframework-all-in-one/sym/prm/EgovProgramChangeRequstSelect.do

프로그램변경이력리스트를 조회한다.
- 프로그램변경이력
- http://localhost:8080/egovframework-all-in-one/sym/prm/EgovProgramChgHstListSelect.do

https://youtu.be/jG1Tay8nTvE

https://github.com/GSITM2023/egovframe-common-components/commit/20c0b76fd44337a8beed770410ab09179010ae0c

https://github.com/eGovFramework/egovframe-common-components/pull/204

## 2023-08-02

### 제네릭 타입 명시: 메뉴리스트관리

- `List<?>` 를 `List<EgovMap>` 로 수정

selectMenuList

메뉴리스트관리

```java
mpm
service
impl
EgovMenuManageServiceImpl.java (4 matches)
75: public List<?> selectMenuManageList(ComDefaultVO vo) throws Exception {  
163: public List<?> selectMenuList() throws Exception {  
174: public List<?> selectMainMenuHead(MenuManageVO vo) throws Exception {  
184: public List<?> selectMainMenuLeft(MenuManageVO vo) throws Exception {  
MenuManageDAO.java (4 matches)
38: public List<?> selectMenuManageList(ComDefaultVO vo) throws Exception{  
94: public List<?> selectMenuList() throws Exception{  
152: public List<?> selectMainMenuHead(MenuManageVO vo) throws Exception{  
162: public List<?> selectMainMenuLeft(MenuManageVO vo) throws Exception{  
EgovMenuManageService.java (4 matches)
43: List<?> selectMenuManageList(ComDefaultVO vo) throws Exception;  
98: List<?> selectMenuList() throws Exception;  
107: List<?> selectMainMenuHead(MenuManageVO vo) throws Exception;  
115: List<?> selectMainMenuLeft(MenuManageVO vo) throws Exception;  
web
EgovMainMenuManageController.java (4 matches)
111: List<?> list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);  
145: List<?> list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);  
185: List<?> list_menulist = menuManageService.selectMainMenuLeft(menuManageVO);  
242: List<?> list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);  
EgovMenuManageController.java (4 matches)
149: List<?> list_menumanage = menuManageService.selectMenuManageList(searchVO);  
343: List<?> list_menulist = menuManageService.selectMenuList();  
487: List<?> list_menulist = menuManageService.selectMenuList();  
510: List<?> list_menulist = menuManageService.selectMenuList();  
```

화면 통계를 조회한다
- 화면통계
- http://localhost:8080/egovframework-all-in-one/sts/sst/selectScrinStats.do

메뉴리스트를 조회한다.
- 메뉴리스트관리
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mpm/EgovMenuListSelect.do

메뉴리스트의 메뉴정보를 이동 메뉴목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mpm/EgovMenuListSelectMvmn.do

메뉴리스트의 메뉴정보를 이동 메뉴목록을 조회한다. (New)
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mpm/EgovMenuListSelectMvmnNew.do

메뉴관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%A9%94%EB%89%B4%EA%B4%80%EB%A6%AC

https://youtu.be/QjTLwyavDVQ

https://github.com/GSITM2023/egovframe-common-components/commit/030a8c504be55eded29aaf99abf16ae57e96354b

https://github.com/eGovFramework/egovframe-common-components/pull/200

## 2023-08-01

### 제네릭 타입 명시: 백업작업정보목록을  조회한다.

- `List<?>` 을 `List<BackupOpert>` 로 수정
- 코드 정리
  - `for (int i = 0; i < resultList.size(); i++) {` 을 `for (BackupOpert result : resultList) {` 로 수정
  - `for (int i = 0; i < targetList.size(); i++) {` 을 `for (BackupOpert target : targetList) {` 로 수정
  - result.setExecutSchdulDfkSes stream 으로 수정
  - `List<?> result = ` 제거하고 바로 return
  - `@SuppressWarnings("unchecked")` 제거
  - `(List<BackupOpert>) ` 제거
  - `model.addAttribute("resultCnt", totCnt);` 사용하지 않아 제거
- Source > Format 탭을 공백으로 로 수정

selectBackupOpertList

백업작업정보목록을  조회한다.

```java
sym
bak
service
impl
BackupOpertDao.java (2 matches)
98: public List<?> selectBackupOpertList(BackupOpert searchVO)  
100: List<?> resultList = selectList("BackupOpertDao.selectBackupOpertList", searchVO);  
BackupResultDao.java
69: public List<?> selectBackupResultList(BackupResult searchVO)  
EgovBackupOpertServiceImpl.java (2 matches)
88: public List<?> selectBackupOpertList(BackupOpert searchVO)  
90: List<?> result = backupOpertDao.selectBackupOpertList(searchVO);  
EgovBackupResultServiceImpl.java (2 matches)
70: public List<?> selectBackupResultList(BackupResult searchVO)  
72: List<?> result = dao.selectBackupResultList(searchVO);  
EgovBackupOpertService.java
55: public List<?> selectBackupOpertList(BackupOpert searchVO) throws Exception;  
EgovBackupResultService.java
47: public List<?> selectBackupResultList(BackupResult searchVO) throws Exception;  
```

```java
			String [] dfkSes = new String [dfkSeList.size()];
			for (int j = 0; j < dfkSeList.size(); j++) {
				dfkSes[j] = dfkSeList.get(j).getExecutSchdulDfkSe();
			}
			result.setExecutSchdulDfkSes(dfkSes);
```
를

```java
result.setExecutSchdulDfkSes(dfkSeList.stream().map(BackupSchdulDfk::getExecutSchdulDfkSe).toArray(String[]::new));
```
로 수정

# 파일 동기화 컴포넌트에서 사용할 파일 업로드 경로(경로 설정은 반드시 절대경로를 사용해야함, 경로 뒤에 /를 붙여 주어야함.)

Globals.SynchrnServerPath = C:/egovframework/upload/Synch/

백업작업 등록
- 백업작업명: test 이백행 2023-08-01 백업작업명
- 백업원본디렉토리: src1
- 백업저장디렉토리: target1
- 실행주기: 매주 요일 전체 선택

백업작업 목록을 조회한다.
- 백업관리
- http://localhost:8080/egovframework-all-in-one/sym/sym/bak/getBackupOpertList.do

시스템관리 - 백업관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%B0%B1%EC%97%85%EA%B4%80%EB%A6%AC

```sql
select
	A.BACKUP_OPERT_ID,
	A.EXECUT_SCHDUL_DFK_SE,
	B.CODE_NM EXECUT_SCHDUL_DFK_SE_NM
from
	COMTNBACKUPSCHDULDFK 
A,
	COMTCCMMNDETAILCODE B
where
	A.BACKUP_OPERT_ID = 'BAK00000000000000001'
	and A.EXECUT_SCHDUL_DFK_SE = B.CODE
	and B.CODE_ID = 'COM074'
;
```

https://github.com/GSITM2023/egovframe-common-components/commit/8a5cbc9c13f067acfc49ae28b296f1794fc29cbd

https://github.com/GSITM2023/egovframe-common-components/commit/ed4986c3a9bf24ec1b23cd009c44db5f55f00caf

https://github.com/GSITM2023/egovframe-common-components/commit/b2972cd7848c5df3bd6240bc1b222ac2095a0847

https://github.com/eGovFramework/egovframe-common-components/pull/197

## 2023-07-31

### 제네릭 타입 명시: 메뉴생성관리 목록을 조회

- `List<?>` 을 `List<EgovMap>` 로 수정
- 코드 정리
  - `list_menumanage` 을 `resultList` 로 수정
  - `if ( list_menumanage.size() == 0 )` 중괄호 추가
- Source > Format 탭을 공백으로 로 수정

selectMenuCreatManagList

메뉴생성관리 목록을 조회

```java
mcm
service
impl
EgovMenuCreateManageServiceImpl.java (4 matches)
68: public List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception {  
105: public List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception {  
135: public List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception {  
145: public List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception {  
MenuCreateManageDAO.java (4 matches)
61: public List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception{  
82: public List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception{  
101: public List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception{  
122: public List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception{  
EgovMenuCreateManageService.java (4 matches)
49: List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception;  
65: List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception;  
82: List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception;  
90: List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception;  
web
EgovMenuCreateManageController.java (5 matches)
114: List<?> list_menumanage = menuCreateManageService.selectMenuCreatManagList(searchVO);  
143: List<?> list_menulist = menuCreateManageService.selectMenuCreatList(menuCreatVO);  
198: List<?> list_menulist = menuCreateManageService.selectMenuCreatSiteMapList(menuSiteMapVO);  
257: List<?> list_menulist = menuCreateManageService.selectMenuCreatSiteMapList(menuSiteMapVO);  
287: List<?> list_menulist = menuCreateManageService.selectSiteMapByUser(menuSiteMapVO);  
```

메뉴생성목록을 조회한다.
- 메뉴생성관리
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mcm/EgovMenuCreatManageSelect.do

메뉴생성관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%A9%94%EB%89%B4%EC%83%9D%EC%84%B1%EA%B4%80%EB%A6%AC

https://youtu.be/zGuiC3Bmm8Q

https://github.com/GSITM2023/egovframe-common-components/commit/c642d2694e2c12211c8d9dc3c28e65d18907dc20

https://github.com/GSITM2023/egovframe-common-components/commit/8e74dd06cec1607a527c1ad718115ac5b262dd62

https://github.com/GSITM2023/egovframe-common-components/commit/d273740ce767b5de112730423a1625bb82bdc825

https://github.com/eGovFramework/egovframe-common-components/pull/195

## 2023-07-29

### 제네릭 타입 명시: 프로그램 목록을 조회

- `List<?>` 를 `List<ProgrmManageVO>` 로 수정
- 코드 정리
  - `list_progrmmanage` 를 `resultList` 로 수정
  - `model.addAttribute("searchVO", searchVO);` 제거
- Source > Format 탭을 공백으로 수정

selectProgrmList

프로그램 목록을 조회

```java
prm
service
impl
EgovProgrmManageServiceImpl.java (3 matches)
56: public List<?> selectProgrmList(ComDefaultVO vo) throws Exception {  
128: public List<?> selectProgrmChangeRequstList(ComDefaultVO vo) throws Exception {  
191: public List<?> selectChangeRequstProcessList(ComDefaultVO vo) throws Exception {  
ProgrmManageDAO.java (3 matches)
37: public List<?> selectProgrmList(ComDefaultVO vo) throws Exception{  
106: public List<?> selectProgrmChangeRequstList(ComDefaultVO vo) throws Exception{  
173: public List<?> selectChangeRequstProcessList(ComDefaultVO vo) throws Exception{  
EgovProgrmManageService.java (3 matches)
38: List<?> selectProgrmList(ComDefaultVO vo) throws Exception;  
89: List<?> selectProgrmChangeRequstList(ComDefaultVO vo) throws Exception;  
133: List<?> selectChangeRequstProcessList(ComDefaultVO vo) throws Exception;  
web
EgovProgrmManageController.java (6 matches)
131: List<?> list_progrmmanage = progrmManageService.selectProgrmList(searchVO);  
312: List<?> list_changerequst = progrmManageService.selectProgrmChangeRequstList(searchVO);  
513: List<?> list_changerequst = progrmManageService.selectChangeRequstProcessList(searchVO);  
687: List<?> list_changerequst = progrmManageService.selectProgrmChangeRequstList(searchVO);  
756: List<?> list_progrmmanage = progrmManageService.selectProgrmList(searchVO);  
798: List<?> list_progrmmanage = progrmManageService.selectProgrmList(searchVO);  
```

프로그램목록 리스트조회한다.
- 프로그램관리
- http://localhost:8080/egovframework-all-in-one/sym/prm/EgovProgramListManageSelect.do

프로그램파일명을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/prm/EgovProgramListSearch.do

프로그램파일명을 조회한다. (New)
- http://localhost:8080/egovframework-all-in-one/sym/prm/EgovProgramListSearchNew.do

프로그램관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8%EA%B4%80%EB%A6%AC

https://youtu.be/m6wxvIMBEAc

https://github.com/GSITM2023/egovframe-common-components/commit/89b8cbb020569af30e1743800be83b07ff7bee42

https://github.com/GSITM2023/egovframe-common-components/commit/608776efc6c0c7a5afb9aed6b605ebc32ea5102f

https://github.com/GSITM2023/egovframe-common-components/commit/550440eda824772c7db9d8d1bcdff16d406bb0a9

https://github.com/GSITM2023/egovframe-common-components/commit/27b60eb9d350a96b366599a36b74ef4e97cac26d

https://github.com/eGovFramework/egovframe-common-components/pull/194

## 2023-07-28

### 제네릭 타입 명시: 행정달력 일간 정보를 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정
- 코드 정리
  - `@SuppressWarnings("static-access")`
  - `cal.YEAR` 를 `Calendar.YEAR` 로 수정
  - CalInfoList 를 resultList 로 수정
  - AdministWeekRestdeList 를 restdeList 로 수정
- Source > Format 탭을 공백으로

selectAdministDayCal
- 행정달력 일간 정보를 조회한다.
selectAdministDayRestde
- 행정달력 일간 휴일을 조회한다.

```java
cal
service
impl
EgovCalRestdeManageServiceImpl.java (9 matches)
44: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
52: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
60: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
68: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
76: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
84: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
92: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
100: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
133: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
RestdeManageDAO.java (9 matches)
37: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
47: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
57: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
67: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
77: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
87: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
97: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
107: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
147: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
EgovCalRestdeManageService.java (9 matches)
30: List<?> selectNormalRestdePopup(Restde restde) throws Exception;  
38: List<?> selectAdministRestdePopup(Restde restde) throws Exception;  
46: List<?> selectNormalDayCal(Restde restde) throws Exception;  
54: List<?> selectNormalDayRestde(Restde restde) throws Exception;  
62: List<?> selectNormalMonthRestde(Restde restde) throws Exception;  
70: List<?> selectAdministDayCal(Restde restde) throws Exception;  
78: List<?> selectAdministDayRestde(Restde restde) throws Exception;  
86: List<?> selectAdministMonthRestde(Restde restde) throws Exception;  
116: List<?> selectRestdeList(RestdeVO searchVO) throws Exception;  
web
EgovCalRestdeManageController.java (92 matches)
268: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
344: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
421: List<?> CalInfoList          = restdeManageService.selectNormalDayCal(restde);  
422: List<?> NormalWeekRestdeList = restdeManageService.selectNormalDayRestde(restde);  
525: List<?> CalInfoList_1          = restdeManageService.selectNormalDayCal(vo);  
526: List<?> NormalWeekRestdeList_1 = restdeManageService.selectNormalDayRestde(vo);  
534: List<?> CalInfoList_2          = restdeManageService.selectNormalDayCal(vo);  
535: List<?> NormalWeekRestdeList_2 = restdeManageService.selectNormalDayRestde(vo);  
543: List<?> CalInfoList_3          = restdeManageService.selectNormalDayCal(vo);  
544: List<?> NormalWeekRestdeList_3 = restdeManageService.selectNormalDayRestde(vo);  
552: List<?> CalInfoList_4          = restdeManageService.selectNormalDayCal(vo);  
553: List<?> NormalWeekRestdeList_4 = restdeManageService.selectNormalDayRestde(vo);  
561: List<?> CalInfoList_5          = restdeManageService.selectNormalDayCal(vo);  
562: List<?> NormalWeekRestdeList_5 = restdeManageService.selectNormalDayRestde(vo);  
570: List<?> CalInfoList_6          = restdeManageService.selectNormalDayCal(vo);  
571: List<?> NormalWeekRestdeList_6 = restdeManageService.selectNormalDayRestde(vo);  
579: List<?> CalInfoList_7          = restdeManageService.selectNormalDayCal(vo);  
580: List<?> NormalWeekRestdeList_7 = restdeManageService.selectNormalDayRestde(vo);  
597: List<?> CalInfoList = restdeManageService.selectNormalDayCal(restde);  
659: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
662: List<?> NormalMonthRestdeList = restdeManageService.selectNormalMonthRestde(restde);  
728: List<?> CalInfoList_1 = restdeManageService.selectNormalRestdePopup(restde);  
729: List<?> NormalMonthRestdeList_1 = restdeManageService.selectNormalMonthRestde(restde);  
737: List<?> CalInfoList_2 = restdeManageService.selectNormalRestdePopup(restde);  
738: List<?> NormalMonthRestdeList_2 = restdeManageService.selectNormalMonthRestde(restde);  
746: List<?> CalInfoList_3 = restdeManageService.selectNormalRestdePopup(restde);  
747: List<?> NormalMonthRestdeList_3 = restdeManageService.selectNormalMonthRestde(restde);  
755: List<?> CalInfoList_4 = restdeManageService.selectNormalRestdePopup(restde);  
756: List<?> NormalMonthRestdeList_4 = restdeManageService.selectNormalMonthRestde(restde);  
764: List<?> CalInfoList_5 = restdeManageService.selectNormalRestdePopup(restde);  
765: List<?> NormalMonthRestdeList_5 = restdeManageService.selectNormalMonthRestde(restde);  
773: List<?> CalInfoList_6 = restdeManageService.selectNormalRestdePopup(restde);  
774: List<?> NormalMonthRestdeList_6 = restdeManageService.selectNormalMonthRestde(restde);  
782: List<?> CalInfoList_7 = restdeManageService.selectNormalRestdePopup(restde);  
783: List<?> NormalMonthRestdeList_7 = restdeManageService.selectNormalMonthRestde(restde);  
791: List<?> CalInfoList_8 = restdeManageService.selectNormalRestdePopup(restde);  
792: List<?> NormalMonthRestdeList_8 = restdeManageService.selectNormalMonthRestde(restde);  
800: List<?> CalInfoList_9 = restdeManageService.selectNormalRestdePopup(restde);  
801: List<?> NormalMonthRestdeList_9 = restdeManageService.selectNormalMonthRestde(restde);  
809: List<?> CalInfoList_10 = restdeManageService.selectNormalRestdePopup(restde);  
810: List<?> NormalMonthRestdeList_10 = restdeManageService.selectNormalMonthRestde(restde);  
818: List<?> CalInfoList_11 = restdeManageService.selectNormalRestdePopup(restde);  
819: List<?> NormalMonthRestdeList_11 = restdeManageService.selectNormalMonthRestde(restde);  
827: List<?> CalInfoList_12 = restdeManageService.selectNormalRestdePopup(restde);  
828: List<?> NormalMonthRestdeList_12 = restdeManageService.selectNormalMonthRestde(restde);  
929: List<?> CalInfoList          = restdeManageService.selectAdministDayCal(restde);  
930: List<?> AdministWeekRestdeList = restdeManageService.selectAdministDayRestde(restde);  
1,025: List<?> CalInfoList = restdeManageService.selectAdministDayCal(restde);  
1,035: List<?> CalInfoList_1          = restdeManageService.selectAdministDayCal(vo);  
1,036: List<?> AdministWeekRestdeList_1 = restdeManageService.selectAdministDayRestde(vo);  
1,044: List<?> CalInfoList_2          = restdeManageService.selectAdministDayCal(vo);  
1,045: List<?> AdministWeekRestdeList_2 = restdeManageService.selectAdministDayRestde(vo);  
1,053: List<?> CalInfoList_3          = restdeManageService.selectAdministDayCal(vo);  
1,054: List<?> AdministWeekRestdeList_3 = restdeManageService.selectAdministDayRestde(vo);  
1,062: List<?> CalInfoList_4          = restdeManageService.selectAdministDayCal(vo);  
1,063: List<?> AdministWeekRestdeList_4 = restdeManageService.selectAdministDayRestde(vo);  
1,071: List<?> CalInfoList_5          = restdeManageService.selectAdministDayCal(vo);  
1,072: List<?> AdministWeekRestdeList_5 = restdeManageService.selectAdministDayRestde(vo);  
1,080: List<?> CalInfoList_6          = restdeManageService.selectAdministDayCal(vo);  
1,081: List<?> AdministWeekRestdeList_6 = restdeManageService.selectAdministDayRestde(vo);  
1,089: List<?> CalInfoList_7          = restdeManageService.selectAdministDayCal(vo);  
1,090: List<?> AdministWeekRestdeList_7 = restdeManageService.selectAdministDayRestde(vo);  
1,168: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
1,171: List<?> AdministMonthRestdeList = restdeManageService.selectAdministMonthRestde(restde);  
1,238: List<?> CalInfoList_1 = restdeManageService.selectAdministRestdePopup(restde);  
1,239: List<?> AdministMonthRestdeList_1 = restdeManageService.selectAdministMonthRestde(restde);  
1,247: List<?> CalInfoList_2 = restdeManageService.selectAdministRestdePopup(restde);  
1,248: List<?> AdministMonthRestdeList_2 = restdeManageService.selectAdministMonthRestde(restde);  
1,256: List<?> CalInfoList_3 = restdeManageService.selectAdministRestdePopup(restde);  
1,257: List<?> AdministMonthRestdeList_3 = restdeManageService.selectAdministMonthRestde(restde);  
1,265: List<?> CalInfoList_4 = restdeManageService.selectAdministRestdePopup(restde);  
1,266: List<?> AdministMonthRestdeList_4 = restdeManageService.selectAdministMonthRestde(restde);  
1,274: List<?> CalInfoList_5 = restdeManageService.selectAdministRestdePopup(restde);  
1,275: List<?> AdministMonthRestdeList_5 = restdeManageService.selectAdministMonthRestde(restde);  
1,283: List<?> CalInfoList_6 = restdeManageService.selectAdministRestdePopup(restde);  
1,284: List<?> AdministMonthRestdeList_6 = restdeManageService.selectAdministMonthRestde(restde);  
1,292: List<?> CalInfoList_7 = restdeManageService.selectAdministRestdePopup(restde);  
1,293: List<?> AdministMonthRestdeList_7 = restdeManageService.selectAdministMonthRestde(restde);  
1,301: List<?> CalInfoList_8 = restdeManageService.selectAdministRestdePopup(restde);  
1,302: List<?> AdministMonthRestdeList_8 = restdeManageService.selectAdministMonthRestde(restde);  
1,310: List<?> CalInfoList_9 = restdeManageService.selectAdministRestdePopup(restde);  
1,311: List<?> AdministMonthRestdeList_9 = restdeManageService.selectAdministMonthRestde(restde);  
1,319: List<?> CalInfoList_10 = restdeManageService.selectAdministRestdePopup(restde);  
1,320: List<?> AdministMonthRestdeList_10 = restdeManageService.selectAdministMonthRestde(restde);  
1,328: List<?> CalInfoList_11 = restdeManageService.selectAdministRestdePopup(restde);  
1,329: List<?> AdministMonthRestdeList_11 = restdeManageService.selectAdministMonthRestde(restde);  
1,337: List<?> CalInfoList_12 = restdeManageService.selectAdministRestdePopup(restde);  
1,338: List<?> AdministMonthRestdeList_12 = restdeManageService.selectAdministMonthRestde(restde);  
1,407: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
1,473: List<?> CmmnCodeList = restdeManageService.selectRestdeList(searchVO);  
1,507: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  
1,516: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  
```

1300. 공휴일관리(달력)
- 휴일일자: 2023-08-15
- 휴일명/휴일설명: 광복절
- 휴일구분: 법정공휴일
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovRestdeList.do

행정달력 일간
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovAdministDayCalendar.do

행정달력 주간
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovAdministWeekCalendar.do

공통컴포넌트 v4.1 가이드
- 시스템관리 - 일반달력/행정달력/휴일관리
- 요소기술 > 달력 > 공휴일관리(달력)
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%9C%B4%EC%9D%BC%EA%B4%80%EB%A6%AC#%EC%9D%BC%EB%B0%98%EB%8B%AC%EB%A0%A5_%EC%9D%BC%EA%B0%84_%EC%A3%BC%EA%B0%84_%EC%9B%94%EA%B0%84_%EC%97%B0%EA%B0%84

```sql
SELECT * FROM comtnrestde /* 휴일관리 */
;

select
	'2023' year ,
	'8' month ,
	'15' day ,
	RESTDE ,
	RESTDE_NM
from
	COMTNRESTDE
where
	RESTDE = CONCAT('2023', LPAD('8', 2, '0'), LPAD('15', 2, '0'))
	and RESTDE_SE_CODE in ('02', '03')
;
```

https://youtu.be/C-VUL2XkusM

https://github.com/GSITM2023/egovframe-common-components/commit/6e71ea5bdad0c25c870d05611ef5d9d58af761f7

https://github.com/GSITM2023/egovframe-common-components/commit/7061dd0e19e31ed87dbfa6fba5ee4ad5465ec735

https://github.com/GSITM2023/egovframe-common-components/commit/dc4c851838097c8f7d414ae4739a8c2d39120429

https://github.com/eGovFramework/egovframe-common-components/pull/191

## 2023-07-27

### 제네릭 타입 명시: 메뉴 목록을 조회

- `List<?>` 를 `List<EgovMap>` 로 수정
- 코드 정리
  - `list_menumanage` 를 `resultList` 로 수정
- Source > Format 탭을 공백으로

selectMenuManageList

메뉴 목록을 조회

```java
mpm
service
impl
EgovMenuManageServiceImpl.java (4 matches)
75: public List<?> selectMenuManageList(ComDefaultVO vo) throws Exception {  
163: public List<?> selectMenuList() throws Exception {  
174: public List<?> selectMainMenuHead(MenuManageVO vo) throws Exception {  
184: public List<?> selectMainMenuLeft(MenuManageVO vo) throws Exception {  
MenuManageDAO.java (4 matches)
38: public List<?> selectMenuManageList(ComDefaultVO vo) throws Exception{  
94: public List<?> selectMenuList() throws Exception{  
152: public List<?> selectMainMenuHead(MenuManageVO vo) throws Exception{  
162: public List<?> selectMainMenuLeft(MenuManageVO vo) throws Exception{  
EgovMenuManageService.java (4 matches)
43: List<?> selectMenuManageList(ComDefaultVO vo) throws Exception;  
98: List<?> selectMenuList() throws Exception;  
107: List<?> selectMainMenuHead(MenuManageVO vo) throws Exception;  
115: List<?> selectMainMenuLeft(MenuManageVO vo) throws Exception;  
web
EgovMainMenuManageController.java (4 matches)
111: List<?> list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);  
145: List<?> list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);  
185: List<?> list_menulist = menuManageService.selectMainMenuLeft(menuManageVO);  
242: List<?> list_headmenu = menuManageService.selectMainMenuHead(menuManageVO);  
EgovMenuManageController.java (4 matches)
149: List<?> list_menumanage = menuManageService.selectMenuManageList(searchVO);  
343: List<?> list_menulist = menuManageService.selectMenuList();  
487: List<?> list_menulist = menuManageService.selectMenuList();  
510: List<?> list_menulist = menuManageService.selectMenuList();  
```

메뉴목록 리스트조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mpm/EgovMenuManageSelect.do

메뉴관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%A9%94%EB%89%B4%EA%B4%80%EB%A6%AC

https://youtu.be/86JYQdyShnE

https://github.com/GSITM2023/egovframe-common-components/commit/8243ef6d67888067b792f81b441cb141eb8c1efc

https://github.com/GSITM2023/egovframe-common-components/commit/cfd226bcf390a3e54ba49a55591979e22468f731

https://github.com/GSITM2023/egovframe-common-components/commit/ca963263987751b50b14d8b404d06444f587b45e

https://github.com/eGovFramework/egovframe-common-components/pull/189

## 2023-07-26

### 제네릭 타입 명시: 메뉴생성 세부화면을 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정
- 코드 정리
  - `@ModelAttribute("menuCreatVO")` 를 `@ModelAttribute` 로 수정
  - `list_menulist` 를 `resultList` 로 수정
- Source > Format 탭을 공백으로

selectMenuCreatList

메뉴생성 내역을 조회

```java
mcm
service
impl
EgovMenuCreateManageServiceImpl.java (4 matches)
68: public List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception {  
105: public List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception {  
135: public List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception {  
145: public List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception {  
MenuCreateManageDAO.java (4 matches)
61: public List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception{  
82: public List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception{  
101: public List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception{  
122: public List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception{  
EgovMenuCreateManageService.java (4 matches)
49: List<?> selectMenuCreatManagList(ComDefaultVO vo) throws Exception;  
65: List<?> selectMenuCreatList(MenuCreatVO vo) throws Exception;  
82: List<?> selectMenuCreatSiteMapList(MenuSiteMapVO vo) throws Exception;  
90: List<?> selectSiteMapByUser(MenuSiteMapVO vo) throws Exception;  
web
EgovMenuCreateManageController.java (5 matches)
114: List<?> list_menumanage = menuCreateManageService.selectMenuCreatManagList(searchVO);  
143: List<?> list_menulist = menuCreateManageService.selectMenuCreatList(menuCreatVO);  
198: List<?> list_menulist = menuCreateManageService.selectMenuCreatSiteMapList(menuSiteMapVO);  
257: List<?> list_menulist = menuCreateManageService.selectMenuCreatSiteMapList(menuSiteMapVO);  
287: List<?> list_menulist = menuCreateManageService.selectSiteMapByUser(menuSiteMapVO);  
```

메뉴생성 세부화면을 조회한다.
- 1100. 메뉴생성관리
- http://localhost:8080/egovframework-all-in-one/sym/mnu/mcm/EgovMenuCreatSelect.do

메뉴생성관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%A9%94%EB%89%B4%EC%83%9D%EC%84%B1%EA%B4%80%EB%A6%AC

https://youtu.be/v--SPbhg-Jg

https://github.com/GSITM2023/egovframe-common-components/commit/1ad12333f096ea0896bc99c2e7ab0cccd95fd9c8

https://github.com/GSITM2023/egovframe-common-components/commit/5350f499e01bf1c8f7bfaaf4e4414cf02dd198f1

https://github.com/eGovFramework/egovframe-common-components/pull/186

## 2023-07-25

### 제네릭 타입 명시: 미리보기를 할 바로가기메뉴관리의 목록을 조회한다.

- `List<?>` 를 `List<MenuManageVO>` 로 수정
- 코드 정리
  - `List<MenuManageVO>` result 제거하고 바로 리턴
- Source > Format 탭을 공백으로

```java
mnu
bmm
service
EgovBkmkMenuManageservice.java
72: public List<?> selectBkmkPreviewList(BkmkMenuManageVO bkmkMenuManageVO) throws Exception;  
```

미리보기를 할 바로가기메뉴관리의 목록을 조회한다.

사용하는 컨트롤러 없어 수동 테스트 Manual testing 못함

바로가기메뉴관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%B0%94%EB%A1%9C%EA%B0%80%EA%B8%B0%EB%A9%94%EB%89%B4%EA%B4%80%EB%A6%AC

https://youtu.be/iPdiWWcJ3dw

https://github.com/GSITM2023/egovframe-common-components/commit/61194fadf5d8b7feb2afe8b7affd1a14992fbb59

https://github.com/GSITM2023/egovframe-common-components/commit/08169b5e94bf8381a4180dd2149322d9326c2608

https://github.com/GSITM2023/egovframe-common-components/commit/6d7c25d7832579286e3a556696dc541033b838ae

https://github.com/eGovFramework/egovframe-common-components/pull/184

## 2023-07-24

### 제네릭 타입 명시: 웹 로그 목록 조회

- `List<?>` 를 `List<WebLog>` 로 수정
- 코드 정리
  - _result 를 resultList 로 수정
  - _cnt 를 totCnt 로 수정
  - _map 을 map 으로 수정
  - Integer.toString 제거
  - `HashMap<?, ?>` 을 `Map<String, Object>` 으로 수정
  - (HashMap<?, ?>) 제거
  - _map.get("resultCnt") 를 totCnt 로 수정
  - (String)_map.get("resultCnt") 를 MapUtils.getInteger 로 수정
  - `model.addAttribute("resultCnt", _map.get("resultCnt"));` 사용 안 해 제거
- Source > Format 탭을 공백으로

```java
wlg
service
impl
EgovWebLogServiceImpl.java
88: List<?> _result = webLogDAO.selectWebLogInf(webLog);  
WebLogDAO.java
71: public List<?> selectWebLogInf(WebLog webLog) throws Exception{  
```

웹 로그 목록 조회
- 1070. 웹로그관리
- http://localhost:8080/egovframework-all-in-one/sym/log/wlg/SelectWebLogList.do

웹로그관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EC%9B%B9%EB%A1%9C%EA%B7%B8%EA%B4%80%EB%A6%AC

https://youtu.be/rXMPf03wbKg

https://github.com/GSITM2023/egovframe-common-components/commit/308cda71f459d005ca8ccbe58a668a4ecfe1b20d

https://github.com/GSITM2023/egovframe-common-components/commit/014daa9dfd73c34585b4e1688c799e03b2ac613b

https://github.com/GSITM2023/egovframe-common-components/commit/b87120ee30ac388b75c81c84b02528df40187e22

https://github.com/eGovFramework/egovframe-common-components/pull/183

## 2023-07-22

### 제네릭 타입 명시: 송수신 로그정보 목록을 조회한다.

- `List<?>` 를 `List<TrsmrcvLog>` 로 수정
- 코드 정리
  - `Map<?, ?>` 을 `Map<String, Object>` 로 수정
  - commons-collections-3.2.2.jar, commons-collections4-4.4.jar
  - `@SuppressWarnings({ "rawtypes", "unchecked" })` 제거
- selectCmmCodeDetail 사용 안 해 제거
- Source > Format 탭을 공백으로

```java
tlg
service
impl
EgovTrsmrcvLogServiceImpl.java
89: List<?> _result = trsmrcvLogDAO.selectTrsmrcvLogInf(trsmrcvLog);  
TrsmrcvLogDAO.java
71: public List<?> selectTrsmrcvLogInf(TrsmrcvLog trsmrcvLog) throws Exception{  
web
EgovTrsmrcvLogController.java
121: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);  
```

송수신 로그 목록 조회
- 1050. 송/수신로그관리
- http://localhost:8080/egovframework-all-in-one/sym/log/tlg/SelectTrsmrcvLogList.do

송수신 로그 테스트 화면
- http://localhost:8080/egovframework-all-in-one/sym/log/tlg/AddTrsmrcvLog.do

송수신로그관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EC%86%A1_%EC%88%98%EC%8B%A0_%EB%A1%9C%EA%B7%B8%EA%B4%80%EB%A6%AC

https://youtu.be/WckpOEoRBJg

https://github.com/GSITM2023/egovframe-common-components/commit/7fe3bceb1d51cd7a05cc10c43137bbe352546e16

https://github.com/GSITM2023/egovframe-common-components/commit/4b988e90607295805c15efe1ee1a2c5838c3a6d9

https://github.com/GSITM2023/egovframe-common-components/commit/91853d9db16e3dd96787845ce78b66e54d5d6ad4

https://github.com/GSITM2023/egovframe-common-components/commit/d1cea8a9a03cfb455a698945c9bf5cf1e685d673

https://github.com/eGovFramework/egovframe-common-components/pull/181

## 2023-07-21

### 제네릭 타입 명시: 시스템 이력정보 목록을 조회한다.

- `List<?>` 를 `List<SysHistoryVO>` 로 수정
- 코드 정리
- HashMap 보다 ModelMap 을 사용하는 게 좋을 것 같음

```java
slg
service
impl
EgovSysHistoryServiceImpl.java
90: List<?> _result = sysHistoryDAO.selectSysHistorList(historyVO);  
SysHistoryDAO.java
61: public List<?> selectSysHistorList(SysHistoryVO historyVO) throws Exception{  
web
EgovSysHistoryController.java (4 matches)
96: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);  
132: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);  
163: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);  
211: List<?> _result = cmmUseService.selectCmmCodeDetail(vo);  
```

시스템이력 목록 조회
- http://localhost:8080/egovframework-all-in-one/sym/log/slg/SelectSysHistoryList.do

시스템이력관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EC%8B%9C%EC%8A%A4%ED%85%9C_%EC%9D%B4%EB%A0%A5%EA%B4%80%EB%A6%AC

https://youtu.be/A7AEiOGLetg

https://github.com/GSITM2023/egovframe-common-components/commit/2887746255c0d37f90fae2764c68320560b1c312

https://github.com/GSITM2023/egovframe-common-components/commit/04267790560ad1b0d10ed0b679cb78dccb7a9f38

https://github.com/eGovFramework/egovframe-common-components/pull/179

## 2023-07-20

### 제네릭 타입 명시: 일반달력 월간 휴일을 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정

selectNormalMonthRestde

일반달력 월간 휴일을 조회한다.

```java
cal
service
impl
EgovCalRestdeManageServiceImpl.java (9 matches)
44: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
52: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
60: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
68: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
76: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
84: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
92: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
100: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
133: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
RestdeManageDAO.java (9 matches)
37: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
47: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
57: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
67: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
77: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
87: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
97: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
107: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
147: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
EgovCalRestdeManageService.java (9 matches)
30: List<?> selectNormalRestdePopup(Restde restde) throws Exception;  
38: List<?> selectAdministRestdePopup(Restde restde) throws Exception;  
46: List<?> selectNormalDayCal(Restde restde) throws Exception;  
54: List<?> selectNormalDayRestde(Restde restde) throws Exception;  
62: List<?> selectNormalMonthRestde(Restde restde) throws Exception;  
70: List<?> selectAdministDayCal(Restde restde) throws Exception;  
78: List<?> selectAdministDayRestde(Restde restde) throws Exception;  
86: List<?> selectAdministMonthRestde(Restde restde) throws Exception;  
116: List<?> selectRestdeList(RestdeVO searchVO) throws Exception;  
web
EgovCalRestdeManageController.java (92 matches)
268: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
344: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
421: List<?> CalInfoList          = restdeManageService.selectNormalDayCal(restde);  
422: List<?> NormalWeekRestdeList = restdeManageService.selectNormalDayRestde(restde);  
525: List<?> CalInfoList_1          = restdeManageService.selectNormalDayCal(vo);  
526: List<?> NormalWeekRestdeList_1 = restdeManageService.selectNormalDayRestde(vo);  
534: List<?> CalInfoList_2          = restdeManageService.selectNormalDayCal(vo);  
535: List<?> NormalWeekRestdeList_2 = restdeManageService.selectNormalDayRestde(vo);  
543: List<?> CalInfoList_3          = restdeManageService.selectNormalDayCal(vo);  
544: List<?> NormalWeekRestdeList_3 = restdeManageService.selectNormalDayRestde(vo);  
552: List<?> CalInfoList_4          = restdeManageService.selectNormalDayCal(vo);  
553: List<?> NormalWeekRestdeList_4 = restdeManageService.selectNormalDayRestde(vo);  
561: List<?> CalInfoList_5          = restdeManageService.selectNormalDayCal(vo);  
562: List<?> NormalWeekRestdeList_5 = restdeManageService.selectNormalDayRestde(vo);  
570: List<?> CalInfoList_6          = restdeManageService.selectNormalDayCal(vo);  
571: List<?> NormalWeekRestdeList_6 = restdeManageService.selectNormalDayRestde(vo);  
579: List<?> CalInfoList_7          = restdeManageService.selectNormalDayCal(vo);  
580: List<?> NormalWeekRestdeList_7 = restdeManageService.selectNormalDayRestde(vo);  
597: List<?> CalInfoList = restdeManageService.selectNormalDayCal(restde);  
659: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
662: List<?> NormalMonthRestdeList = restdeManageService.selectNormalMonthRestde(restde);  
728: List<?> CalInfoList_1 = restdeManageService.selectNormalRestdePopup(restde);  
729: List<?> NormalMonthRestdeList_1 = restdeManageService.selectNormalMonthRestde(restde);  
737: List<?> CalInfoList_2 = restdeManageService.selectNormalRestdePopup(restde);  
738: List<?> NormalMonthRestdeList_2 = restdeManageService.selectNormalMonthRestde(restde);  
746: List<?> CalInfoList_3 = restdeManageService.selectNormalRestdePopup(restde);  
747: List<?> NormalMonthRestdeList_3 = restdeManageService.selectNormalMonthRestde(restde);  
755: List<?> CalInfoList_4 = restdeManageService.selectNormalRestdePopup(restde);  
756: List<?> NormalMonthRestdeList_4 = restdeManageService.selectNormalMonthRestde(restde);  
764: List<?> CalInfoList_5 = restdeManageService.selectNormalRestdePopup(restde);  
765: List<?> NormalMonthRestdeList_5 = restdeManageService.selectNormalMonthRestde(restde);  
773: List<?> CalInfoList_6 = restdeManageService.selectNormalRestdePopup(restde);  
774: List<?> NormalMonthRestdeList_6 = restdeManageService.selectNormalMonthRestde(restde);  
782: List<?> CalInfoList_7 = restdeManageService.selectNormalRestdePopup(restde);  
783: List<?> NormalMonthRestdeList_7 = restdeManageService.selectNormalMonthRestde(restde);  
791: List<?> CalInfoList_8 = restdeManageService.selectNormalRestdePopup(restde);  
792: List<?> NormalMonthRestdeList_8 = restdeManageService.selectNormalMonthRestde(restde);  
800: List<?> CalInfoList_9 = restdeManageService.selectNormalRestdePopup(restde);  
801: List<?> NormalMonthRestdeList_9 = restdeManageService.selectNormalMonthRestde(restde);  
809: List<?> CalInfoList_10 = restdeManageService.selectNormalRestdePopup(restde);  
810: List<?> NormalMonthRestdeList_10 = restdeManageService.selectNormalMonthRestde(restde);  
818: List<?> CalInfoList_11 = restdeManageService.selectNormalRestdePopup(restde);  
819: List<?> NormalMonthRestdeList_11 = restdeManageService.selectNormalMonthRestde(restde);  
827: List<?> CalInfoList_12 = restdeManageService.selectNormalRestdePopup(restde);  
828: List<?> NormalMonthRestdeList_12 = restdeManageService.selectNormalMonthRestde(restde);  
929: List<?> CalInfoList          = restdeManageService.selectAdministDayCal(restde);  
930: List<?> AdministWeekRestdeList = restdeManageService.selectAdministDayRestde(restde);  
1,025: List<?> CalInfoList = restdeManageService.selectAdministDayCal(restde);  
1,035: List<?> CalInfoList_1          = restdeManageService.selectAdministDayCal(vo);  
1,036: List<?> AdministWeekRestdeList_1 = restdeManageService.selectAdministDayRestde(vo);  
1,044: List<?> CalInfoList_2          = restdeManageService.selectAdministDayCal(vo);  
1,045: List<?> AdministWeekRestdeList_2 = restdeManageService.selectAdministDayRestde(vo);  
1,053: List<?> CalInfoList_3          = restdeManageService.selectAdministDayCal(vo);  
1,054: List<?> AdministWeekRestdeList_3 = restdeManageService.selectAdministDayRestde(vo);  
1,062: List<?> CalInfoList_4          = restdeManageService.selectAdministDayCal(vo);  
1,063: List<?> AdministWeekRestdeList_4 = restdeManageService.selectAdministDayRestde(vo);  
1,071: List<?> CalInfoList_5          = restdeManageService.selectAdministDayCal(vo);  
1,072: List<?> AdministWeekRestdeList_5 = restdeManageService.selectAdministDayRestde(vo);  
1,080: List<?> CalInfoList_6          = restdeManageService.selectAdministDayCal(vo);  
1,081: List<?> AdministWeekRestdeList_6 = restdeManageService.selectAdministDayRestde(vo);  
1,089: List<?> CalInfoList_7          = restdeManageService.selectAdministDayCal(vo);  
1,090: List<?> AdministWeekRestdeList_7 = restdeManageService.selectAdministDayRestde(vo);  
1,168: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
1,171: List<?> AdministMonthRestdeList = restdeManageService.selectAdministMonthRestde(restde);  
1,238: List<?> CalInfoList_1 = restdeManageService.selectAdministRestdePopup(restde);  
1,239: List<?> AdministMonthRestdeList_1 = restdeManageService.selectAdministMonthRestde(restde);  
1,247: List<?> CalInfoList_2 = restdeManageService.selectAdministRestdePopup(restde);  
1,248: List<?> AdministMonthRestdeList_2 = restdeManageService.selectAdministMonthRestde(restde);  
1,256: List<?> CalInfoList_3 = restdeManageService.selectAdministRestdePopup(restde);  
1,257: List<?> AdministMonthRestdeList_3 = restdeManageService.selectAdministMonthRestde(restde);  
1,265: List<?> CalInfoList_4 = restdeManageService.selectAdministRestdePopup(restde);  
1,266: List<?> AdministMonthRestdeList_4 = restdeManageService.selectAdministMonthRestde(restde);  
1,274: List<?> CalInfoList_5 = restdeManageService.selectAdministRestdePopup(restde);  
1,275: List<?> AdministMonthRestdeList_5 = restdeManageService.selectAdministMonthRestde(restde);  
1,283: List<?> CalInfoList_6 = restdeManageService.selectAdministRestdePopup(restde);  
1,284: List<?> AdministMonthRestdeList_6 = restdeManageService.selectAdministMonthRestde(restde);  
1,292: List<?> CalInfoList_7 = restdeManageService.selectAdministRestdePopup(restde);  
1,293: List<?> AdministMonthRestdeList_7 = restdeManageService.selectAdministMonthRestde(restde);  
1,301: List<?> CalInfoList_8 = restdeManageService.selectAdministRestdePopup(restde);  
1,302: List<?> AdministMonthRestdeList_8 = restdeManageService.selectAdministMonthRestde(restde);  
1,310: List<?> CalInfoList_9 = restdeManageService.selectAdministRestdePopup(restde);  
1,311: List<?> AdministMonthRestdeList_9 = restdeManageService.selectAdministMonthRestde(restde);  
1,319: List<?> CalInfoList_10 = restdeManageService.selectAdministRestdePopup(restde);  
1,320: List<?> AdministMonthRestdeList_10 = restdeManageService.selectAdministMonthRestde(restde);  
1,328: List<?> CalInfoList_11 = restdeManageService.selectAdministRestdePopup(restde);  
1,329: List<?> AdministMonthRestdeList_11 = restdeManageService.selectAdministMonthRestde(restde);  
1,337: List<?> CalInfoList_12 = restdeManageService.selectAdministRestdePopup(restde);  
1,338: List<?> AdministMonthRestdeList_12 = restdeManageService.selectAdministMonthRestde(restde);  
1,407: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
1,473: List<?> CmmnCodeList = restdeManageService.selectRestdeList(searchVO);  
1,507: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  
1,516: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  

```

일반달력 월간

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovNormalMonthCalendar.do

일반달력 연간

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovNormalYearCalendar.do

- 공통컴포넌트 v4.1 가이드
- 시스템관리 - 일반달력/행정달력/휴일관리
- 요소기술 > 달력 > 공휴일관리(달력)

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%9C%B4%EC%9D%BC%EA%B4%80%EB%A6%AC#%EC%9D%BC%EB%B0%98%EB%8B%AC%EB%A0%A5_%EC%9D%BC%EA%B0%84_%EC%A3%BC%EA%B0%84_%EC%9B%94%EA%B0%84_%EC%97%B0%EA%B0%84

https://youtu.be/GLeXW8VwjRc

https://github.com/GSITM2023/egovframe-common-components/commit/6f131eff23e35703367cac53705ca6dff38c6fc7

https://github.com/eGovFramework/egovframe-common-components/pull/177

## 2023-07-19

### 제네릭 타입 명시: 우편번호 찾기 목록을 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정

```java
zip
service
impl
EgovCcmRdnmadZipServiceImpl.java
92: public List<?> selectZipList(ZipVO searchVO) throws Exception {  
EgovCcmZipManageServiceImpl.java
93: public List<?> selectZipList(ZipVO searchVO) throws Exception {  
RdnmadZipDAO.java
83: public List<?> selectZipList(ZipVO searchVO) throws Exception {  
ZipManageDAO.java
83: public List<?> selectZipList(ZipVO searchVO) throws Exception {  
EgovCcmRdnmadZipManageService.java
67: List<?> selectZipList(ZipVO searchVO) throws Exception;  
EgovCcmZipManageService.java
67: List<?> selectZipList(ZipVO searchVO) throws Exception;  
web
EgovCcmZipManageController.java (4 matches)
125: List<?> CmmnCodeList = zipManageService.selectZipList(searchVO);  
132: List<?> CmmnCodeList = rdnmadZipService.selectZipList(searchVO);  
324: List<?> CmmnCodeList = zipManageService.selectZipList(searchVO);  
331: List<?> CmmnCodeList = rdnmadZipService.selectZipList(searchVO);  

```

우편번호 찾기 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/zip/EgovCcmZipSearchList.do

- 우편번호 목록을 조회한다.
- 1000. 우편번호관리

http://localhost:8080/egovframework-all-in-one/sym/ccm/zip/EgovCcmZipList.do

시스템관리 > 공통코드관리 > 우편번호관리 > 도로명 주소찾기, 우편번호관리

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EC%9A%B0%ED%8E%B8%EB%B2%88%ED%98%B8%EA%B4%80%EB%A6%AC

https://youtu.be/6scH-_Gfnsw

https://github.com/GSITM2023/egovframe-common-components/commit/593861c3188dfc46d3df126b3edde35477eb8566

https://github.com/eGovFramework/egovframe-common-components/pull/175

## 2023-07-18

### 제네릭 타입 명시: 기관코드수신 목록을 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정

```java
icr
service
impl
EgovInsttCodeRecptnServiceImpl.java (2 matches)
416: public List<?> selectInsttCodeRecptnList(InsttCodeRecptnVO searchVO) throws Exception {  
430: public List<?> selectInsttCodeList(InsttCodeRecptnVO searchVO) throws Exception {  
InsttCodeRecptnDAO.java (2 matches)
106: public List<?> selectInsttCodeRecptnList(InsttCodeRecptnVO searchVO) throws Exception {  
125: public List<?> selectInsttCodeList(InsttCodeRecptnVO searchVO) throws Exception {  
EgovInsttCodeRecptnService.java (2 matches)
46: List<?> selectInsttCodeRecptnList(InsttCodeRecptnVO searchVO) throws Exception;  
61: List<?> selectInsttCodeList(InsttCodeRecptnVO searchVO) throws Exception;  
web
EgovInsttCodeRecptnController.java (5 matches)
114: List<?> changeSeCodeList = cmmUseService.selectCmmCodeDetail(comCodeVO);  
119: List<?> processSeList = cmmUseService.selectCmmCodeDetail(comCodeVO);  
123: List<?> insttCodeRecptnList = insttCodeManageService.selectInsttCodeRecptnList(insttCodeRecptnVO);  
155: List<?> insttCodeRecptnList = insttCodeManageService.selectInsttCodeRecptnList(searchVO);  
181: List<?> insttCodeRecptnList = insttCodeManageService.selectInsttCodeRecptnList(searchVO);  

```

기관코드수신 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/icr/getInsttCodeRecptnList.do

기관코드 상세내역을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/icr/getInsttCodeDetail.do

기관코드수신 개인화페이지용 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/icr/getInsttCodeRecptnMainList.do

1020. 기관코드수신

http://localhost:8080/egovframework-all-in-one/sym/ccm/icr/getInsttCodeRecptnList.do

시스템관리 > 공통코드관리 > 기관코드수신 > 기관코드

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EA%B8%B0%EA%B4%80%EC%BD%94%EB%93%9C

https://youtu.be/WXFikLufx88

https://github.com/GSITM2023/egovframe-common-components/commit/86344575c6a975753b77d1cfe82f971aae559732

https://github.com/eGovFramework/egovframe-common-components/pull/173

## 2023-07-17

### 제네릭 타입 명시: 공통상세코드를 등록한다.

- `List<?>` 를 `List<CmmnClCodeVO>` 로 수정
- searchClCodeVO.setFirstIndex(0); 추가
- 변수명 카멜 표기법: CmmnClCodeList 를 clCodeList 로 수정
- 변수명 카멜 표기법: CmmnCodeList 를 codeList 로 수정

```java
cde
web
EgovCcmCmmnDetailCodeManageController.java
213: List<?> CmmnClCodeList = cmmnClCodeManageService.selectCmmnClCodeList(searchClCodeVO);  

```

970. 공통상세코드

http://localhost:8080/egovframework-all-in-one/sym/ccm/cde/SelectCcmCmmnDetailCodeList.do

공통상세코드를 등록한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/cde/RegistCcmCmmnDetailCode.do

시스템관리 > 공통코드관리 > 공통상세코드

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EA%B3%B5%ED%86%B5%EC%83%81%EC%84%B8%EC%BD%94%EB%93%9C

https://youtu.be/ujdzXE5iMm0

https://github.com/GSITM2023/egovframe-common-components/commit/838b82d0926af3800e400bb2ae88e7dc3c4795a8

https://github.com/eGovFramework/egovframe-common-components/pull/171

## 2023-07-15

### 제네릭 타입 명시: 공통코드를 등록한다.

- `List<?>` 를 `List<CmmnClCodeVO>` 로 수정

```java
cca
web
EgovCcmCmmnCodeManageController.java
178: List<?> CmmnCodeList = cmmnClCodeManageService.selectCmmnClCodeList(searchVO);  

```

공통코드를 등록한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/cca/RegistCcmCmmnCode.do

시스템관리 > 980. 공통코드

http://localhost:8080/egovframework-all-in-one/sym/ccm/cca/SelectCcmCmmnCodeList.do

시스템관리 > 공통코드관리 > 공통코드

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EA%B3%B5%ED%86%B5%EC%BD%94%EB%93%9C

https://youtu.be/XwIl38be1Og

https://github.com/GSITM2023/egovframe-common-components/commit/775993b4fdbaa0b6709c92bf6b90bda9cb858ebb

https://github.com/eGovFramework/egovframe-common-components/pull/169

## 2023-07-14

### 제네릭 타입 명시: 일반달력 일간 정보를 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정
- 코드 정리
  - `@SuppressWarnings("static-access")` 제거
  - `cal.YEAR` 를 `Calendar.YEAR` 로 수정

selectNormalDayCal

일반달력 일간 정보를 조회한다.

selectNormalDayRestde

일반달력 일간 휴일을 조회한다.

```java
cal
service
impl
EgovCalRestdeManageServiceImpl.java (9 matches)
44: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
52: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
60: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
68: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
76: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
84: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
92: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
100: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
133: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
RestdeManageDAO.java (9 matches)
37: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
47: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
57: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
67: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
77: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
87: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
97: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
107: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
147: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
EgovCalRestdeManageService.java (9 matches)
30: List<?> selectNormalRestdePopup(Restde restde) throws Exception;  
38: List<?> selectAdministRestdePopup(Restde restde) throws Exception;  
46: List<?> selectNormalDayCal(Restde restde) throws Exception;  
54: List<?> selectNormalDayRestde(Restde restde) throws Exception;  
62: List<?> selectNormalMonthRestde(Restde restde) throws Exception;  
70: List<?> selectAdministDayCal(Restde restde) throws Exception;  
78: List<?> selectAdministDayRestde(Restde restde) throws Exception;  
86: List<?> selectAdministMonthRestde(Restde restde) throws Exception;  
116: List<?> selectRestdeList(RestdeVO searchVO) throws Exception;  
web
EgovCalRestdeManageController.java (92 matches)
268: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
344: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
421: List<?> CalInfoList          = restdeManageService.selectNormalDayCal(restde);  
422: List<?> NormalWeekRestdeList = restdeManageService.selectNormalDayRestde(restde);  
525: List<?> CalInfoList_1          = restdeManageService.selectNormalDayCal(vo);  
526: List<?> NormalWeekRestdeList_1 = restdeManageService.selectNormalDayRestde(vo);  
534: List<?> CalInfoList_2          = restdeManageService.selectNormalDayCal(vo);  
535: List<?> NormalWeekRestdeList_2 = restdeManageService.selectNormalDayRestde(vo);  
543: List<?> CalInfoList_3          = restdeManageService.selectNormalDayCal(vo);  
544: List<?> NormalWeekRestdeList_3 = restdeManageService.selectNormalDayRestde(vo);  
552: List<?> CalInfoList_4          = restdeManageService.selectNormalDayCal(vo);  
553: List<?> NormalWeekRestdeList_4 = restdeManageService.selectNormalDayRestde(vo);  
561: List<?> CalInfoList_5          = restdeManageService.selectNormalDayCal(vo);  
562: List<?> NormalWeekRestdeList_5 = restdeManageService.selectNormalDayRestde(vo);  
570: List<?> CalInfoList_6          = restdeManageService.selectNormalDayCal(vo);  
571: List<?> NormalWeekRestdeList_6 = restdeManageService.selectNormalDayRestde(vo);  
579: List<?> CalInfoList_7          = restdeManageService.selectNormalDayCal(vo);  
580: List<?> NormalWeekRestdeList_7 = restdeManageService.selectNormalDayRestde(vo);  
597: List<?> CalInfoList = restdeManageService.selectNormalDayCal(restde);  
659: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
662: List<?> NormalMonthRestdeList = restdeManageService.selectNormalMonthRestde(restde);  
728: List<?> CalInfoList_1 = restdeManageService.selectNormalRestdePopup(restde);  
729: List<?> NormalMonthRestdeList_1 = restdeManageService.selectNormalMonthRestde(restde);  
737: List<?> CalInfoList_2 = restdeManageService.selectNormalRestdePopup(restde);  
738: List<?> NormalMonthRestdeList_2 = restdeManageService.selectNormalMonthRestde(restde);  
746: List<?> CalInfoList_3 = restdeManageService.selectNormalRestdePopup(restde);  
747: List<?> NormalMonthRestdeList_3 = restdeManageService.selectNormalMonthRestde(restde);  
755: List<?> CalInfoList_4 = restdeManageService.selectNormalRestdePopup(restde);  
756: List<?> NormalMonthRestdeList_4 = restdeManageService.selectNormalMonthRestde(restde);  
764: List<?> CalInfoList_5 = restdeManageService.selectNormalRestdePopup(restde);  
765: List<?> NormalMonthRestdeList_5 = restdeManageService.selectNormalMonthRestde(restde);  
773: List<?> CalInfoList_6 = restdeManageService.selectNormalRestdePopup(restde);  
774: List<?> NormalMonthRestdeList_6 = restdeManageService.selectNormalMonthRestde(restde);  
782: List<?> CalInfoList_7 = restdeManageService.selectNormalRestdePopup(restde);  
783: List<?> NormalMonthRestdeList_7 = restdeManageService.selectNormalMonthRestde(restde);  
791: List<?> CalInfoList_8 = restdeManageService.selectNormalRestdePopup(restde);  
792: List<?> NormalMonthRestdeList_8 = restdeManageService.selectNormalMonthRestde(restde);  
800: List<?> CalInfoList_9 = restdeManageService.selectNormalRestdePopup(restde);  
801: List<?> NormalMonthRestdeList_9 = restdeManageService.selectNormalMonthRestde(restde);  
809: List<?> CalInfoList_10 = restdeManageService.selectNormalRestdePopup(restde);  
810: List<?> NormalMonthRestdeList_10 = restdeManageService.selectNormalMonthRestde(restde);  
818: List<?> CalInfoList_11 = restdeManageService.selectNormalRestdePopup(restde);  
819: List<?> NormalMonthRestdeList_11 = restdeManageService.selectNormalMonthRestde(restde);  
827: List<?> CalInfoList_12 = restdeManageService.selectNormalRestdePopup(restde);  
828: List<?> NormalMonthRestdeList_12 = restdeManageService.selectNormalMonthRestde(restde);  
929: List<?> CalInfoList          = restdeManageService.selectAdministDayCal(restde);  
930: List<?> AdministWeekRestdeList = restdeManageService.selectAdministDayRestde(restde);  
1,025: List<?> CalInfoList = restdeManageService.selectAdministDayCal(restde);  
1,035: List<?> CalInfoList_1          = restdeManageService.selectAdministDayCal(vo);  
1,036: List<?> AdministWeekRestdeList_1 = restdeManageService.selectAdministDayRestde(vo);  
1,044: List<?> CalInfoList_2          = restdeManageService.selectAdministDayCal(vo);  
1,045: List<?> AdministWeekRestdeList_2 = restdeManageService.selectAdministDayRestde(vo);  
1,053: List<?> CalInfoList_3          = restdeManageService.selectAdministDayCal(vo);  
1,054: List<?> AdministWeekRestdeList_3 = restdeManageService.selectAdministDayRestde(vo);  
1,062: List<?> CalInfoList_4          = restdeManageService.selectAdministDayCal(vo);  
1,063: List<?> AdministWeekRestdeList_4 = restdeManageService.selectAdministDayRestde(vo);  
1,071: List<?> CalInfoList_5          = restdeManageService.selectAdministDayCal(vo);  
1,072: List<?> AdministWeekRestdeList_5 = restdeManageService.selectAdministDayRestde(vo);  
1,080: List<?> CalInfoList_6          = restdeManageService.selectAdministDayCal(vo);  
1,081: List<?> AdministWeekRestdeList_6 = restdeManageService.selectAdministDayRestde(vo);  
1,089: List<?> CalInfoList_7          = restdeManageService.selectAdministDayCal(vo);  
1,090: List<?> AdministWeekRestdeList_7 = restdeManageService.selectAdministDayRestde(vo);  
1,168: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
1,171: List<?> AdministMonthRestdeList = restdeManageService.selectAdministMonthRestde(restde);  
1,238: List<?> CalInfoList_1 = restdeManageService.selectAdministRestdePopup(restde);  
1,239: List<?> AdministMonthRestdeList_1 = restdeManageService.selectAdministMonthRestde(restde);  
1,247: List<?> CalInfoList_2 = restdeManageService.selectAdministRestdePopup(restde);  
1,248: List<?> AdministMonthRestdeList_2 = restdeManageService.selectAdministMonthRestde(restde);  
1,256: List<?> CalInfoList_3 = restdeManageService.selectAdministRestdePopup(restde);  
1,257: List<?> AdministMonthRestdeList_3 = restdeManageService.selectAdministMonthRestde(restde);  
1,265: List<?> CalInfoList_4 = restdeManageService.selectAdministRestdePopup(restde);  
1,266: List<?> AdministMonthRestdeList_4 = restdeManageService.selectAdministMonthRestde(restde);  
1,274: List<?> CalInfoList_5 = restdeManageService.selectAdministRestdePopup(restde);  
1,275: List<?> AdministMonthRestdeList_5 = restdeManageService.selectAdministMonthRestde(restde);  
1,283: List<?> CalInfoList_6 = restdeManageService.selectAdministRestdePopup(restde);  
1,284: List<?> AdministMonthRestdeList_6 = restdeManageService.selectAdministMonthRestde(restde);  
1,292: List<?> CalInfoList_7 = restdeManageService.selectAdministRestdePopup(restde);  
1,293: List<?> AdministMonthRestdeList_7 = restdeManageService.selectAdministMonthRestde(restde);  
1,301: List<?> CalInfoList_8 = restdeManageService.selectAdministRestdePopup(restde);  
1,302: List<?> AdministMonthRestdeList_8 = restdeManageService.selectAdministMonthRestde(restde);  
1,310: List<?> CalInfoList_9 = restdeManageService.selectAdministRestdePopup(restde);  
1,311: List<?> AdministMonthRestdeList_9 = restdeManageService.selectAdministMonthRestde(restde);  
1,319: List<?> CalInfoList_10 = restdeManageService.selectAdministRestdePopup(restde);  
1,320: List<?> AdministMonthRestdeList_10 = restdeManageService.selectAdministMonthRestde(restde);  
1,328: List<?> CalInfoList_11 = restdeManageService.selectAdministRestdePopup(restde);  
1,329: List<?> AdministMonthRestdeList_11 = restdeManageService.selectAdministMonthRestde(restde);  
1,337: List<?> CalInfoList_12 = restdeManageService.selectAdministRestdePopup(restde);  
1,338: List<?> AdministMonthRestdeList_12 = restdeManageService.selectAdministMonthRestde(restde);  
1,407: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
1,473: List<?> CmmnCodeList = restdeManageService.selectRestdeList(searchVO);  
1,507: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  
1,516: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  

```

일반달력 일간

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovNormalDayCalendar.do

일반달력 주간

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovNormalWeekCalendar.do

공통컴포넌트 v4.1 가이드

시스템관리 - 일반달력/행정달력/휴일관리

요소기술 > 달력 > 공휴일관리(달력)

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%9C%B4%EC%9D%BC%EA%B4%80%EB%A6%AC#%EC%9D%BC%EB%B0%98%EB%8B%AC%EB%A0%A5_%EC%9D%BC%EA%B0%84_%EC%A3%BC%EA%B0%84_%EC%9B%94%EA%B0%84_%EC%97%B0%EA%B0%84

https://youtu.be/bx5QUbf-9BI

https://github.com/GSITM2023/egovframe-common-components/commit/95345a421cd4d026576362e1a3eb1a242e1b3aae

https://github.com/eGovFramework/egovframe-common-components/pull/167

## 2023-07-13

### 제네릭 타입 명시: 행정코드 목록을 조회한다.

- `List<?>` 를 `List<EgovMap>` 로 수정

```java
adc
service
impl
AdministCodeManageDAO.java
66: public List<?> selectAdministCodeList(AdministCodeVO searchVO) throws Exception {  
EgovCcmAdministCodeManageServiceImpl.java
69: public List<?> selectAdministCodeList(AdministCodeVO searchVO) throws Exception {  
EgovCcmAdministCodeManageService.java
52: List<?> selectAdministCodeList(AdministCodeVO searchVO) throws Exception;  
web
EgovCcmAdministCodeManageController.java (2 matches)
169: List<?> CmmnCodeList = administCodeManageService.selectAdministCodeList(searchVO);  
218: List<?> CmmnCodeList = administCodeManageService.selectAdministCodeList(searchVO);  

```

행정코드 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/adc/EgovCcmAdministCodeList.do

행정코드 팝업 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/adc/EgovCcmAdministCode.do

1010. 행정코드관리

http://localhost:8080/egovframework-all-in-one/sym/ccm/adc/EgovCcmAdministCodeList.do

행정코드관리

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%96%89%EC%A0%95%EC%BD%94%EB%93%9C%EA%B4%80%EB%A6%AC

행정표준코드관리시스템

https://www.code.go.kr/index.do

```
법정동
```

https://youtu.be/4XH5z3DWdKc

https://github.com/GSITM2023/egovframe-common-components/commit/94d44a144410d1e0e77d3467d7e49de4467dd6e6

https://github.com/eGovFramework/egovframe-common-components/pull/165


## 2023-07-12

### 제네릭 타입 명시: 법정동코드

- ```List<?>``` 를 ```List<EgovMap>``` 로 수정
- 법정동코드수신 목록 화면에 디자인 버그있음
- 법정동코드수신 개인화페이지용 목록 화면에서 404 버그있음

```java
ccm
acr
service
impl
AdministCodeRecptnDAO.java (2 matches)
108: public List<?> selectAdministCodeRecptnList(AdministCodeRecptnVO searchVO) throws Exception {  
127: public List<?> selectAdministCodeList(AdministCodeRecptnVO searchVO) throws Exception {  
EgovAdministCodeRecptnServiceImpl.java (2 matches)
413: public List<?> selectAdministCodeRecptnList(AdministCodeRecptnVO searchVO) throws Exception {  
427: public List<?> selectAdministCodeList(AdministCodeRecptnVO searchVO) throws Exception {  
EgovAdministCodeRecptnService.java (2 matches)
46: List<?> selectAdministCodeRecptnList(AdministCodeRecptnVO searchVO) throws Exception;  
61: List<?> selectAdministCodeList(AdministCodeRecptnVO searchVO) throws Exception;  
web
EgovAdministCodeRecptnController.java (5 matches)
113: List<?> changeSeCodeList = cmmUseService.selectCmmCodeDetail(comCodeVO);  
118: List<?> processSeList = cmmUseService.selectCmmCodeDetail(comCodeVO);  
122: List<?> administCodeRecptnList = administCodeManageService.selectAdministCodeRecptnList(administCodeRecptnVO);  
155: List<?> administCodeRecptnList = administCodeManageService.selectAdministCodeRecptnList(searchVO);  
181: List<?> administCodeRecptnList = administCodeManageService.selectAdministCodeRecptnList(searchVO);  
```

법정동코드 상세내역을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/acr/getAdministCodeDetail.do

법정동코드수신 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/acr/getAdministCodeRecptnList.do

법정동코드수신 개인화페이지용 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/ccm/acr/getAdministCodeRecptnMainList.do

법정동코드

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%B2%95%EC%A0%95%EB%8F%99%EC%BD%94%EB%93%9C

https://youtu.be/1AWPHTETx-Q

https://github.com/GSITM2023/egovframe-common-components/commit/2f2e3d1e5edb7a0cee8a768eb832f82242269994

## 2023-07-11

### 제네릭 타입 명시: 시스템관리 - 행정달력

- 제네릭 타입 명시: 시스템관리 - 행정달력
  - List<?> 를 List<EgovMap> 로 수정
- 행정달력 mysql/postgres ORDER BY 추가
  - mysql/postgres/maria 에 ORDER BY 없어, ORDER BY DUMMY.ROWNUM 추가

selectAdministRestdePopup

행정달력 팝업 정보를 조회한다.

```java
cal
service
impl
EgovCalRestdeManageServiceImpl.java (9 matches)
44: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
52: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
60: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
68: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
76: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
84: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
92: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
100: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
133: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
RestdeManageDAO.java (9 matches)
37: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
47: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
57: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
67: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
77: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
87: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
97: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
107: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
147: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
EgovCalRestdeManageService.java (9 matches)
30: List<?> selectNormalRestdePopup(Restde restde) throws Exception;  
38: List<?> selectAdministRestdePopup(Restde restde) throws Exception;  
46: List<?> selectNormalDayCal(Restde restde) throws Exception;  
54: List<?> selectNormalDayRestde(Restde restde) throws Exception;  
62: List<?> selectNormalMonthRestde(Restde restde) throws Exception;  
70: List<?> selectAdministDayCal(Restde restde) throws Exception;  
78: List<?> selectAdministDayRestde(Restde restde) throws Exception;  
86: List<?> selectAdministMonthRestde(Restde restde) throws Exception;  
116: List<?> selectRestdeList(RestdeVO searchVO) throws Exception;  
web
EgovCalRestdeManageController.java (92 matches)
268: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
344: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
421: List<?> CalInfoList          = restdeManageService.selectNormalDayCal(restde);  
422: List<?> NormalWeekRestdeList = restdeManageService.selectNormalDayRestde(restde);  
525: List<?> CalInfoList_1          = restdeManageService.selectNormalDayCal(vo);  
526: List<?> NormalWeekRestdeList_1 = restdeManageService.selectNormalDayRestde(vo);  
534: List<?> CalInfoList_2          = restdeManageService.selectNormalDayCal(vo);  
535: List<?> NormalWeekRestdeList_2 = restdeManageService.selectNormalDayRestde(vo);  
543: List<?> CalInfoList_3          = restdeManageService.selectNormalDayCal(vo);  
544: List<?> NormalWeekRestdeList_3 = restdeManageService.selectNormalDayRestde(vo);  
552: List<?> CalInfoList_4          = restdeManageService.selectNormalDayCal(vo);  
553: List<?> NormalWeekRestdeList_4 = restdeManageService.selectNormalDayRestde(vo);  
561: List<?> CalInfoList_5          = restdeManageService.selectNormalDayCal(vo);  
562: List<?> NormalWeekRestdeList_5 = restdeManageService.selectNormalDayRestde(vo);  
570: List<?> CalInfoList_6          = restdeManageService.selectNormalDayCal(vo);  
571: List<?> NormalWeekRestdeList_6 = restdeManageService.selectNormalDayRestde(vo);  
579: List<?> CalInfoList_7          = restdeManageService.selectNormalDayCal(vo);  
580: List<?> NormalWeekRestdeList_7 = restdeManageService.selectNormalDayRestde(vo);  
597: List<?> CalInfoList = restdeManageService.selectNormalDayCal(restde);  
659: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
662: List<?> NormalMonthRestdeList = restdeManageService.selectNormalMonthRestde(restde);  
728: List<?> CalInfoList_1 = restdeManageService.selectNormalRestdePopup(restde);  
729: List<?> NormalMonthRestdeList_1 = restdeManageService.selectNormalMonthRestde(restde);  
737: List<?> CalInfoList_2 = restdeManageService.selectNormalRestdePopup(restde);  
738: List<?> NormalMonthRestdeList_2 = restdeManageService.selectNormalMonthRestde(restde);  
746: List<?> CalInfoList_3 = restdeManageService.selectNormalRestdePopup(restde);  
747: List<?> NormalMonthRestdeList_3 = restdeManageService.selectNormalMonthRestde(restde);  
755: List<?> CalInfoList_4 = restdeManageService.selectNormalRestdePopup(restde);  
756: List<?> NormalMonthRestdeList_4 = restdeManageService.selectNormalMonthRestde(restde);  
764: List<?> CalInfoList_5 = restdeManageService.selectNormalRestdePopup(restde);  
765: List<?> NormalMonthRestdeList_5 = restdeManageService.selectNormalMonthRestde(restde);  
773: List<?> CalInfoList_6 = restdeManageService.selectNormalRestdePopup(restde);  
774: List<?> NormalMonthRestdeList_6 = restdeManageService.selectNormalMonthRestde(restde);  
782: List<?> CalInfoList_7 = restdeManageService.selectNormalRestdePopup(restde);  
783: List<?> NormalMonthRestdeList_7 = restdeManageService.selectNormalMonthRestde(restde);  
791: List<?> CalInfoList_8 = restdeManageService.selectNormalRestdePopup(restde);  
792: List<?> NormalMonthRestdeList_8 = restdeManageService.selectNormalMonthRestde(restde);  
800: List<?> CalInfoList_9 = restdeManageService.selectNormalRestdePopup(restde);  
801: List<?> NormalMonthRestdeList_9 = restdeManageService.selectNormalMonthRestde(restde);  
809: List<?> CalInfoList_10 = restdeManageService.selectNormalRestdePopup(restde);  
810: List<?> NormalMonthRestdeList_10 = restdeManageService.selectNormalMonthRestde(restde);  
818: List<?> CalInfoList_11 = restdeManageService.selectNormalRestdePopup(restde);  
819: List<?> NormalMonthRestdeList_11 = restdeManageService.selectNormalMonthRestde(restde);  
827: List<?> CalInfoList_12 = restdeManageService.selectNormalRestdePopup(restde);  
828: List<?> NormalMonthRestdeList_12 = restdeManageService.selectNormalMonthRestde(restde);  
929: List<?> CalInfoList          = restdeManageService.selectAdministDayCal(restde);  
930: List<?> AdministWeekRestdeList = restdeManageService.selectAdministDayRestde(restde);  
1,025: List<?> CalInfoList = restdeManageService.selectAdministDayCal(restde);  
1,035: List<?> CalInfoList_1          = restdeManageService.selectAdministDayCal(vo);  
1,036: List<?> AdministWeekRestdeList_1 = restdeManageService.selectAdministDayRestde(vo);  
1,044: List<?> CalInfoList_2          = restdeManageService.selectAdministDayCal(vo);  
1,045: List<?> AdministWeekRestdeList_2 = restdeManageService.selectAdministDayRestde(vo);  
1,053: List<?> CalInfoList_3          = restdeManageService.selectAdministDayCal(vo);  
1,054: List<?> AdministWeekRestdeList_3 = restdeManageService.selectAdministDayRestde(vo);  
1,062: List<?> CalInfoList_4          = restdeManageService.selectAdministDayCal(vo);  
1,063: List<?> AdministWeekRestdeList_4 = restdeManageService.selectAdministDayRestde(vo);  
1,071: List<?> CalInfoList_5          = restdeManageService.selectAdministDayCal(vo);  
1,072: List<?> AdministWeekRestdeList_5 = restdeManageService.selectAdministDayRestde(vo);  
1,080: List<?> CalInfoList_6          = restdeManageService.selectAdministDayCal(vo);  
1,081: List<?> AdministWeekRestdeList_6 = restdeManageService.selectAdministDayRestde(vo);  
1,089: List<?> CalInfoList_7          = restdeManageService.selectAdministDayCal(vo);  
1,090: List<?> AdministWeekRestdeList_7 = restdeManageService.selectAdministDayRestde(vo);  
1,168: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
1,171: List<?> AdministMonthRestdeList = restdeManageService.selectAdministMonthRestde(restde);  
1,238: List<?> CalInfoList_1 = restdeManageService.selectAdministRestdePopup(restde);  
1,239: List<?> AdministMonthRestdeList_1 = restdeManageService.selectAdministMonthRestde(restde);  
1,247: List<?> CalInfoList_2 = restdeManageService.selectAdministRestdePopup(restde);  
1,248: List<?> AdministMonthRestdeList_2 = restdeManageService.selectAdministMonthRestde(restde);  
1,256: List<?> CalInfoList_3 = restdeManageService.selectAdministRestdePopup(restde);  
1,257: List<?> AdministMonthRestdeList_3 = restdeManageService.selectAdministMonthRestde(restde);  
1,265: List<?> CalInfoList_4 = restdeManageService.selectAdministRestdePopup(restde);  
1,266: List<?> AdministMonthRestdeList_4 = restdeManageService.selectAdministMonthRestde(restde);  
1,274: List<?> CalInfoList_5 = restdeManageService.selectAdministRestdePopup(restde);  
1,275: List<?> AdministMonthRestdeList_5 = restdeManageService.selectAdministMonthRestde(restde);  
1,283: List<?> CalInfoList_6 = restdeManageService.selectAdministRestdePopup(restde);  
1,284: List<?> AdministMonthRestdeList_6 = restdeManageService.selectAdministMonthRestde(restde);  
1,292: List<?> CalInfoList_7 = restdeManageService.selectAdministRestdePopup(restde);  
1,293: List<?> AdministMonthRestdeList_7 = restdeManageService.selectAdministMonthRestde(restde);  
1,301: List<?> CalInfoList_8 = restdeManageService.selectAdministRestdePopup(restde);  
1,302: List<?> AdministMonthRestdeList_8 = restdeManageService.selectAdministMonthRestde(restde);  
1,310: List<?> CalInfoList_9 = restdeManageService.selectAdministRestdePopup(restde);  
1,311: List<?> AdministMonthRestdeList_9 = restdeManageService.selectAdministMonthRestde(restde);  
1,319: List<?> CalInfoList_10 = restdeManageService.selectAdministRestdePopup(restde);  
1,320: List<?> AdministMonthRestdeList_10 = restdeManageService.selectAdministMonthRestde(restde);  
1,328: List<?> CalInfoList_11 = restdeManageService.selectAdministRestdePopup(restde);  
1,329: List<?> AdministMonthRestdeList_11 = restdeManageService.selectAdministMonthRestde(restde);  
1,337: List<?> CalInfoList_12 = restdeManageService.selectAdministRestdePopup(restde);  
1,338: List<?> AdministMonthRestdeList_12 = restdeManageService.selectAdministMonthRestde(restde);  
1,407: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
1,473: List<?> CmmnCodeList = restdeManageService.selectRestdeList(searchVO);  
1,507: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  
1,516: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  

```

행정달력 월간

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovAdministMonthCalendar.do

행정달력 팝업 정보를 조회한다.

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovselectAdministCalendar.do

행정달력 연간

http://localhost:8080/egovframework-all-in-one/sym/cal/EgovAdministYearCalendar.do

시스템관리 - 일반달력/행정달력/휴일관리

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%9C%B4%EC%9D%BC%EA%B4%80%EB%A6%AC#%EC%9D%BC%EB%B0%98%EB%8B%AC%EB%A0%A5_%EC%9D%BC%EA%B0%84_%EC%A3%BC%EA%B0%84_%EC%9B%94%EA%B0%84_%EC%97%B0%EA%B0%84

### 행정달력 mysql/postgres ORDER BY 추가

EgovRestdeManage_SQL_altibase.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

EgovRestdeManage_SQL_cubrid.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

EgovRestdeManage_SQL_goldilocks.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

***EgovRestdeManage_SQL_maria.xml***
```xml
,  DUMMY.ROWNUM         CELL_NUM
ORDER BY 없음
ORDER BY DUMMY.ROWNUM
```

***EgovRestdeManage_SQL_mysql.xml***
```xml
,  DUMMY.ROWNUM         CELL_NUM
ORDER BY 없음
ORDER BY DUMMY.ROWNUM
```

EgovRestdeManage_SQL_oracle.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

***EgovRestdeManage_SQL_postgres.xml***
```xml
,  DUMMY.ROWNUM         CELL_NUM
ORDER BY 없음
ORDER BY DUMMY.ROWNUM
```

EgovRestdeManage_SQL_tibero.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

## 2023-07-10

### 제네릭 타입 명시: 시스템관리 - 일반달력/행정달력/휴일관리

- 제네릭 타입 명시: 시스템관리 - 일반달력/행정달력/휴일관리
  - List<?> 를 List<EgovMap> 로 수정
- mysql/postgres ORDER BY 추가
  - mysql/postgres 에 ORDER BY 없어, ORDER BY DUMMY.ROWNUM 추가
  - maria ORDER BY ROWNUM 을 ORDER BY DUMMY.ROWNUM 으로 수정

selectNormalRestdePopup

일반달력 팝업 정보를 조회한다.

```java
cal
service
impl
EgovCalRestdeManageServiceImpl.java (9 matches)
44: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
52: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
60: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
68: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
76: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
84: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
92: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
100: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
133: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
RestdeManageDAO.java (9 matches)
37: public List<?> selectNormalRestdePopup(Restde restde) throws Exception {  
47: public List<?> selectAdministRestdePopup(Restde restde) throws Exception {  
57: public List<?> selectNormalDayCal(Restde restde) throws Exception {  
67: public List<?> selectNormalDayRestde(Restde restde) throws Exception {  
77: public List<?> selectNormalMonthRestde(Restde restde) throws Exception {  
87: public List<?> selectAdministDayCal(Restde restde) throws Exception {  
97: public List<?> selectAdministDayRestde(Restde restde) throws Exception {  
107: public List<?> selectAdministMonthRestde(Restde restde) throws Exception {  
147: public List<?> selectRestdeList(RestdeVO searchVO) throws Exception {  
EgovCalRestdeManageService.java (9 matches)
30: List<?> selectNormalRestdePopup(Restde restde) throws Exception;  
38: List<?> selectAdministRestdePopup(Restde restde) throws Exception;  
46: List<?> selectNormalDayCal(Restde restde) throws Exception;  
54: List<?> selectNormalDayRestde(Restde restde) throws Exception;  
62: List<?> selectNormalMonthRestde(Restde restde) throws Exception;  
70: List<?> selectAdministDayCal(Restde restde) throws Exception;  
78: List<?> selectAdministDayRestde(Restde restde) throws Exception;  
86: List<?> selectAdministMonthRestde(Restde restde) throws Exception;  
116: List<?> selectRestdeList(RestdeVO searchVO) throws Exception;  
web
EgovCalRestdeManageController.java (92 matches)
268: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
344: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
421: List<?> CalInfoList          = restdeManageService.selectNormalDayCal(restde);  
422: List<?> NormalWeekRestdeList = restdeManageService.selectNormalDayRestde(restde);  
525: List<?> CalInfoList_1          = restdeManageService.selectNormalDayCal(vo);  
526: List<?> NormalWeekRestdeList_1 = restdeManageService.selectNormalDayRestde(vo);  
534: List<?> CalInfoList_2          = restdeManageService.selectNormalDayCal(vo);  
535: List<?> NormalWeekRestdeList_2 = restdeManageService.selectNormalDayRestde(vo);  
543: List<?> CalInfoList_3          = restdeManageService.selectNormalDayCal(vo);  
544: List<?> NormalWeekRestdeList_3 = restdeManageService.selectNormalDayRestde(vo);  
552: List<?> CalInfoList_4          = restdeManageService.selectNormalDayCal(vo);  
553: List<?> NormalWeekRestdeList_4 = restdeManageService.selectNormalDayRestde(vo);  
561: List<?> CalInfoList_5          = restdeManageService.selectNormalDayCal(vo);  
562: List<?> NormalWeekRestdeList_5 = restdeManageService.selectNormalDayRestde(vo);  
570: List<?> CalInfoList_6          = restdeManageService.selectNormalDayCal(vo);  
571: List<?> NormalWeekRestdeList_6 = restdeManageService.selectNormalDayRestde(vo);  
579: List<?> CalInfoList_7          = restdeManageService.selectNormalDayCal(vo);  
580: List<?> NormalWeekRestdeList_7 = restdeManageService.selectNormalDayRestde(vo);  
597: List<?> CalInfoList = restdeManageService.selectNormalDayCal(restde);  
659: List<?> CalInfoList = restdeManageService.selectNormalRestdePopup(restde);  
662: List<?> NormalMonthRestdeList = restdeManageService.selectNormalMonthRestde(restde);  
728: List<?> CalInfoList_1 = restdeManageService.selectNormalRestdePopup(restde);  
729: List<?> NormalMonthRestdeList_1 = restdeManageService.selectNormalMonthRestde(restde);  
737: List<?> CalInfoList_2 = restdeManageService.selectNormalRestdePopup(restde);  
738: List<?> NormalMonthRestdeList_2 = restdeManageService.selectNormalMonthRestde(restde);  
746: List<?> CalInfoList_3 = restdeManageService.selectNormalRestdePopup(restde);  
747: List<?> NormalMonthRestdeList_3 = restdeManageService.selectNormalMonthRestde(restde);  
755: List<?> CalInfoList_4 = restdeManageService.selectNormalRestdePopup(restde);  
756: List<?> NormalMonthRestdeList_4 = restdeManageService.selectNormalMonthRestde(restde);  
764: List<?> CalInfoList_5 = restdeManageService.selectNormalRestdePopup(restde);  
765: List<?> NormalMonthRestdeList_5 = restdeManageService.selectNormalMonthRestde(restde);  
773: List<?> CalInfoList_6 = restdeManageService.selectNormalRestdePopup(restde);  
774: List<?> NormalMonthRestdeList_6 = restdeManageService.selectNormalMonthRestde(restde);  
782: List<?> CalInfoList_7 = restdeManageService.selectNormalRestdePopup(restde);  
783: List<?> NormalMonthRestdeList_7 = restdeManageService.selectNormalMonthRestde(restde);  
791: List<?> CalInfoList_8 = restdeManageService.selectNormalRestdePopup(restde);  
792: List<?> NormalMonthRestdeList_8 = restdeManageService.selectNormalMonthRestde(restde);  
800: List<?> CalInfoList_9 = restdeManageService.selectNormalRestdePopup(restde);  
801: List<?> NormalMonthRestdeList_9 = restdeManageService.selectNormalMonthRestde(restde);  
809: List<?> CalInfoList_10 = restdeManageService.selectNormalRestdePopup(restde);  
810: List<?> NormalMonthRestdeList_10 = restdeManageService.selectNormalMonthRestde(restde);  
818: List<?> CalInfoList_11 = restdeManageService.selectNormalRestdePopup(restde);  
819: List<?> NormalMonthRestdeList_11 = restdeManageService.selectNormalMonthRestde(restde);  
827: List<?> CalInfoList_12 = restdeManageService.selectNormalRestdePopup(restde);  
828: List<?> NormalMonthRestdeList_12 = restdeManageService.selectNormalMonthRestde(restde);  
929: List<?> CalInfoList          = restdeManageService.selectAdministDayCal(restde);  
930: List<?> AdministWeekRestdeList = restdeManageService.selectAdministDayRestde(restde);  
1,025: List<?> CalInfoList = restdeManageService.selectAdministDayCal(restde);  
1,035: List<?> CalInfoList_1          = restdeManageService.selectAdministDayCal(vo);  
1,036: List<?> AdministWeekRestdeList_1 = restdeManageService.selectAdministDayRestde(vo);  
1,044: List<?> CalInfoList_2          = restdeManageService.selectAdministDayCal(vo);  
1,045: List<?> AdministWeekRestdeList_2 = restdeManageService.selectAdministDayRestde(vo);  
1,053: List<?> CalInfoList_3          = restdeManageService.selectAdministDayCal(vo);  
1,054: List<?> AdministWeekRestdeList_3 = restdeManageService.selectAdministDayRestde(vo);  
1,062: List<?> CalInfoList_4          = restdeManageService.selectAdministDayCal(vo);  
1,063: List<?> AdministWeekRestdeList_4 = restdeManageService.selectAdministDayRestde(vo);  
1,071: List<?> CalInfoList_5          = restdeManageService.selectAdministDayCal(vo);  
1,072: List<?> AdministWeekRestdeList_5 = restdeManageService.selectAdministDayRestde(vo);  
1,080: List<?> CalInfoList_6          = restdeManageService.selectAdministDayCal(vo);  
1,081: List<?> AdministWeekRestdeList_6 = restdeManageService.selectAdministDayRestde(vo);  
1,089: List<?> CalInfoList_7          = restdeManageService.selectAdministDayCal(vo);  
1,090: List<?> AdministWeekRestdeList_7 = restdeManageService.selectAdministDayRestde(vo);  
1,168: List<?> CalInfoList = restdeManageService.selectAdministRestdePopup(restde);  
1,171: List<?> AdministMonthRestdeList = restdeManageService.selectAdministMonthRestde(restde);  
1,238: List<?> CalInfoList_1 = restdeManageService.selectAdministRestdePopup(restde);  
1,239: List<?> AdministMonthRestdeList_1 = restdeManageService.selectAdministMonthRestde(restde);  
1,247: List<?> CalInfoList_2 = restdeManageService.selectAdministRestdePopup(restde);  
1,248: List<?> AdministMonthRestdeList_2 = restdeManageService.selectAdministMonthRestde(restde);  
1,256: List<?> CalInfoList_3 = restdeManageService.selectAdministRestdePopup(restde);  
1,257: List<?> AdministMonthRestdeList_3 = restdeManageService.selectAdministMonthRestde(restde);  
1,265: List<?> CalInfoList_4 = restdeManageService.selectAdministRestdePopup(restde);  
1,266: List<?> AdministMonthRestdeList_4 = restdeManageService.selectAdministMonthRestde(restde);  
1,274: List<?> CalInfoList_5 = restdeManageService.selectAdministRestdePopup(restde);  
1,275: List<?> AdministMonthRestdeList_5 = restdeManageService.selectAdministMonthRestde(restde);  
1,283: List<?> CalInfoList_6 = restdeManageService.selectAdministRestdePopup(restde);  
1,284: List<?> AdministMonthRestdeList_6 = restdeManageService.selectAdministMonthRestde(restde);  
1,292: List<?> CalInfoList_7 = restdeManageService.selectAdministRestdePopup(restde);  
1,293: List<?> AdministMonthRestdeList_7 = restdeManageService.selectAdministMonthRestde(restde);  
1,301: List<?> CalInfoList_8 = restdeManageService.selectAdministRestdePopup(restde);  
1,302: List<?> AdministMonthRestdeList_8 = restdeManageService.selectAdministMonthRestde(restde);  
1,310: List<?> CalInfoList_9 = restdeManageService.selectAdministRestdePopup(restde);  
1,311: List<?> AdministMonthRestdeList_9 = restdeManageService.selectAdministMonthRestde(restde);  
1,319: List<?> CalInfoList_10 = restdeManageService.selectAdministRestdePopup(restde);  
1,320: List<?> AdministMonthRestdeList_10 = restdeManageService.selectAdministMonthRestde(restde);  
1,328: List<?> CalInfoList_11 = restdeManageService.selectAdministRestdePopup(restde);  
1,329: List<?> AdministMonthRestdeList_11 = restdeManageService.selectAdministMonthRestde(restde);  
1,337: List<?> CalInfoList_12 = restdeManageService.selectAdministRestdePopup(restde);  
1,338: List<?> AdministMonthRestdeList_12 = restdeManageService.selectAdministMonthRestde(restde);  
1,407: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(vo);  
1,473: List<?> CmmnCodeList = restdeManageService.selectRestdeList(searchVO);  
1,507: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  
1,516: List<?> restdeCodeList = cmmUseService.selectCmmCodeDetail(CodeVO);  

```

일반달력 월간
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovNormalMonthCalendar.do

year=2023, month=7, day=, cellNum=1, weeks=1, week=1, restAt=Y

```jsp
<c:forEach var="result" items="${resultList}" varStatus="status">
    <c:out value="${result}" />
    <c:out value="${result.year}" />
    <c:out value="${result.month}" />
    <c:out value="${result.day}" />
    <c:out value="${result.cellNum}" />
    <c:out value="${result.weeks}" />
    <c:out value="${result.week}" />
    <c:out value="${result.restAt}" />
</c:forEach>
```

일반달력 팝업 정보를 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovselectNormalCalendar.do

일반달력 연간
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovNormalYearCalendar.do

요소기술 > 1300. 공휴일관리(달력)
- http://localhost:8080/egovframework-all-in-one/sym/cal/EgovRestdeList.do
- 휴일 등록
  - http://localhost:8080/egovframework-all-in-one/sym/cal/EgovRestdeRegist.do
  - 휴일일자 달력 이미지 클릭

시스템관리 - 일반달력/행정달력/휴일관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%ED%9C%B4%EC%9D%BC%EA%B4%80%EB%A6%AC#%EC%9D%BC%EB%B0%98%EB%8B%AC%EB%A0%A5_%EC%9D%BC%EA%B0%84_%EC%A3%BC%EA%B0%84_%EC%9B%94%EA%B0%84_%EC%97%B0%EA%B0%84

### mysql/postgres ORDER BY 추가

EgovRestdeManage_SQL_altibase.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

EgovRestdeManage_SQL_cubrid.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

EgovRestdeManage_SQL_goldilocks.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

***EgovRestdeManage_SQL_maria.xml***
```xml
,  DUMMY.ROWNUM         CELL_NUM
ORDER BY ROWNUM
ORDER BY DUMMY.ROWNUM
```

***EgovRestdeManage_SQL_mysql.xml***
```xml
,  DUMMY.ROWNUM         CELL_NUM
ORDER BY 없음
ORDER BY DUMMY.ROWNUM
```

EgovRestdeManage_SQL_oracle.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

***EgovRestdeManage_SQL_postgres.xml***
```xml
,  DUMMY.ROWNUM         CELL_NUM
ORDER BY 없음
ORDER BY DUMMY.ROWNUM
```

EgovRestdeManage_SQL_tibero.xml
```xml
,  T_DUMMY.RNUM           CELL_NUM
ORDER BY T_DUMMY.RNUM
```

https://youtu.be/Jac4eYK1KFA

https://github.com/GSITM2023/egovframe-common-components/commit/e398b02804ba8c5acb843b4e3e266693c425ce4c

https://github.com/GSITM2023/egovframe-common-components/commit/fb9ac4e88116b05b5153ae72d3f8e0b88e7d445d

https://github.com/eGovFramework/egovframe-common-components/pull/162

## 2023-07-08

### 제네릭 타입 명시: 시스템관리 - 스케줄처리

- 제네릭 타입 명시: 시스템관리 - 스케줄처리
  - List<?> 를 List<BatchSchdul> 로 수정
- 코드 정리
  - (BatchSchdul)  제거
  - @SuppressWarnings("unchecked") 제거
  - (List<BatchSchdul>) 제거

```java
sym
bat
service
impl
BatchSchdulDao.java (2 matches)
96: public List<?> selectBatchSchdulList(BatchSchdul searchVO)  
98: List<?> resultList = selectList("BatchSchdulDao.selectBatchSchdulList", searchVO);  
EgovBatchSchdulServiceImpl.java (2 matches)
86: public List<?> selectBatchSchdulList(BatchSchdul searchVO) throws Exception {  
87: List<?> result = batchSchdulDao.selectBatchSchdulList(searchVO);  
EgovBatchSchdulService.java
55: public List<?> selectBatchSchdulList(BatchSchdul searchVO) throws Exception;  
```

배치스케줄 목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/bat/getBatchSchdulList.do

시스템관리 - 스케줄처리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EC%8A%A4%EC%BC%80%EC%A4%84%EC%B2%98%EB%A6%AC

https://youtu.be/UvjqGzt5gi4

https://github.com/GSITM2023/egovframe-common-components/commit/504440f76b495241ecbd7d5d1ba647ad800c6c69

https://github.com/eGovFramework/egovframe-common-components/pull/160

## 2023-07-07

### 제네릭 타입 명시: 시스템관리 - 배치결과관리

- 제네릭 타입 명시: 시스템관리 - 배치결과관리
  - List<?> 를 List<BatchResult> 로 수정
- 코드 정리
  - @SuppressWarnings("unchecked") 제거
  - (List<BatchResult>) 제거
  - debugger; 제거

```java
sym
bat
service
impl
BatchResultDao.java
67: public List<?> selectBatchResultList(BatchResult searchVO) throws Exception {  
EgovBatchResultServiceImpl.java (2 matches)
69: public List<?> selectBatchResultList(BatchResult searchVO) throws Exception {  
70: List<?> result = dao.selectBatchResultList(searchVO);  
EgovBatchResultService.java
47: public List<?> selectBatchResultList(BatchResult searchVO) throws Exception;  
```

배치결과 목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/bat/getBatchResultList.do

시스템관리 - 배치결과관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%B0%B0%EC%B9%98%EA%B2%B0%EA%B3%BC%EA%B4%80%EB%A6%AC

https://youtu.be/nDe7r06PljU

https://github.com/GSITM2023/egovframe-common-components/commit/ec9e257ab88a4bc1985b5db4d58fbb78f1e58590

https://github.com/GSITM2023/egovframe-common-components/commit/74ce85916e6fae5654a87596bf6f0f36efbaa9a6

https://github.com/eGovFramework/egovframe-common-components/pull/157

## 2023-07-06

### 제네릭 타입 명시: 시스템관리 - 배치작업관리

```java
sym
bat
service
impl
BatchOpertDao.java
67: public List<?> selectBatchOpertList(BatchOpert searchVO) throws Exception {  
EgovBatchOpertServiceImpl.java (2 matches)
79: public List<?> selectBatchOpertList(BatchOpert searchVO) throws Exception {  
80: List<?> result = dao.selectBatchOpertList(searchVO);  
EgovBatchOpertService.java
55: public List<?> selectBatchOpertList(BatchOpert searchVO) throws Exception;  
```

시스템관리 - 배치작업관리
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sym:%EB%B0%B0%EC%B9%98%EC%9E%91%EC%97%85%EA%B4%80%EB%A6%AC

배치작업 목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/sym/bat/getBatchOpertList.do

배치작업 등록

배치작업명
```
test 이백행 2023-07-05 배치작업명 
```

배치프로그램 
```
test 이백행 2023-07-05 배치프로그램 
```
배치프로그램 test 이백행 2023-07-05 배치프로그램이 존재하지 않습니다.

```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\workspace\egovframe-common-components\src\main\resources\egovframework\egovProps\prg\getDiskAttrb.bat
```

### 코드 정리

- @SuppressWarnings("unchecked") 제거
- (List<BatchOpert>) 제거

https://youtu.be/ueja4B9seYI

https://github.com/GSITM2023/egovframe-common-components/commit/b128ca0ea004bf40252ebfe996857612bb7679cc

https://github.com/GSITM2023/egovframe-common-components/commit/d1a2ca4e8837dd1d3a9865cafc462e51e2851753

https://github.com/eGovFramework/egovframe-common-components/pull/155

## 2023-07-05

### 제네릭 타입 명시: 통계/리포팅 - 사용자 통계

```java
ust
service
impl
EgovUserStatsServiceImpl.java
45: public List<?> selectUserStats(StatsVO vo) throws Exception {  
UserStatsDAO.java
36: public List<?> selectUserStats(StatsVO vo) throws Exception {  
EgovUserStatsService.java
32: List<?> selectUserStats(StatsVO vo) throws Exception;  
web
EgovUserStatsController.java (4 matches)
69: List<?> code012 = cmmUseService.selectCmmCodeDetail(vo);  
71: List<?> code013 = cmmUseService.selectCmmCodeDetail(vo);  
73: List<?> code014 = cmmUseService.selectCmmCodeDetail(vo);  
81: List<?> userStats = userStatsService.selectUserStats(statsVO);  

```

사용자 통계를 조회한다

http://localhost:8080/egovframework-all-in-one/sts/ust/selectUserStats.do

기간: 2022-07-05 ~ 2023-07-05
통계구분 : 회원유형별
검색 버튼클릭

사용자 통계
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sts:%EC%82%AC%EC%9A%A9%EC%9E%90%ED%86%B5%EA%B3%84

### 날짜 포맷 오류 수정

```jsp
		document.listForm.fDate.value = fromDate.substring(0, 4) + "-" + fromDate.substring(5, 7) + "-" + fromDate.substring(8, 10);
		document.listForm.tDate.value = toDate.substring(0, 4) + "-" + toDate.substring(5, 7) + "-" + toDate.substring(8, 10);
```
를

```jsp
		document.listForm.fDate.value = fromDate.substring(0, 4) + "-" + fromDate.substring(4, 6) + "-" + fromDate.substring(6, 8);
		document.listForm.tDate.value = toDate.substring(0, 4) + "-" + toDate.substring(4, 6) + "-" + toDate.substring(6, 8);
```
로 수정

https://youtu.be/G5tASFkQ8sc

https://github.com/GSITM2023/egovframe-common-components/commit/9452463fc2fc94b023c442f13fba4f9f60a54af6

https://github.com/GSITM2023/egovframe-common-components/commit/5fe9e7578785db6348a9bd37ea2c5439f624c7cd

https://github.com/eGovFramework/egovframe-common-components/pull/152

## 2023-07-04

### 제네릭 타입 명시: 통계/리포팅 - 화면 통계

```java
sst
service
impl
EgovScrinStatsServiceImpl.java
45: public List<?> selectScrinStats(StatsVO vo) throws Exception {  
ScrinStatsDAO.java
36: public List<?> selectScrinStats(StatsVO vo) throws Exception {  
EgovScrinStatsService.java
32: List<?> selectScrinStats(StatsVO vo) throws Exception;  
web
EgovScrinStatsController.java (2 matches)
59: List<?> list_menulist = menuManageService.selectMenuList();  
64: List<?> scrinStats = scrinStatsService.selectScrinStats(statsVO);  

```

화면 통계를 조회한다

http://localhost:8080/egovframework-all-in-one/sts/sst/selectScrinStats.do

접속 통계 검색
- 기간: 2022-07-04 ~ 2023-07-04 선택
- 기간구분: 연도별 선택
- 메뉴 클릭

화면 통계
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sts:%ED%99%94%EB%A9%B4%ED%86%B5%EA%B3%84

COMTSWEBLOGSUMMARY.URL 웹로그 요약.URL contextPath 도 같이 저장되어 like %% 로 수정해야 함. 확인 부탁드립니다.

확인 되면 mysql 이외 것은 다시 PR 하겠습니다.

/egovframe-common-components/src/main/resources/egovframework/mapper/com/sts/sst/EgovScrinStats_SQL_mysql.xml

```xml
AND a.URL LIKE CONCAT(b.URL,'%')
```

AND a.URL LIKE CONCAT('%', b.URL,'%')

/egovframework-all-in-one/sts/bst/selectBbsStats.do

https://youtu.be/2yDXiciska4

https://github.com/GSITM2023/egovframe-common-components/commit/1cec8f9ed386c090ad047ee8ead807e138719b5f

https://github.com/GSITM2023/egovframe-common-components/commit/876b99212837598b6cf2ad970efe68b52ebe9a3a

https://github.com/eGovFramework/egovframe-common-components/pull/151

## 2023-07-03

### 제네릭 타입 명시: 통계/리포팅 - 접속 통계

```java
cst
service
impl
ConectStatsDAO.java
36: public List<?> selectConectStats(StatsVO vo) throws Exception {  
EgovConectStatsServiceImpl.java
45: public List<?> selectConectStats(StatsVO vo) throws Exception {  
EgovConectStatsService.java
32: List<?> selectConectStats(StatsVO vo) throws Exception;  
web
EgovConectStatsController.java
60: List<?> conectStats = conectStatsService.selectConectStats(statsVO);  

```

접속 통계를 조회한다

http://localhost:8080/egovframework-all-in-one/sts/cst/selectConectStats.do

접속 통계 검색
- 기간: 2022-07-01 ~ 2023-07-01 선택
- 기간구분: 연도별 선택
- 통계구분: 서비스별 선택
- 검색 버튼클릭

### 검색 후 기간 값설정 에러

- 2022-70- 를 2022-07-01 로 포맷 수정
- ${statsInfo.fromDate}
- ${statsInfo.toDate}
- Validate Using Apache Commons Validator
  - GenericValidator.isDate
  - https://www.baeldung.com/java-string-valid-date#apache

```java
            if (GenericValidator.isDate(statsVO.getFromDate(), "yyyyMMdd", true)) {
                model.addAttribute("fDate", (LocalDate.parse(statsVO.getFromDate(), DateTimeFormatter.BASIC_ISO_DATE).format(DateTimeFormatter.ISO_LOCAL_DATE)));
            }
            if (GenericValidator.isDate(statsVO.getToDate(), "yyyyMMdd", true)) {
                model.addAttribute("tDate", (LocalDate.parse(statsVO.getToDate(), DateTimeFormatter.BASIC_ISO_DATE).format(DateTimeFormatter.ISO_LOCAL_DATE)));
            }
```

접속 통계
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sts:%EC%A0%91%EC%86%8D%ED%86%B5%EA%B3%84

https://youtu.be/aAu-hmR8juQ

https://github.com/GSITM2023/egovframe-common-components/commit/cbae12789786282a051fa686aa3f1f7cea7d0534

https://github.com/GSITM2023/egovframe-common-components/commit/6d8fa1cce3e748056502f089f68875e1b09119ae

https://github.com/eGovFramework/egovframe-common-components/pull/150

## 2023-07-01

### 제네릭 타입 명시: 통계/리포팅 - 게시물 통계

```java
sts
bst
service
impl
BbsStatsDAO.java (6 matches)
39: public List<?> selectBbsCretCntStats(StatsVO vo) throws Exception {  
49: public List<?> selectBbsTotCntStats(StatsVO vo) throws Exception {  
59: public List<?> selectBbsAvgCntStats(StatsVO vo) throws Exception {  
69: public List<?> selectBbsMaxCntStats(StatsVO vo) throws Exception {  
79: public List<?> selectBbsMinCntStats(StatsVO vo) throws Exception {  
89: public List<?> selectBbsMaxUserStats(StatsVO vo) throws Exception {  
EgovBbsStatsServiceImpl.java (6 matches)
45: public List<?> selectBbsCretCntStats(StatsVO vo) throws Exception {  
56: public List<?> selectBbsTotCntStats(StatsVO vo) throws Exception {  
67: public List<?> selectBbsAvgCntStats(StatsVO vo) throws Exception {  
78: public List<?> selectBbsMaxCntStats(StatsVO vo) throws Exception {  
89: public List<?> selectBbsMinCntStats(StatsVO vo) throws Exception {  
100: public List<?> selectBbsMaxUserStats(StatsVO vo) throws Exception {  
EgovBbsStatsService.java (6 matches)
32: List<?> selectBbsCretCntStats(StatsVO vo) throws Exception;  
40: List<?> selectBbsTotCntStats(StatsVO vo) throws Exception;  
48: List<?> selectBbsAvgCntStats(StatsVO vo) throws Exception;  
56: List<?> selectBbsMaxCntStats(StatsVO vo) throws Exception;  
64: List<?> selectBbsMinCntStats(StatsVO vo) throws Exception;  
72: List<?> selectBbsMaxUserStats(StatsVO vo) throws Exception;  
web
EgovBbsStatsController.java (6 matches)
66: List<?> code004 = cmmUseService.selectCmmCodeDetail(vo);  
68: List<?> code005 = cmmUseService.selectCmmCodeDetail(vo);  
76: List<?> bbsStatsList = null;  
77: List<?> bbsMaxStatsList = null;  
78: List<?> bbsMinStatsList = null;  
79: List<?> bbsMaxNtcrList = null;  

```

게시물 통계를 조회한다
- http://localhost:8080/egovframework-all-in-one/sts/bst/selectBbsStats.do

검색 버튼 클릭
- 기간 from 선택: 2022-06-30
- 기간구분 선택: 연도별
- 통계구분 선택: 게시판유형별

검색 후 기간 값설정 에러
- 2022-63-
- ${statsInfo.fromDate}
- ${statsInfo.toDate}
- Validate Using Apache Commons Validator
  - GenericValidator.isDate
  - https://www.baeldung.com/java-string-valid-date#apache

```java
            if (GenericValidator.isDate(statsVO.getFromDate(), "yyyyMMdd", true)) {
                model.addAttribute("fDate", (LocalDate.parse(statsVO.getFromDate(), DateTimeFormatter.BASIC_ISO_DATE).format(DateTimeFormatter.ISO_LOCAL_DATE)));
            }
            if (GenericValidator.isDate(statsVO.getToDate(), "yyyyMMdd", true)) {
                model.addAttribute("tDate", (LocalDate.parse(statsVO.getToDate(), DateTimeFormatter.BASIC_ISO_DATE).format(DateTimeFormatter.ISO_LOCAL_DATE)));
            }
```

게시물 통계
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:sts:%EA%B2%8C%EC%8B%9C%EB%AC%BC%ED%86%B5%EA%B3%84

```sql
select
	SUM(CREAT_CO) as statsCo ,
	SUBSTR(OCCRRNC_DE, 1, 4) as statsDate
from
	COMTSBBSSUMMARY
where
	1 = 1
-- 	and OCCRRNC_DE between '20230630' and '20230630'
 	and OCCRRNC_DE between '20220630' and '20230630'
	and STATS_SE = 'COM101'
group by
	statsDate
;

select
	CREAT_CO /* 생성수 */
	, OCCRRNC_DE /* 발생일 */
	, STATS_SE /* 통계구분 */
from
	COMTSBBSSUMMARY /* 게시물통계요약 */
where
	1 = 1
-- 	and OCCRRNC_DE between '20230630' and '20230630' /* 발생일 */
 	and OCCRRNC_DE between '20220630' and '20230630' /* 발생일 */
	and STATS_SE = 'COM101' /* 통계구분 */
;

```

https://youtu.be/ihZKuckxtU8

https://github.com/GSITM2023/egovframe-common-components/commit/39086a33ee3464b3af628d5021bdd1ea766703a4

https://github.com/GSITM2023/egovframe-common-components/commit/cc4b45b98e17391e679a9f4c0bdd29c1042c615a

https://github.com/eGovFramework/egovframe-common-components/pull/149

## 2023-06-30

### 제네릭 타입 명시: 시스템/서비스연계 - 시스템연계관리

```java
sim
service
impl
EgovSystemCntcServiceImpl.java
78: public List<?> selectSystemCntcList(SystemCntcVO searchVO) throws Exception {
SystemCntcDAO.java
75: public List<?> selectSystemCntcList(SystemCntcVO searchVO) throws Exception {
EgovSystemCntcService.java
61: List<?> selectSystemCntcList(SystemCntcVO searchVO) throws Exception;
web
EgovSystemCntcController.java (22 matches)
120: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);
136: List<?> cntcProvdSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
146: List<?> cntcRequstSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
163: List<?> cntcProvdServiceList = cntcInsttService.selectCntcServiceList(searchCntcServiceVO);
223: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);
233: List<?> cntcProvdSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
237: List<?> cntcRequstSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
248: List<?> cntcProvdServiceList = cntcInsttService.selectCntcServiceList(searchCntcServiceVO);
292: List<?> CmmnCodeList = systemCntcService.selectSystemCntcList(searchVO);
333: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);
343: List<?> cntcProvdSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
347: List<?> cntcRequstSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
358: List<?> cntcProvdServiceList = cntcInsttService.selectCntcServiceList(searchCntcServiceVO);
378: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);
388: List<?> cntcProvdSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
392: List<?> cntcRequstSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
403: List<?> cntcProvdServiceList = cntcInsttService.selectCntcServiceList(searchCntcServiceVO);
461: List<?> CmmnCodeList = systemCntcService.selectSystemCntcList(searchVO);
516: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);
526: List<?> cntcProvdSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
530: List<?> cntcRequstSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);
541: List<?> cntcProvdServiceList = cntcInsttService.selectCntcServiceList(searchCntcServiceVO);
```

시스템연계를 등록한다.
- http://localhost:8080/egovframework-all-in-one/ssi/syi/sim/addSystemCntc.do

https://youtu.be/zoZunzwWT2E

https://github.com/GSITM2023/egovframe-common-components/commit/39b9858bd3b1be3f17d9343598933df2f9cef267

https://github.com/eGovFramework/egovframe-common-components/pull/148

## 2023-06-29

### 제네릭 타입 명시: 시스템/서비스연계 - 연계현황관리

```java
ist
service
impl
CntcSttusDAO.java
49: public List<?> selectCntcSttusList(CntcSttusVO searchVO) throws Exception {
EgovCntcSttusServiceImpl.java
54: public List<?> selectCntcSttusList(CntcSttusVO searchVO) throws Exception {
EgovCntcSttusService.java
39: List<?> selectCntcSttusList(CntcSttusVO searchVO) throws Exception;
web
EgovCntcSttusController.java
97: List<?> CmmnCodeList = cntcSttusService.selectCntcSttusList(searchVO);
```

연계현황 목록을 조회한다.
- http://localhost:8080/egovframework-all-in-one/ssi/syi/ist/getCntcSttusList.do

송수신 로그 목록
- http://localhost:8080/egovframework-all-in-one/sym/log/tlg/SelectTrsmrcvLogList.do
- 송수신테스트 버튼 클릭 > 전송요청 등 버튼 클릭

https://youtu.be/1psUwQSQ8gE

https://github.com/GSITM2023/egovframe-common-components/commit/f834ad3b3c8a09c765c87425988b81a31fe2d514

https://github.com/eGovFramework/egovframe-common-components/pull/147

## 2023-06-28

### 제네릭 타입 명시: 시스템/서비스연계 - 연계메시지관리

```java
ims
service
impl
CntcMessageDAO.java (2 matches)
94: public List<?> selectCntcMessageList(CntcMessageVO searchVO) throws Exception {
113: public List<?> selectCntcMessageItemList(CntcMessageItemVO searchVO) throws Exception {
EgovCntcMessageServiceImpl.java (2 matches)
95: public List<?> selectCntcMessageList(CntcMessageVO searchVO) throws Exception {
111: public List<?> selectCntcMessageItemList(CntcMessageItemVO searchVO) throws Exception {
EgovCntcMessageService.java (2 matches)
75: List<?> selectCntcMessageList(CntcMessageVO searchVO) throws Exception;
90: List<?> selectCntcMessageItemList(CntcMessageItemVO searchVO) throws Exception;
web
EgovCntcMessageController.java (10 matches)
126: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
140: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
186: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
200: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
244: List<?> cntcMessageItemList = cntcMessageService.selectCntcMessageItemList(cntcMessageItemVO);
277: List<?> CmmnCodeList = cntcMessageService.selectCntcMessageList(searchVO);
311: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
327: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
372: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
388: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);
```

연계메시지 목록
- http://localhost:8080/egovframework-all-in-one/ssi/syi/ims/getCntcMessageList.do

연계메시지를 등록한다.
- http://localhost:8080/egovframework-all-in-one/ssi/syi/ims/addCntcMessage.do

https://youtu.be/piXhsRFkuGA

https://github.com/GSITM2023/egovframe-common-components/commit/74e549c9c4124517205a8250880837ea67475025

https://github.com/eGovFramework/egovframe-common-components/pull/146

## 2023-06-27

### 제네릭 타입 명시: 시스템/서비스연계 - 연계기관관리

```java
ssi
syi
iis
service
impl
CntcInsttDAO.java (3 matches)
124: public List<?> selectCntcInsttList(CntcInsttVO searchVO) throws Exception {    
143: public List<?> selectCntcSystemList(CntcSystemVO searchVO) throws Exception {    
162: public List<?> selectCntcServiceList(CntcServiceVO searchVO) throws Exception {    
EgovCntcInsttServiceImpl.java (3 matches)
125: public List<?> selectCntcInsttList(CntcInsttVO searchVO) throws Exception {    
141: public List<?> selectCntcSystemList(CntcSystemVO searchVO) throws Exception {    
157: public List<?> selectCntcServiceList(CntcServiceVO searchVO) throws Exception {    
EgovCntcInsttService.java (3 matches)
97: List<?> selectCntcInsttList(CntcInsttVO searchVO) throws Exception;    
112: List<?> selectCntcSystemList(CntcSystemVO searchVO) throws Exception;    
127: List<?> selectCntcServiceList(CntcServiceVO searchVO) throws Exception;    
web
EgovCntcInsttController.java (24 matches)
186: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
200: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
242: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
258: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);    
267: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
281: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
297: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);    
306: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
345: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
356: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(cntcSystemVO);    
363: List<?> cntcServiceList = cntcInsttService.selectCntcServiceList(cntcServiceVO);    
394: List<?> CmmnCodeList = cntcInsttService.selectCntcInsttList(searchVO);    
465: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
481: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);    
490: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
506: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
522: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);    
531: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
573: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
589: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);    
598: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
614: List<?> cntcInsttList = cntcInsttService.selectCntcInsttList(searchCntcInsttVO);    
630: List<?> cntcSystemList = cntcInsttService.selectCntcSystemList(searchCntcSystemVO);    
639: List<?> cntcMessageList = cntcMessageService.selectCntcMessageList(searchCntcMessageVO);    
```

연계기관 목록
- http://localhost:8080/egovframework-all-in-one/ssi/syi/iis/getCntcInsttList.do

연계시스템을 등록한다.
- http://localhost:8080/egovframework-all-in-one/ssi/syi/iis/addCntcSystem.do

https://youtu.be/g0HvYD8fLPg

https://github.com/GSITM2023/egovframe-common-components/commit/cd0e8d83ecba7b5b37ecf50e491794624129aa56

https://github.com/eGovFramework/egovframe-common-components/pull/145

## 2023-06-26

### 제네릭 타입 명시: 보안 - 롤 관리

```java
sec
rmt
web
EgovRoleManageController.java
172: public List<?> getCmmCodeDetailList(ComDefaultCodeVO comDefaultCodeVO, String codeId)    throws Exception {    
```

롤 등록화면 이동

http://localhost:8080/egovframework-all-in-one/sec/rmt/EgovRoleInsertView.do

https://youtu.be/iIIxvWlAtIM

https://github.com/GSITM2023/egovframe-common-components/commit/d60977e3d9facd8b996db5bb1e46168c5cb7aa20

https://github.com/eGovFramework/egovframe-common-components/pull/144

## 2023-06-20

### 제네릭 타입 명시: 디지털자산관리 - 지식전문가관리

```java
spe
service
impl
EgovKnoSpecialistServiceImpl.java
41: public List<?> selectKnoSpecialistList(KnoSpecialistVO searchVO) throws Exception {    
KnoSpecialistDAO.java
33: public List<?> selectKnoSpecialistList(KnoSpecialistVO searchVO) throws Exception {    
EgovKnoSpecialistService.java
25: List<?> selectKnoSpecialistList(KnoSpecialistVO searchVO) throws Exception;    
web
EgovKnoSpecialistController.java (5 matches)
106: List<?> KnoSpecialistList = knoSpecialistService.selectKnoSpecialistList(searchVO);    
171: List<?> MapTeamList = mapTeamService.selectMapTeamList(searchVO);    
181: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);    
195: List<?> MapTeamList = mapTeamService.selectMapTeamList(searchVO);    
210: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);    
```

지식정보제공/지식정보요청 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/dam/spe/spe/EgovComDamSpecialistList.do

${resultInfo.orgnztNm}
- <result property="orgnztNm" column="ORGNZT_NM"/>
- C.ORGNZT_NM
- C.ORGNZT_NM				ORGNZT_NM

${resultInfo.knoTypeNm}
- <result property="knoTypeNm" column="KNWLDG_TY_NM"/>
- B.KNWLDG_TY_NM
- B.KNWLDG_TY_NM			KNO_TYPE_NM
  - B.KNWLDG_TY_NM

${resultInfo.speId}
- <result property="speId" column="EXPERT_ID"/>
- A.EXPERT_ID
- A.EXPERT_ID				SPE_ID
  - A.EXPERT_ID

${resultInfo.knoTypeCd}
- <result property="knoTypeCd" column="KNWLDG_TY_CODE"/>
- B.KNWLDG_TY_CODE
- B.KNWLDG_TY_CODE		KNO_TYPE_CD
  - B.KNWLDG_TY_CODE

${resultInfo.appTypeCd}
- <result property="appTypeCd" column="EXPERT_GRAD"/>
- A.EXPERT_GRAD
- A.EXPERT_GRAD			APP_TYPE_CD
  - A.EXPERT_GRAD

${resultInfo.userNm}
- <result property="userNm" column="USER_NM"/>
- D.USER_NM
- D.USER_NM				USER_NM
  - D.USER_NM

${resultInfo.speConfmDe}
- <result property="speConfmDe" column="EXPERT_CONFM_DE"/>
- TO_CHAR(TO_DATE(A.EXPERT_CONFM_DE, 'YYYYmmdd'), 'YYYY-mm-dd') AS EXPERT_CONFM_DE
- DATE_FORMAT(A.EXPERT_CONFM_DE,'%Y-%m-%d') SPE_CONFM_DE
  - DATE_FORMAT(A.EXPERT_CONFM_DE,'%Y-%m-%d') EXPERT_CONFM_DE

- /egovframe-common-components/src/main/resources/egovframework/mapper/com/dam/spe/spe/EgovDamKnoSpecialistList_SQL_maria.xml
- /egovframe-common-components/src/main/resources/egovframework/mapper/com/dam/spe/spe/EgovDamKnoSpecialistList_SQL_mysql.xml
- /egovframe-common-components/src/main/resources/egovframework/mapper/com/dam/spe/spe/EgovDamKnoSpecialistList_SQL_postgres.xml

1. 제네릭 타입 명시: 디지털자산관리 - 지식전문가관리
2. maria/mysql/postgres에 resultType="egovMap" 를 resultMap="KnoSpecialistList" 로 수정

https://youtu.be/0YGyjYq4mZo

https://github.com/GSITM2023/egovframe-common-components/commit/6a7817f5465538b62f83fb80d4625c610a069bec

https://github.com/eGovFramework/egovframe-common-components/pull/143

## 2023-06-19

### 제네릭 타입 명시: 디지털자산관리 - 지식요청제공관리

```java
spe
req
service
impl
EgovRequestOfferServiceImpl.java
78: public List<?> selectRequestOfferList(RequestOfferVO RequestOfferVO) throws Exception {
RequestOfferDao.java
55: public List<?> selectRequestOfferList(RequestOfferVO RequestOfferVO) throws Exception {
EgovRequestOfferService.java
45: public List<?> selectRequestOfferList(RequestOfferVO RequestOfferVO) throws Exception;
web
EgovRequestOfferController.java (7 matches)
129: List<?> resultList = egovRequestOfferVOService.selectRequestOfferList(searchVO);
217: List<?> MapTeamList = mapTeamService.selectMapTeamList(mapTeamVO);
226: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);
288: List<?> MapTeamList = mapTeamService.selectMapTeamList(mapTeamVO);
302: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);
431: List<?> MapTeamList = mapTeamService.selectMapTeamList(mapTeamVO);
445: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);
```

지식정보제공/지식정보요청 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/dam/spe/req/listRequestOffer.do

1. 제네릭 타입 명시: 디지털자산관리 - 지식요청제공관리
2. 카멜 표기법: RequestOfferVO 를 requestOfferVO 로 수정

https://youtu.be/0AR5IHuw-NY

https://github.com/GSITM2023/egovframe-common-components/commit/cf1f937bcf5138852dd0a7fd6a89866bc9649bde

https://github.com/GSITM2023/egovframe-common-components/commit/c78d93eb3206bae323a831b0fdde5eeb26627596

https://github.com/eGovFramework/egovframe-common-components/pull/142

## 2023-06-17

### 제네릭 타입 명시-디지털자산관리 - 지식정보관리-수정화면/수정 분기 고찰

post 메서드로 던지는 앞 단의 변동이 없어

수정 화면 및 처리 분기는 GetMapping과 PostMapping이 아닌

PostMapping 내의 bindingResult.hasErrors() 조건으로 분기 되고 있으므로

이에 대한 고찰이 필요해 보임

https://github.com/eGovFramework/egovframe-common-components/pull/139

1. 수정화면으로 form method 를 get 으로 수정
2. 수정화면에서 상세조회와 수정폼을 분리
3. 수정화면과 수정 유효성 검증에서 같이 사용하려고 '지식정보 상세 정보를 조회 한다.' 초기값 분리
4. 지식정제 <form:errors path="knoAps" /> 추가
5. 수정 유호성 검증에서 폐기일자 포맷 yyyy-MM-dd 맞춤
6. 저장을 수정으로 수정함

수정화면
- http://localhost:8080/egovframework-all-in-one/dam/mgm/EgovComDamManagementModify.do?knoId=DMID_000000000000001&knoCn=test+%EC%9D%B4%EB%B0%B1%ED%96%89+2023-06-10+%EC%A7%80%EC%8B%9D%EB%82%B4%EC%9A%A9&atchFileId=oO3rGEfD8twsMG5pYVeQOvXRVZDYkZMlAF88rDkQ48k%253D&fileSn=&fileListCnt=1

https://youtu.be/YUqTb1HgQI0

https://github.com/GSITM2023/egovframe-common-components/commit/ec2a0a82b4af6190185391d82e6a373560280de8

https://github.com/GSITM2023/egovframe-common-components/commit/28b3cb5c9371c35e6a72ecb58f589649c541f7ed

https://github.com/GSITM2023/egovframe-common-components/commit/c2c7bf61ddf200977c5ac7fea3e3188180130032

https://github.com/GSITM2023/egovframe-common-components/commit/15f8fdfbc362afe68223d09a6a88b655584af6f1

https://github.com/GSITM2023/egovframe-common-components/commit/9bd98dda243fbc9b223c9637b4f36ef47c33f4ce

https://github.com/GSITM2023/egovframe-common-components/commit/25b1a059873e74aab4a062627543ba8cdccf2853

## 2023-06-16

### 제네릭 타입 명시-디지털자산관리 - 개인지식관리

```java
per
service
impl
EgovKnoPersonalServiceImpl.java
47: public List<?> selectKnoPersonalList(KnoPersonalVO searchVO) throws Exception {
KnoPersonalDAO.java
33: public List<?> selectKnoPersonalList(KnoPersonalVO searchVO) throws Exception {
EgovKnoPersonalService.java
26: List<?> selectKnoPersonalList(KnoPersonalVO searchVO) throws Exception;
web
EgovKnoPersonalController.java (5 matches)
133: List<?> KnoPersonalList = knoPersonalService.selectKnoPersonalList(searchVO);

188: List<?> MapTeamList = mapTeamService.selectMapTeamList(searchVO);
203: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);
217: List<?> MapTeamList = mapTeamService.selectMapTeamList(searchVO);
232: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchMatVO);
```

등록된 개인지식 정보를 조회 한다.

http://localhost:8080/egovframework-all-in-one/dam/per/EgovComDamPersonalList.do

resultType="egovMap" 를 resultMap="KnoPersonalList" 로 수정

비교

```
<result property="orgnztNm" column="ORGNZT_NM"/>	
C.ORGNZT_NM					ORGNZT_NM
orgnztNm

<result property="knoTypeNm" column="KNWLDG_TY_NM"/>
B.KNWLDG_TY_NM				KNO_TYPE_NM
knoTypeNm

<result property="knoId" column="KNWLDG_ID"/>
A.KNWLDG_ID					KNO_ID
knoId

<result property="knoNm" column="KNWLDG_NM"/>
A.KNWLDG_NM					KNO_NM
knoNm

<result property="userNm" column="USER_NM"/>
D.USER_NM        			USER_NM
userNm

<result property="colYmd" column="COLCT_DE"/>
DATE_FORMAT(A.COLCT_DE,'%Y-%m-%d') COL_YMD
colYmd

<result property="othbcAt" column="OTHBC_AT"/>
A.OTHBC_AT					OTHBC_AT
othbcAt

<result property="frstRegisterId" column="FRST_REGISTER_ID"/>
A.FRST_REGISTER_ID			FRST_REGISTER_ID
private String frstRegisterId = "";

<result property="frstRegisterPnttm" column="FRST_REGIST_PNTTM"/>
DATE_FORMAT(A.FRST_REGIST_PNTTM,'%Y-%m-%d') FRST_REGIST_PNTTM
private String frstRegisterPnttm = "";

<result property="lastUpdusrId" column="LAST_UPDUSR_ID"/>
A.LAST_UPDUSR_ID			LAST_UPDUSR_ID
private String lastUpdusrId;

<result property="lastUpdusrPnttm" column="LAST_UPDT_PNTTM"/>
DATE_FORMAT(A.LAST_UPDT_PNTTM,'%Y-%m-%d') LAST_UPDUSR_PNTTM
private String lastUpdusrPnttm;
```

https://youtu.be/fM21ThVE4cA

https://github.com/GSITM2023/egovframe-common-components/commit/52060e77d09c95d92dc33c0c5428a05accb2b328

https://github.com/eGovFramework/egovframe-common-components/pull/140

## 2023-06-15

### 제네릭 타입 명시-디지털자산관리 - 지식정보관리

```java
mgm
service
impl
EgovKnoManagementServiceImpl.java
41: public List<?> selectKnoManagementList(KnoManagementVO searchVO) throws Exception {
KnoManagementDAO.java
33: public List<?> selectKnoManagementList(KnoManagementVO searchVO) throws Exception {
EgovKnoManagementService.java
26: List<?> selectKnoManagementList(KnoManagementVO searchVO) throws Exception;
web
EgovKnoManagementController.java
94: List<?> KnoManagementList = knoManagementService.selectKnoManagementList(searchVO);
```

등록된 지식정보 정보를 조회 한다.

http://localhost:8080/egovframework-all-in-one/dam/mgm/EgovComDamManagementList.do

https://youtu.be/S153tXnsIJw

https://github.com/GSITM2023/egovframe-common-components/commit/6c43bcddebef5cfe3c326f614f4f00b4a8787d74

https://github.com/eGovFramework/egovframe-common-components/pull/139

## 2023-06-14

### 제네릭 타입 명시-지식맵관리(조직)

```java
map
mat
web
EgovMapMaterialController.java (3 matches)
142: List<?> MapMaterialList = mapTeamService.selectMapTeamList(searchVO);
156: List<?> MapMaterialList = mapTeamService.selectMapTeamList(searchVO);
tea
service
impl
EgovMapTeamServiceImpl.java
40: public List<?> selectMapTeamList(MapTeamVO searchVO) throws Exception {
MapTeamDAO.java
32: public List<?> selectMapTeamList(MapTeamVO searchVO) throws Exception {
EgovMapTeamService.java
25: List<?> selectMapTeamList(MapTeamVO searchVO) throws Exception;
web
EgovMapTeamController.java
89: List<?> MapTeamList = mapTeamService.selectMapTeamList(searchVO);
```

등록된 지식맵(조직별) 정보를 조회 한다.

http://localhost:8080/egovframework-all-in-one/dam/map/tea/EgovComDamMapTeamList.do

https://youtu.be/KbjeNHQznlM

https://github.com/GSITM2023/egovframe-common-components/commit/2ad0b81812febe6c4933327dc41f2bb262f0d614

https://github.com/eGovFramework/egovframe-common-components/pull/138

## 2023-06-13

### 제네릭 타입 명시-지식맵관리(유형)

```java
map
mat
service
impl
EgovMapMaterialServiceImpl.java
41: public List<?> selectMapMaterialList(MapMaterialVO searchVO) throws Exception {
MapMaterialDAO.java
33: public List<?> selectMapMaterialList(MapMaterialVO searchVO) throws Exception {
EgovMapMaterialService.java
25: List<?> selectMapMaterialList(MapMaterialVO searchVO) throws Exception;
web
EgovMapMaterialController.java (3 matches)
94: List<?> MapMaterialList = mapMaterialService.selectMapMaterialList(searchVO);
```

등록된 지식맵(지식유형) 정보를 조회 한다.

http://localhost:8080/egovframework-all-in-one/dam/map/mat/EgovComDamMapMaterialList.do

https://youtu.be/O_Rl1yImRW8

https://github.com/GSITM2023/egovframe-common-components/commit/b32e32779e749217485299b93d086c2b31923ccf

https://github.com/eGovFramework/egovframe-common-components/pull/137

## 2023-06-12

### 제네릭 타입 명시-지식평가관리

Spring Security 사용자권한 처리되어 setEmplyrId 조건문 제거함

사용하지 않는 컨트롤러 파라미터 제거함

최종수정자ID 추가함 ,  LAST_UPDUSR_ID = #{lastUpdusrId}

```
dam
app
service
impl
EgovKnoAppraisalServiceImpl.java
41: public List<?> selectKnoAppraisalList(KnoAppraisalVOsearchVO) throws Exception {
KnoAppraisalDAO.java
33: public List<?> selectKnoAppraisalList(KnoAppraisalVO searchVO) throws Exception {
EgovKnoAppraisalService.java
26: List<?> selectKnoAppraisalList(KnoAppraisalVO searchVO) throws Exception;
web
EgovKnoAppraisalController.java
105: List<?> KnoAppraisalList = knoAppraisalService.selectKnoAppraisalList(searchVO);
```

```java
    /**
     * 권한 인증방식(dummy, session, security) - 사용자의 로그인시 인증 방식을 결정함
     */
    public static final String GLOBALS_AUTH = EgovProperties.getProperty("Globals.Auth");
```

if (!"security".equals(Globals.GLOBALS_AUTH)) {

등록된 지식정보평가 정보를 조회 한다.

http://localhost:8080/egovframework-all-in-one/dam/app/EgovComDamAppraisalList.do

https://youtu.be/0pw4aDHEOJ4

https://github.com/GSITM2023/egovframe-common-components/commit/944e3328336c9bfe8f770ffb646ec880657804bd

https://github.com/GSITM2023/egovframe-common-components/commit/f465ddcb3c0a5d4f9a959f2b2b53d15843b760f4

https://github.com/GSITM2023/egovframe-common-components/commit/2a156df326242f5a05b29364d310f5ca3d075f7f

https://github.com/GSITM2023/egovframe-common-components/commit/8baf9b8903e31f8498a51b7802fb746018a49cca

https://github.com/eGovFramework/egovframe-common-components/pull/136

## 2023-06-10

### 제네릭 타입 명시-EgovTemplateManageController.java

setFrstRegisterId, setLastUpdusrId 를 isAuthenticated 조건문 안으로 이동하고 중복 조건문 제거함

```
tpl
web
EgovTemplateManageController.java (4 matches)
115: List<?> result = cmmUseService.selectCmmCodeDetail(codeVO);
148: List<?> result = cmmUseService.selectCmmCodeDetail(vo);
178: List<?> result = cmmUseService.selectCmmCodeDetail(vo);
208: List<?> result = cmmUseService.selectCmmCodeDetail(codeVO);
```

템플릿 목록을 조회한다.

http://localhost:8080/egovframework-all-in-one/cop/tpl/selectTemplateInfs.do

템플릿에 대한 상세정보를 조회한다.

http://localhost:8080/egovframework-all-in-one/cop/tpl/selectTemplateInf.do

템플릿 정보를 등록한다.

http://localhost:8080/egovframework-all-in-one/cop/tpl/insertTemplateInf.do

템플릿 등록을 위한 등록페이지로 이동한다.

http://localhost:8080/egovframework-all-in-one/cop/tpl/addTemplateInf.do

템플릿 정보를 수정한다.

http://localhost:8080/egovframework-all-in-one/cop/tpl/updateTemplateInf.do

https://youtu.be/pS-pak5fgPc

https://github.com/GSITM2023/egovframe-common-components/commit/0e2eede1a98684c50e0d75ae6dec97e77591478b

https://github.com/eGovFramework/egovframe-common-components/pull/135

## 2023-06-09

### 제네릭 타입 명시-selectIndvdlSchdulManageRetrieve

comCopSmtSdm.Gbn.Daily 를 comCopSmtSim.Gbn.Daily 로 수정

부서일정관리를 일정관리로 수정

```
EgovIndvdlSchdulManageServiceImpl.java (4 matches)
63: public List<?> selectIndvdlSchdulManageRetrieve(Map<?, ?> map) throws 

IndvdlSchdulManageDao.java (4 matches)
48: public List<?> selectIndvdlSchdulManageRetrieve(Map<?, ?> map) throws 

EgovIndvdlSchdulManageService.java (4 matches)
40: public List<?> selectIndvdlSchdulManageRetrieve(Map<?, ?> map) throws Exception;

EgovIndvdlSchdulManageController.java (9 matches)
183: List<?> resultList = egovIndvdlSchdulManageService.selectIndvdlSchdulManageRetrieve(commandMap);
```

일정관리 일간

http://localhost:8080/egovframework-all-in-one/cop/smt/sim/EgovIndvdlSchdulManageDailyList.do

부서일정관리 일간

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageDailyList.do

```jsp
<h1>searchVO</h1>
searchKeyword=<c:out value="${searchVO.searchKeyword}" /><br>
searchKeyword=<c:out value="${searchVO.searchCondition}" /><br>

<h1>param</h1>
searchKeyword=<c:out value="${param.searchKeyword}" /><br>
searchKeyword=<c:out value="${param.searchCondition}" /><br>
year=<c:out value="${param.year}" /><br>
month=<c:out value="${param.month}" /><br>
day=<c:out value="${param.day}" /><br>

<h1>commandMap</h1>
searchMode=<c:out value="${param.searchMode}" /><br>
searchMonth=<c:out value="${param.searchMonth}" /><br>
schdulBgnde=<c:out value="${param.schdulBgnde}" /><br>
schdulEndde=<c:out value="${param.schdulEndde}" /><br>
searchDay=<c:out value="${param.searchDay}" /><br>
searchKeyword=<c:out value="${param.searchKeyword}" /><br>
searchCondition=<c:out value="${param.searchCondition}" /><br>

<h1>model</h1>
searchKeyword=<c:out value="${searchKeyword}" /><br>
searchCondition=<c:out value="${searchCondition}" /><br>
resultList=<c:out value="${resultList}" /><br>
year=<c:out value="${year}" /><br>
month=<c:out value="${month}" /><br>
day=<c:out value="${day}" /><br>
resultList=<c:out value="${resultList}" /><br>
```

https://youtu.be/dL4l_Gu2NcA

https://github.com/GSITM2023/egovframe-common-components/commit/a1b1bea1f4a158e50ec375089ebd12507c571ab1

https://github.com/eGovFramework/egovframe-common-components/pull/134

## 2023-06-08

### 제네릭 타입 명시-selectIndvdlSchdulManageMainList

```
52: public List<?> selectIndvdlSchdulManageMainList(Map<?, ?> map) throws Exception{
38: public List<?> selectIndvdlSchdulManageMainList(Map<?, ?> map) throws Exception{
32: public List<?> selectIndvdlSchdulManageMainList(Map<?, ?> map) throws Exception;
116: List<?> reusltList = egovIndvdlSchdulManageService.selectIndvdlSchdulManageMainList(hmParam);
```

http://localhost:8080/egovframework-all-in-one/cop/smt/sim/EgovIndvdlSchdulManageMainList.do

https://youtu.be/RwybK5oXxb4

https://github.com/GSITM2023/egovframe-common-components/commit/521c452ac68bc800e6d91c223d16f1ba99dffeb2

https://github.com/eGovFramework/egovframe-common-components/pull/133

## 2023-06-07

### 제네릭 타입 명시-deptSchdulManageRegist

```
792: List<?> listComCode = cmmUseService.selectCmmCodeDetail(voComCode);
806: model.addAttribute("schdulBgndeHH", (List<?>)getTimeHH());
808: model.addAttribute("schdulBgndeMM", (List<?>)getTimeMM());
810: model.addAttribute("schdulEnddeHH", (List<?>)getTimeHH());
812: model.addAttribute("schdulEnddeMM", (List<?>)getTimeMM());
```

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageRegist.do

https://youtu.be/TLdsULW4DiE

https://github.com/GSITM2023/egovframe-common-components/commit/5cf7d09165379d3485b72a0f58526c6aebb7152b

https://github.com/eGovFramework/egovframe-common-components/pull/132

## 2023-06-06

### 제네릭 타입 명시-deptSchdulManageModifyActor

```
695: List<?> listComCode = cmmUseService.selectCmmCodeDetail(voComCode);  
709: model.addAttribute("schdulBgndeHH", (List<?>)getTimeHH());  
711: model.addAttribute("schdulBgndeMM", (List<?>)getTimeMM());  
713: model.addAttribute("schdulEnddeHH", (List<?>)getTimeHH());  
715: model.addAttribute("schdulEnddeMM", (List<?>)getTimeMM());  
```

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageList.do

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageModifyActor.do

oO3rGEfD8twsMG5pYVeQOiJkyefKpslO5QzpmaxzXpo%3D
oO3rGEfD8twsMG5pYVeQOiJkyefKpslO5QzpmaxzXpo%253D
FILE_000000000000043
com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column 'ATCH_FILE_ID' at row 1

/egovframe-common-components/src/main/java/egovframework/com/cmm/web/EgovBindingInitializer.java

/egovframe-common-components/src/main/java/egovframework/com/cmm/web/EgovAtchFileIdPropertyEditor.java

URLEncoder.encode 안 해도 된 것 같음

String encText = URLEncoder.encode(text, StandardCharsets.UTF_8.name());

/egovframe-common-components/src/main/webapp/WEB-INF/jsp/egovframework/com/cop/smt/sdm/EgovDeptSchdulManageModify.jsp

<c:param name="param_atchFileId" value="${egovc:encrypt(deptSchdulManageVO.atchFileId)}" />

https://youtu.be/oYo0JUjzHU8

https://github.com/GSITM2023/egovframe-common-components/commit/1d232a4d962f88264b469285b3b16da4fea283f6

https://github.com/eGovFramework/egovframe-common-components/pull/131

## 2023-06-05

### 제네릭 타입 명시-deptSchdulManageModify

```
609: List<?> listComCode = cmmUseService.selectCmmCodeDetail(voComCode);  
623: model.addAttribute("schdulBgndeHH", (List<?>)getTimeHH());  
625: model.addAttribute("schdulBgndeMM", (List<?>)getTimeMM());  
627: model.addAttribute("schdulEnddeHH", (List<?>)getTimeHH());  
629: model.addAttribute("schdulEnddeMM", (List<?>)getTimeMM());  
```

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageList.do

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageModify.do

https://youtu.be/8ONeCeqfhHU

https://github.com/GSITM2023/egovframe-common-components/commit/d2c5844545fea193d800cc51cc95d288d16cdaa4

https://github.com/eGovFramework/egovframe-common-components/pull/130

## 2023-06-03

### 제네릭 타입 명시-selectDeptSchdulManageDetail

78: public List<?> selectDeptSchdulManageDetail(DeptSchdulManageVO deptSchdulManageVO) throws Exception;

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageList.do

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageDetail.do

https://youtu.be/HYmaBol5Lt4

https://github.com/GSITM2023/egovframe-common-components/commit/b0633a5b51606c247c2994ca533b95750b0743c0

https://github.com/eGovFramework/egovframe-common-components/pull/129

## 2023-06-02

### selectDeptSchdulManageList ? 를 EgovMap 으로 수정

70: public List<?> selectDeptSchdulManageList(ComDefaultVO searchVO) throws Exception;

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageList.do

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageListPopup.do

https://youtu.be/PCaIlS5JJhY

https://github.com/GSITM2023/egovframe-common-components/commit/ed546db349e3165d9227ae5cf08e0cb798bd5f6e

https://github.com/eGovFramework/egovframe-common-components/pull/128

## 2023-06-01

### selectDeptSchdulManageRetrieve ? 를 EgovMap 으로 수정

54: public List<?> selectDeptSchdulManageRetrieve(Map<?, ?> map) throws Exception;

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageDailyList.do

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageMonthList.do

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageWeekList.do

https://youtu.be/5pX4VfzT-Fc

https://github.com/eGovFramework/egovframe-common-components/pull/127

https://github.com/eGovFramework/egovframe-common-components/pull/127

## 2023-05-31

### selectDeptSchdulManageMainList ? 를 EgovMap 으로 수정

46: public List[?] selectDeptSchdulManageMainList(Map[?, ?] map) throws Exception;

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageMainList.do

https://youtu.be/ISw2V14DhSE

https://github.com/GSITM2023/egovframe-common-components/commit/213f0d5d853c04ed13d3f5a12ed5171b9bc93a8d

https://github.com/eGovFramework/egovframe-common-components/pull/126

## 2023-05-30

### selectDeptSchdulManageEmpLyrPopup ? 를 EgovMap 으로 수정

47: public List<?> selectDeptSchdulManageEmpLyrPopup(ComDefaultVO searchVO){

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageEmpLyrPopup.do

https://youtu.be/FAbHn3Amn0s

https://github.com/GSITM2023/egovframe-common-components/commit/5b3ee132e104746484070a8d5eff30e6573ff449

https://github.com/eGovFramework/egovframe-common-components/pull/124

## 2023-05-29

### selectDeptSchdulManageAuthorGroupPopup ? 를 EgovMap 으로 수정

37: public List<?> selectDeptSchdulManageAuthorGroupPopup(ComDefaultVO searchVO){

http://localhost:8080/egovframework-all-in-one/cop/smt/sdm/EgovDeptSchdulManageAuthorGroupPopup.do

https://youtu.be/plpksbmsoVc

https://github.com/GSITM2023/egovframe-common-components/commit/5ab4e59c40ef7137e7abebf0ff8ff6a909df48b8

https://github.com/eGovFramework/egovframe-common-components/pull/123

## 2023-05-27

### ? listWeek 를 String 으로 수정

List<?> listWeek 를 List<String> 으로 수정

318: List<?> listWeek = (List<?>)listWeekGrop.get(iNowWeek);

http://localhost:8080/egovframework-all-in-one/cop/smt/lsm/usr/selectLeaderSchdulWeekList.do

https://youtu.be/_L4-nHKOYdc

https://github.com/GSITM2023/egovframe-common-components/commit/cc6a6b22c018f472e809cc4626bc749493e5d15c

https://github.com/eGovFramework/egovframe-common-components/pull/122

## 2023-05-26

### ? 를 AtchmnFileVO 로 수정

List<?> 를 List<AtchmnFileVO> 로 수정

134: List<?> atchmnFileList = sndngMailRegistDAO.selectAtchmnFileList(vo);

https://youtu.be/nEzYheaxhG0

https://github.com/GSITM2023/egovframe-common-components/commit/ce9dcc6fbec1a608e632bd4ce6e1e1941d5e4a55

https://github.com/eGovFramework/egovframe-common-components/pull/121

## 2023-05-25

### ? 를 BoardVO 로 수정

List<?> boardVO 를 List<BoardVO> boardVO 로 수정

14: public List<?> selectArticleList(BoardVO boardVO) {

https://youtu.be/3E9DRSWBDI0

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleDAOTest_selectArticleList.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleDAOTest_selectBlogListManager.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleDAOTest_selectGuestArticleList.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleServiceImplTest_selectArticleList.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleServiceImplTest_selectBlogListManager.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleServiceImplTest_selectBlogNmList.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleServiceImplTest_selectGuestArticleList.java

https://github.com/GSITM2023/egovframe-common-components/tree/2023/05/25/src/test/java/egovframework/com/cop/bbs/service/impl/EgovArticleServiceImplTest_selectLoginUser.java

https://github.com/GSITM2023/egovframe-common-components/commit/8a66db9c50a016f7a10f5b7eb05b29ec3588e6da

https://github.com/eGovFramework/egovframe-common-components/pull/120

## 2023-05-24

### ? 를 FileVO 로 수정

List<?> fvoList 를 List<FileVO> fvoList 로 수정

42: public void deleteFileInfs(List<?> fvoList) throws Exception {

https://youtu.be/Bo41p78Zwz8

https://github.com/GSITM2023/egovframe-common-components/commit/95a3cf5a01f68c9cb8e90ac8140002c14261b10e

https://github.com/eGovFramework/egovframe-common-components/pull/119

## 2023-05-23

### List<?> voList 를 List<ComDefaultCodeVO> voList 로 수정

57: public Map<String, List<CmmnDetailCode>> selectCmmCodeDetails(List<?> voList) throws Exception {  

https://youtu.be/jtFbOzexhh0

https://github.com/GSITM2023/egovframe-common-components/commit/ccac1efb7db0d880b8f2311cd8bc1d42c68a7353

https://github.com/eGovFramework/egovframe-common-components/pull/117

https://github.com/GSITM2023/egovframe-common-components/blob/2023/05/23/src/test/java/egovframework/com/cmm/service/impl/EgovCmmUseServiceImplTest_selectCmmCodeDetails.java

## 2023-05-22

### EgovFileMngController.java java.net.URLDecoder 제거

EgovFileMngController.java 에서

import java.net.URLDecoder 제거했습니다.

사용되지 않아.

The import java.net.URLDecoder is never used
- 가져오기 java.net.URLDecoder는 사용되지 않습니다.
- EgovFileMngController.java
- /egovframe-common-components/src/main/java/egovframework/com/cmm/web
- line 3
- Java Problem

https://youtu.be/OnBTzfJNZa8

https://github.com/GSITM2023/egovframe-common-components/commit/e2f4fe700b4a1844e706571f0a2fbe4255d6a303

https://github.com/eGovFramework/egovframe-common-components/pull/116

## 2023-05-20

### EgovAdministrationWordController.java @SuppressWarnings("unused") 제거

EgovAdministrationWordController.java 에서

@SuppressWarnings("unused") 제거했습니다.

무시되는 컴파일러 옵션으로 인해 '사용되지 않음' 범주의 문제 중 하나 이상이 분석되지 않아서.

At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored
- 무시되는 컴파일러 옵션으로 인해 '사용되지 않음' 범주의 문제 중 하나 이상이 분석되지 않습니다.
- EgovAdministrationWordController.java
- /egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/web
- line 81
- Java Problem

```
EgovAdministrationWordController.java
EgovAdministrationWordController.java
EgovAdministrationWordController.java
EgovAdministrationWordController.java
EgovBndtManageServiceImpl.java
EgovKnoPersonalController.java
EgovOnlineManualController.java
EgovOnlineManualController.java
EgovOnlineManualController.java
EgovOnlineManualController.java
EgovQustnrTmplatManageController.java
```

// TODO @SuppressWarnings("unused") 정리해야 함

https://youtu.be/7zWViQvPwNo

https://github.com/GSITM2023/egovframe-common-components/commit/3cd521c7c73a778a571b707dbf4d3775db7f6552

https://github.com/eGovFramework/egovframe-common-components/pull/114

### Generic 타입을 명시하여 불분명한 list return 대신 selectList 사용

list 메서드는 더 이상 사용되지 않아 selectList 로 수정

DiaryManageDao.java 외 46개 총 47개에서

메서드 list 를 selectList 로 수정했습니다.

list 메서드는 더 이상 사용되지 않아.

The method list(String, Object) from the type EgovComAbstractDAO is deprecated
- EgovComAbstractDAO 유형의 list(String, Object) 메서드는 더 이상 사용되지 않습니다.
- DiaryManageDao.java
- /egovframe-common-components/src/main/java/egovframework/com/cop/smt/dsm/service/impl
- line 37
- Java Problem

```
DiaryManageDao.java
EgovAdministrationWordDAO.java
EgovArticleCommentDAO.java
EgovArticleScrapDAO.java
EgovBBSMasterDAO.java
EgovBBSMasterDAO.java
EgovCommuManageDAO.java
EgovCommuMasterDAO.java
EgovCommuMasterDAO.java
EgovEventCmpgnDAO.java
EgovEventCmpgnDAO.java
EgovFaqDAO.java
EgovHpcmDAO.java
EgovNewsDAO.java
EgovOnlineManualDAO.java
EgovQnaDAO.java
EgovQnaDAO.java
EgovRecomendSiteDAO.java
EgovSiteDAO.java
EgovWordDicaryDAO.java
EntrprsManageDAO.java
EntrprsManageDAO.java
GroupManageDAO.java
IndvdlSchdulManageDao.java
IndvdlSchdulManageDao.java
IndvdlSchdulManageDao.java
IndvdlSchdulManageDao.java
LoginLogDAO.java
MberManageDAO.java
MberManageDAO.java
NoteTrnsmitDao.java
NoteTrnsmitDao.java
OnlinePollManageDao.java
OnlinePollManageDao.java
OnlinePollManageDao.java
OnlinePollPartcptnDao.java
OnlinePollPartcptnDao.java
OnlinePollPartcptnDao.java
OnlinePollPartcptnDao.java
OnlinePollResultDao.java
PrivacyLogDAO.java
QustnrItemManageDao.java
QustnrItemManageDao.java
QustnrItemManageDao.java
QustnrManageDao.java
QustnrManageDao.java
QustnrManageDao.java
```

https://youtu.be/C4nLVW5EOV0

https://github.com/GSITM2023/egovframe-common-components/commit/fb88394417d4e3cfca1e8d185dac59297b784433

https://github.com/eGovFramework/egovframe-common-components/pull/115

## 2023-05-19

### EgovNetworkState 유형의 정적 메서드 getMyPortScan()은 정적 방식으로 액세스함

1. TestPingNetwork.java 에서

getMyPortScan()은 정적 방식으로 액세스했습니다.

정적 메서드는 정적 방식으로 액세스해야 하므로.

2. // TODO Auto-generated method stub 제거했습니다.

3. /egovframe-common-components/src/test/resources/egovframework/egovProps/conf/server.properties 지정된 파일을 추가했습니다.

The static method getMyPortScan() from the type EgovNetworkState should be accessed in a static way
- EgovNetworkState 유형의 정적 메서드 getMyPortScan()은 정적 방식으로 액세스해야 합니다.
- TestPingNetwork.java
- /egovframe-common-components/src/test/java/egovframework/com/utl/sim
- line 42
- Java Problem

실행 에러

Caused by: java.io.FileNotFoundException: C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\workspace\egovframe-common-components\target\test-classes\egovframework\egovProps\conf\server.properties (지정된 파일을 찾을 수 없습니다)

```
log4j]2023-05-18 06:57:38,603 DEBUG [egovframework.com.cmm.service.EgovProperties] Property file not found.
java.io.FileNotFoundException: C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\workspace\egovframe-common-components\target\test-classes\egovframework\egovProps\conf\server.properties (지정된 파일을 찾을 수 없습니다)
	at java.io.FileInputStream.open0(Native Method) ~[?:1.8.0_242]
	at java.io.FileInputStream.open(FileInputStream.java:195) ~[?:1.8.0_242]
	at java.io.FileInputStream.<init>(FileInputStream.java:138) ~[?:1.8.0_242]
	at java.io.FileInputStream.<init>(FileInputStream.java:93) ~[?:1.8.0_242]
	at egovframework.com.cmm.service.EgovProperties.loadPropertiesFromFile(EgovProperties.java:167) ~[classes/:?]
	at egovframework.com.cmm.service.EgovProperties.getPropertyValueByKey(EgovProperties.java:150) ~[classes/:?]
	at egovframework.com.cmm.service.EgovProperties.getProperty(EgovProperties.java:91) ~[classes/:?]
	at egovframework.com.cmm.service.EgovProperties.getPathProperty(EgovProperties.java:101) ~[classes/:?]
	at egovframework.com.utl.sim.service.EgovNetworkState.getMyPortScan(EgovNetworkState.java:140) ~[classes/:?]
	at egovframework.com.utl.sim.TestPingNetwork.main(TestPingNetwork.java:42) ~[test-classes/:?]
java.lang.RuntimeException: Property file not found
	at egovframework.com.cmm.service.EgovProperties.loadPropertiesFromFile(EgovProperties.java:172)
	at egovframework.com.cmm.service.EgovProperties.getPropertyValueByKey(EgovProperties.java:150)
	at egovframework.com.cmm.service.EgovProperties.getProperty(EgovProperties.java:91)
	at egovframework.com.cmm.service.EgovProperties.getPathProperty(EgovProperties.java:101)
	at egovframework.com.utl.sim.service.EgovNetworkState.getMyPortScan(EgovNetworkState.java:140)
	at egovframework.com.utl.sim.TestPingNetwork.main(TestPingNetwork.java:42)
Caused by: java.io.FileNotFoundException: C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\workspace\egovframe-common-components\target\test-classes\egovframework\egovProps\conf\server.properties (지정된 파일을 찾을 수 없습니다)
	at java.io.FileInputStream.open0(Native Method)
	at java.io.FileInputStream.open(FileInputStream.java:195)
	at java.io.FileInputStream.<init>(FileInputStream.java:138)
	at java.io.FileInputStream.<init>(FileInputStream.java:93)
	at egovframework.com.cmm.service.EgovProperties.loadPropertiesFromFile(EgovProperties.java:167)
	... 5 more
```

실행 에러

명령이 비어 있는 경우 IndexOutOfBoundsException 발생했습니다.
왜 비어 있는지 알 수 없어서 확인 부탁드립니다.

at java.lang.ProcessBuilder.start(ProcessBuilder.java:1014)

// Throws IndexOutOfBoundsException if command is empty
// 명령이 비어 있는 경우 IndexOutOfBoundsException 발생
String prog = cmdarray[0];

```
java.lang.ArrayIndexOutOfBoundsException: 0
	at java.lang.ProcessBuilder.start(ProcessBuilder.java:1014)
	at egovframework.com.cmm.service.FileSystemUtils.openProcess(FileSystemUtils.java:449)
	at egovframework.com.cmm.service.FileSystemUtils.processOperate(FileSystemUtils.java:466)
	at egovframework.com.utl.sim.service.EgovNetworkState.getMyPortScan(EgovNetworkState.java:144)
	at egovframework.com.utl.sim.TestPingNetwork.main(TestPingNetwork.java:42)
```

protected static Logger egovLogger = LoggerFactory.getLogger(TestPingNetwork.class);

egovLogger.error("IOException");

egovLogger.error("Exception");

https://youtu.be/Y79ApzbeSw4

https://github.com/GSITM2023/egovframe-common-components/commit/f2e8b058804033e596b873ba32674481d3cf4e00

https://github.com/eGovFramework/egovframe-common-components/pull/113

## 2023-05-18

### 로컬 변수 inputFile의 값이 사용되지 않아 주석

TestPdfConverter2.java 에서

inputFile 주석했습니다.

로컬 변수 inputFile의 값이 사용되지 않기 때문에.

// TODO Auto-generated catch block 제거

The value of the local variable inputFile is not used
- 로컬 변수 inputFile의 값이 사용되지 않습니다.
- TestPdfConverter2.java
- /egovframe-common-components/src/test/java/egovframework/com/utl/sim
- line 41
- Java Problem

https://youtu.be/XKOocd5EIiU

https://github.com/GSITM2023/egovframe-common-components/commit/5ff034b6c1cfa49ef80c1a10ed7deb6aa16cbcca

https://github.com/eGovFramework/egovframe-common-components/pull/112

## 2023-05-17

### EgovWhiteList.java checkNew 메서드 추가

EgovWhiteList.java 에서
checkNew 메서드를 추가했습니다.
loadWhiteListNew(String) 메서드는 로컬에서 사용되지 않기 때문에.

The method loadWhiteListNew(String) from the type EgovWhiteList is never used locally
- EgovWhiteList 유형의 loadWhiteListNew(String) 메서드는 로컬에서 사용되지 않습니다.
- EgovWhiteList.java
- /egovframe-common-components/src/test/java/egovframework/com/cmm/service
- line 58
- Java Problem

/egovframe-common-components/src/test/java/egovframework/com/cmm/service/TestLoadFile.java

/egovframe-common-components/src/test/java/egovframework/com/cmm/service/TestWhiteListLink.java

https://youtu.be/oz4tQou8l3A

https://github.com/GSITM2023/egovframe-common-components/commit/0907e496371dda3071b13341954e4a2ffbc9ee9a

https://github.com/eGovFramework/egovframe-common-components/pull/111

## 2023-05-16

### EgovServerResrceMntrng.java 사용되지 않는 필드 제거

The value of the field EgovServerResrceMntrng.LOGGER is not used
- EgovServerResrceMntrng.LOGGER 필드의 값은 사용되지 않습니다.
- EgovServerResrceMntrng.java
- /egovframe-common-components/src/main/java/egovframework/com/utl/sys/srm/example
- line 35
- Java Problem

```java
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;

//private static final Logger LOGGER = LoggerFactory.getLogger(EgovServerResrceMntrng.class);
```

https://youtu.be/9XHMetw7AeQ

https://github.com/GSITM2023/egovframe-common-components/commit/484cc0fc82c947949edb204fa023bdb6bb1b5288

https://github.com/eGovFramework/egovframe-common-components/pull/109

## 2023-05-15

### WebLogDAO.java list 를 selectList 로 변경

The method list(String, Object) from the type EgovComAbstractDAO is deprecated
- EgovComAbstractDAO 유형의 list(String, Object) 메서드는 더 이상 사용되지 않습니다.
- WebLogDAO.java
- /egovframe-common-components/src/main/java/egovframework/com/sym/log/wlg/service/impl
- line 72
- Java Problem

```java
//return list("WebLog.selectWebLogInf", webLog);
return selectList("WebLog.selectWebLogInf", webLog);
```

```
WebLogDAO.java
UserLogDAO.java
SysLogDAO.java
StplatManageDAO.java
SndngMailDtlsDAO.java
UserManageDAO.java
RoleManageDAO.java
RoleManageDAO.java
QustnrRespondManageDao.java
QustnrRespondManageDao.java
QustnrQestnManageDao.java
```

https://youtu.be/wRVe294rZEY

https://github.com/GSITM2023/egovframe-common-components/commit/bf7a56fccfc2377d4c7b4def7c3f94f71775824f

https://github.com/eGovFramework/egovframe-common-components/pull/108

## 2023-05-13

### EgovBBSMasterDAO.java list 를 selectList 로 대체

Type safety: Unchecked cast from List<capture#4-of ?> to List<BoardMasterVO>
- 유형 안전성: List<capture#4-of ?>에서 List<BoardMasterVO>로 확인되지 않은 캐스트
- EgovBBSMasterDAO.java
- /egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl
- line 77
- Java Problem

```java
//return (List<BlogVO>) list("BBSMaster.selectBlogListPortlet", blogVO);
return selectList("BBSMaster.selectBlogListPortlet", blogVO);
```

https://youtu.be/lq76-leHs40

https://github.com/GSITM2023/egovframe-common-components/commit/8cb1ca4628334980c43c6f6592cdc66c75e8981c

https://github.com/eGovFramework/egovframe-common-components/pull/105

### EgovSignupController.java 사용되지 않는 변수 제거

The value of the local variable resultDBInfo is not used
- 로컬 변수 resultDBInfo의 값은 사용되지 않습니다.
- EgovSignupController.java
- /egovframe-common-components/src/main/java/egovframework/com/ext/oauth/web
- line 151
- Java Problem

```java
//String resultDBInfo = ""; // DB 체크 결과
```

```
EgovMybatisUtil.java
EgovAuthorRoleController.java
EgovAdministrationWordController.java
AuthenticInterceptor.java
```

https://youtu.be/FfBBs3UlS6U

https://github.com/GSITM2023/egovframe-common-components/commit/76c87e34d960afc1f215390c0878667b88321932

https://github.com/eGovFramework/egovframe-common-components/pull/106

### EgovWebLogInterceptor.java 사용되지 않는 HandlerInterceptorAdapter 를 HandlerInterceptor 로 수정

The type HandlerInterceptorAdapter is deprecated
- HandlerInterceptorAdapter 유형은 더 이상 사용되지 않습니다.
- EgovWebLogInterceptor.java
- /egovframe-common-components/src/main/java/egovframework/com/sym/log/wlg/web
- line 31
- Java Problem


@deprecated as of 5.3 in favor of implementing {@link HandlerInterceptor}

@deprecated 구현에 찬성하는 5.3 기준 {@link HandlerInterceptor}

```java
//public class EgovWebLogInterceptor extends HandlerInterceptorAdapter {
public class EgovWebLogInterceptor implements HandlerInterceptor {
```

```sql
select
/* COMTNWEBLOG_PK */
	A.*
from COMTNWEBLOG A /* 웹로그 */
order by
	A.REQUST_ID desc /* 요청ID */
;
```

```
IpObtainInterceptor.java
/egovframe-common-components/src/main/webapp/WEB-INF/config/egovframework/springmvc/egov-com-interceptor.xml
<!-- 세션(Session) 방식 인증시에만 AuthenticInterceptor 동작  -->
<beans profile="session">
<bean class="egovframework.com.cmm.interceptor.IpObtainInterceptor" />
```

```
FacebookUserInterceptor.java
/egovframe-common-components/src/main/webapp/WEB-INF/config/egovframework/springmvc/egov-com-servlet.xml
<bean class="egovframework.com.uss.ion.fbk.web.FacebookUserInterceptor" >
```

```
EgovWebLogInterceptor.java
/egovframe-common-components/src/main/webapp/WEB-INF/config/egovframework/springmvc/egov-com-servlet.xml
<bean id="egovWebLogInterceptor" class="egovframework.com.sym.log.wlg.web.EgovWebLogInterceptor" />
```

```
AuthenticInterceptor.java
/egovframe-common-components/src/main/webapp/WEB-INF/config/egovframework/springmvc/egov-com-interceptor.xml
<!-- 세션(Session) 방식 인증시에만 AuthenticInterceptor 동작  -->
<!-- 동작모드(프로파일명) : dummy, session, security ex)<beans profile="session"/> -->
<beans profile="dummy">
<bean class="egovframework.com.cmm.interceptor.AuthenticInterceptor">
```

```
IpObtainInterceptor.java
IpObtainInterceptor.java
FacebookUserInterceptor.java
FacebookUserInterceptor.java
EgovWebLogInterceptor.java
EgovWebLogInterceptor.java
AuthenticInterceptor.java
AuthenticInterceptor.java
```

http://localhost:8080/egovframework-all-in-one

https://youtu.be/BWUA9C9ozeA

https://github.com/GSITM2023/egovframe-common-components/commit/2207d2d14c0b416c43d14c31d128aae9e9ac4ba7

https://github.com/eGovFramework/egovframe-common-components/pull/107

## 2023-05-12

### AllSchdulManageDao.java 에서 list 를 selectList 로 대체

The method list(String, Object) from the type EgovComAbstractDAO is deprecated
- EgovComAbstractDAO 유형의 list(String, Object) 메서드는 더 이상 사용되지 않습니다.
- AllSchdulManageDao.java
- /egovframe-common-components/src/main/java/egovframework/com/cop/smt/sam/service/impl
- line 37
- Java Problem

명명규칙에 맞춰 selectList()로 변경한다.

```java
//@SuppressWarnings("rawtypes")
//public List selectAllSchdulManageeList(ComDefaultVO searchVO) throws Exception{
//return (List)list("AllSchdulManage.selectIndvdlSchdulManage", searchVO);
public List<EgovMap> selectAllSchdulManageeList(ComDefaultVO searchVO) throws Exception{
return selectList("AllSchdulManage.selectIndvdlSchdulManage", searchVO);
```

```
AuthorGroupDAO.java
AuthorManageDAO.java
AuthorManageDAO.java
AuthorRoleManageDAO.java
CmmnClCodeManageDAO.java
CmmnCodeManageDAO.java
CmmnDetailCodeManageDAO.java
CnsltManageDAO.java
CnsltManageDAO.java
DeptAuthorDAO.java
DeptAuthorDAO.java
```

---

/egovframe-common-components/src/main/resources/egovframework/mapper/com/cop/smt/sam/EgovAllSchdulManage_SQL_altibase.xml

```xml
<!-- 전제일정::목록조회_게시물정보 -->
<select id="selectIndvdlSchdulManage" parameterType="comDefaultVO" resultType="egovMap">
```

resultType="egovMap"

```java
//@SuppressWarnings("rawtypes")
//public List selectAllSchdulManageeList(ComDefaultVO searchVO) throws Exception{
public List<EgovMap> selectAllSchdulManageeList(ComDefaultVO searchVO) throws Exception{
```

http://localhost:8080/egovframework-all-in-one/cop/smt/sam/EgovAllSchdulManageList.do

CmmnClCodeManageDAO.java TODO List<?>
public List<?> selectCmmnClCodeList(CmmnClCodeVO searchVO) throws Exception {

CmmnCodeManageDAO.java

CmmnDetailCodeManageDAO.java

CnsltManageDAO.java

list 를 selectList 로 대체

https://youtu.be/DFd0f6STuds

https://github.com/GSITM2023/egovframe-common-components/commit/d33ae99ce790a3a7c92879f0fbbbba8672d581c8

https://github.com/eGovFramework/egovframe-common-components/pull/103

### @SuppressWarnings("unchecked")/@SuppressWarnings("deprecation") 제거

Unnecessary @SuppressWarnings("unchecked")
- 불필요한 @SuppressWarnings("선택하지 않음")
- ReprtStatsDAO.java
- /egovframe-common-components/src/main/java/egovframework/com/sts/rst/service/impl
- line 106
- Java Problem

```java
//@SuppressWarnings("unchecked")
@SuppressWarnings("unchecked")

//@SuppressWarnings("deprecation")
@SuppressWarnings("deprecation")
```

```
ReprtStatsDAO.java
ReprtStatsDAO.java
ReprtStatsDAO.java
ReprtStatsDAO.java
ReprtStatsDAO.java
TroblReqstDAO.java
OrgManageLdapDAO.java
NtwrkDAO.java
EgovUserInfManageDAO.java
EgovUserInfManageDAO.java
EgovUserInfManageDAO.java
EgovUserInfManageDAO.java
EgovUserInfManageDAO.java
EgovUserInfManageDAO.java
EgovUserInfManageDAO.java
EgovOrgManageLdapServiceImpl.java
EgovOrgManageLdapServiceImpl.java
EgovOrgManageLdapServiceImpl.java
EgovOrgManageLdapServiceImpl.java
EgovOrgManageLdapServiceImpl.java
DtaUseStatsDAO.java
DtaUseStatsDAO.java
DtaUseStatsDAO.java
DeptManageLdapDAO.java
BkmkMenuManageDAO.java
BkmkMenuManageDAO.java
BkmkMenuManageDAO.java
BatchSchdulDao.java
BatchSchdulDao.java
EgovQnaController.java
EgovQnaController.java
EgovQnaController.java
EgovQnaController.java
```

https://youtu.be/0NGrs7yPydM

https://github.com/GSITM2023/egovframe-common-components/commit/d081e72ce659c126e0af2565b66e6db1e91fbbe9

https://github.com/eGovFramework/egovframe-common-components/pull/104

## 2023-05-11

### TestCopyDate.java 에서 Date.setYear 를 Calendar.set 으로 대체

The method getYear() from the type Date is deprecated
- Date 유형의 getYear() 메서드는 더 이상 사용되지 않습니다.
- TestCopyDate.java
- /egovframe-common-components/src/test/java/egovframework/code/security/copyobj
- line 17
- Java Problem

Deprecated.  As of JDK version 1.1,replaced by Calendar.set(Calendar.YEAR, year + 1900).

더 이상 사용되지 않습니다. JDK 버전 1.1부터는 Calendar.set(Calendar.YEAR, year + 1900)으로 대체되었습니다.

```java
//d.setYear(2021-1900);
//LOGGER.debug("Org Date.year = "+(d.getYear()+1900));
Calendar calendar = Calendar.getInstance();
calendar.set(Calendar.YEAR, 2021);
d = calendar.getTime();
LOGGER.debug("Org Date.year = "+(calendar.get(Calendar.YEAR)));
```

https://youtu.be/8mp2ajqyrVE

https://github.com/GSITM2023/egovframe-common-components/commit/176886fce40ced03af896259c6c7623e8deb72da

https://github.com/eGovFramework/egovframe-common-components/pull/102

## 2023-05-10

### EgovFileSysMntrngServiceImpl.java 에서 java.nio.file.FileStore#getUsableSpace() 사용함

The method freeSpaceKb(String) from the type FileSystemUtils is deprecated
- FileSystemUtils 유형의 freeSpaceKb(String) 메서드는 더 이상 사용되지 않습니다.
- EgovFileSysMntrngServiceImpl.java
- /egovframe-common-components/src/main/java/egovframework/com/utl/sys/fsm/service/impl
- line 111
- Java Problem

@deprecated As of 2.6 deprecated without replacement. Please use {@link java.nio.file.FileStore#getUsableSpace()}.

@deprecated 2.6부터 대체 없이 사용되지 않습니다. {@link java.nio.file.FileStore#getUsableSpace()}를 사용하십시오.

사용 가능한 공간 얻기

```java
//		FileSystemUtils.freeSpaceKb("");
//		return 0;
		Path path = Paths.get("");
		FileStore fs = null;
		long usableSpaceBytes = 0;
		try {
			fs = Files.getFileStore(path);
			usableSpaceBytes = fs.getUsableSpace();
		} catch (IOException e) {
			egovLogger.error("IOException");
		}
		long usableSpaceKb = usableSpaceBytes / 1024;
		//return (int) usableSpaceKb;
		return  Math.toIntExact(usableSpaceKb);
```

java long to int safe
- Math.toIntExact
- https://www.baeldung.com/java-convert-long-to-int

```
freeSpaceBytes=160471506944
freeSpaceKb=156710456
freeSpaceMb=149 GB

usableSpaceBytes=160471506944
usableSpaceKb=156710456
usableSpaceMb=149 GB
```

https://youtu.be/RnHsxfBCJ70

https://github.com/GSITM2023/egovframe-common-components/commit/43966639165631b9939aa8f3f61630ba9a212655

https://github.com/LeeBaekHaeng/dev-diary#egovfilesysmntrngserviceimpljava-%EC%97%90%EC%84%9C-javaniofilefilestoregetusablespace-%EC%82%AC%EC%9A%A9%ED%95%A8

https://github.com/eGovFramework/egovframe-common-components/pull/101

## 2023-05-09

### EgovAtchFileIdPropertyEditor.java 에서 encode(String s, String enc) 메서드를 사용함

The method encode(String) from the type URLEncoder is deprecated
- URLEncoder 유형의 encode(String) 메서드는 더 이상 사용되지 않습니다.
- EgovAtchFileIdPropertyEditor.java
- /egovframe-common-components/src/main/java/egovframework/com/cmm/web
- line 18
- Java Problem

```java
//String encText = URLEncoder.encode(text);
String encText = URLEncoder.encode(text, StandardCharsets.UTF_8.name());
```

https://youtu.be/2SOBEsLcmeA

https://github.com/GSITM2023/egovframe-common-components/commit/8b1e96743025d1b8a1565e328cc0c11d4f1f170b

https://github.com/LeeBaekHaeng/dev-diary#egovatchfileidpropertyeditorjava-%EC%97%90%EC%84%9C-encodestring-s-string-enc-%EB%A9%94%EC%84%9C%EB%93%9C%EB%A5%BC-%EC%82%AC%EC%9A%A9%ED%95%A8

https://github.com/eGovFramework/egovframe-common-components/pull/100

## 2023-05-08

### EgovFileMngController.java 사용하지 않는 URLDecoder.decode 제거함

The method decode(String) from the type URLDecoder is deprecated
- URLDecoder 유형의 decode(String) 메서드는 더 이상 사용되지 않습니다.
- EgovFileMngController.java
- /egovframe-common-components/src/main/java/egovframework/com/cmm/web
- line 99
- Java Problem

```java
//model.addAttribute("atchFileId", URLDecoder.decode(param_atchFileId));
model.addAttribute("atchFileId", param_atchFileId);

//model.addAttribute("atchFileId", URLDecoder.decode(param_atchFileId));
model.addAttribute("atchFileId", param_atchFileId);
```

```sql
select * from COMTNFILE /* 파일속성 */
;

select * from COMTNFILEDETAIL /* 파일상세정보 */
;
```

`ATCH_FILE_ID` char(20) NOT NULL COMMENT '첨부파일ID',

FILE_000000000000001

https://youtu.be/Ut6zUrvprCc

https://github.com/GSITM2023/egovframe-common-components/commit/256fad5993ae1c8d5a2b3f860c4e7d55eca1faeb

https://github.com/LeeBaekHaeng/dev-diary#egovfilemngcontrollerjava-%EC%82%AC%EC%9A%A9%ED%95%98%EC%A7%80-%EC%95%8A%EB%8A%94-urldecoderdecode-%EC%A0%9C%EA%B1%B0%ED%95%A8

https://github.com/eGovFramework/egovframe-common-components/pull/99

## 2023-05-07

### PasswordValidationTest.java deprecated method 주석함

deprecated 안 된 패스워드 점검 method 추가함
- checkCharacterType
  - isMoreThan2CharTypeComb
  - isMoreThan3CharTypeComb
- checkSeries
  - isSeriesCharacter
  - isRepeatCharacter

The method checkCharacterType(String) from the type RteGenericValidator is deprecated
- RteGenericValidator 유형의 checkCharacterType(String) 메서드는 더 이상 사용되지 않습니다.
- PasswordValidationTest.java
- /egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation
- line 56
- Java Problem

```java
//assertFalse(RteGenericValidator.checkCharacterType(notOk[i]));
assertFalse(RteGenericValidator.isMoreThan2CharTypeComb(notOk[i]));
assertFalse(RteGenericValidator.isMoreThan3CharTypeComb(notOk[i]));
```

https://youtu.be/eBv5HPMsTUU

https://github.com/GSITM2023/egovframe-common-components/commit/0b5fbb4dc19e71d8c62e463869e60ec65c72a62b

https://github.com/LeeBaekHaeng/dev-diary#passwordvalidationtestjava-deprecated-method-%EC%A3%BC%EC%84%9D%ED%95%A8

https://github.com/eGovFramework/egovframe-common-components/pull/98

## 2023-05-06

### EgovDataCryptoTest.java 외 사용하지 않는 import 제거

The import java.io.IOException is never used
- 가져오기 java.io.IOException은 사용되지 않습니다.
- EgovDataCryptoTest.java
- /egovframe-common-components/src/test/java/egovframework/com/crypto/data
- line 9
- Java Problem

```java
//import java.io.IOException;
//import org.junit.Ignore;
```

- EgovFileMngController.java
- AuthenticInterceptor.java
- TestCopyCollections.java
- OAuthLogin.java
- TestTwitter.java
- EgovFileMngController.java
- DefaultItemReader.java
- EgovBndtManageServiceImpl.java
- EgovCcmZipManageController.java
- EgovFileUploadUtil.java
- EgovMenuManageController.java
- OAuthLogin.java
- TestMessage.java
- EgovDataCryptoTest.java
- TestController.java
- TestController.java
- TestController.java
- TestController.java
- TestController.java
- TestMessage.java
- EgovFileDownloadController.java
- EgovFileMngController.java
- EgovFileDownloadController.java
- EgovFileMngController.java
- EgovBindingInitializer.java
- TestTwitter.java
- TestTwitter.java

https://youtu.be/W2hms-Tgk1w

https://github.com/GSITM2023/egovframe-common-components/commit/e350be7965a64358a149d3deb93d729847cca31e

https://github.com/eGovFramework/egovframe-common-components/pull/96

### HTMLTagFilterTest.java assertThat 을 assertEquals 로 수정함

The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated
- Assert 유형의 assertThat(String, Matcher<? super String>) 메서드는 더 이상 사용되지 않습니다.
- HTMLTagFilterTest.java
- /egovframe-common-components/src/test/java/egovframework/com/filter
- line 52
- Java Problem

```java
//import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertEquals;

//assertThat(wrapper.getParameter("title"), is("&lt;b&gt;Text&lt;/b&gt;"));
assertEquals(wrapper.getParameter("title"), "&lt;b&gt;Text&lt;/b&gt;");
```

System.out.println 을 egovLogger 로 수정함

https://youtu.be/oXewk2qshdo

https://github.com/GSITM2023/egovframe-common-components/commit/47143b11fabdc3c91b0935bd295eb401f41df669

https://github.com/eGovFramework/egovframe-common-components/pull/97

## 2023-05-05

### EgovXMLDoc.java EgovWebUtil import 사용 안 함

The import egovframework.com.cmm.EgovWebUtil is never used
- import egovframework.com.cmm.EgovWebUtil은 사용되지 않습니다.
- EgovXMLDoc.java
- /egovframe-common-components/src/main/java/egovframework/com/utl/sim/service
- line 43
- Java Problem

```java
// import egovframework.com.cmm.EgovWebUtil;
```

- https://youtu.be/H9Kk0uw52Uw
- https://github.com/GSITM2023/egovframe-common-components/commit/c6b21374b25a0298881e413964e3b50d87f8fc24
- https://github.com/eGovFramework/egovframe-common-components/pull/94

### EgovProperties import 사용 안 함

The import egovframework.com.cmm.service.EgovProperties is never used
- egovframework.com.cmm.service.EgovProperties 가져오기는 사용되지 않습니다.
- CkImageSaver.java
- /egovframe-common-components/src/main/java/egovframework/com/utl/wed/filter
- line 41
- Java Problem

```java
//import egovframework.com.cmm.service.EgovProperties;
```

- EgovFaqController.java
- TestLoadFile.java
- TestWhiteListLink.java

```
[log4j]2023-05-05 09:33:08,061 DEBUG [egovframework.com.cmm.service.EgovProperties] Property file not found.
java.io.FileNotFoundException: D:\EGOVFRAME2\eGovFrameDev-4.1.0-64bit\workspace\egovframe-common-components\target\test-classes\egovframework\egovProps\globals.properties (지정된 파일을 찾을 수 없습니다)
	at java.io.FileInputStream.open0(Native Method) ~[?:1.8.0_242]
```

```
[log4j]2023-05-05 09:34:08,246 DEBUG [egovframework.com.cmm.service.EgovProperties] getProperty : /D:/EGOVFRAME2/eGovFrameDev-4.1.0-64bit/workspace/egovframe-common-components/target/test-classes/egovframework/egovProps\globals.properties = Globals.linkWhitelistFile
Exception in thread "main" java.lang.RuntimeException: Globals.linkWhitelistFile is not defined!
	at egovframework.com.cmm.service.EgovWhiteList.check(EgovWhiteList.java:28)
	at egovframework.com.cmm.service.TestLoadFile.main(TestLoadFile.java:20)
```

Globals.linkWhitelistFile 추가

```
/egovframe-common-components/src/test/resources/egovframework/egovProps/globals.properties
```

```
Globals.linkWhitelistFile=conf/linkWhitelistFile.properties
```

linkWhitelistFile.properties 파일 생성

```
/egovframe-common-components/src/test/resources/egovframework/egovProps/conf/linkWhitelistFile.properties
```

```properties
# /EgovPageLink.do 화이트 리스트 처리 (대상목록)

/egovframework/com/sym/mnu/stm/EgovSiteMap
/cmm/sym/mpm/EgovSiteMap
/egovframework/com/main_bottom

#egovPageLinkWhitelist=/egovframework/com/sym/mnu/stm/EgovSiteMap
#egovPageLinkWhitelist2=/cmm/sym/mpm/EgovSiteMap
#egovPageLinkWhitelist3=/egovframework/com/main_bottom

# 820. RSS태그관리

comthtrsmrcvmntrngloginfo
comtczip

#egovRSSWhitelist=comthtrsmrcvmntrngloginfo
#egovRSSWhitelist2=comtczip

# 실명인증 nextUrl

/uss/umt/EgovMberSbscrbView.do
/uss/umt/EgovEntrprsMberSbscrbView.do
/uss/olh/qna/QnaCnRegistView.do

#egovNextUrlWhitelist=/uss/umt/EgovMberSbscrbView.do
#egovNextUrlWhitelist2=/uss/umt/EgovEntrprsMberSbscrbView.do
#egovNextUrlWhitelist3=/uss/olh/qna/QnaCnRegistView.do

```

- https://youtu.be/XG1BoRmH2Zk
- https://github.com/GSITM2023/egovframe-common-components/commit/f3bca323c583d6a34e000a0ed7b9a71c749d8c91
- https://github.com/eGovFramework/egovframe-common-components/pull/95

## 2023-05-04

### TestBean.java 컨텍스트 닫음/LOGGER 사용/주석 제거

Resource leak: 'context' is never closed
- 리소스 누수: '컨텍스트'가 닫히지 않습니다.
- TestBean.java
- /egovframe-common-components/src/test/java/egovframework/com/bean
- line 32
- Java Problem

```java
((ClassPathXmlApplicationContext) context).close();
```

The value of the field TestBean.LOGGER is not used
- TestBean.LOGGER 필드의 값은 사용되지 않습니다.
- line 26

```java
LOGGER.debug("currentTimeMills={}", myBean.getCurrentTimeMills());
LOGGER.debug("currentTimeMills={}", myBean1.getCurrentTimeMills());
LOGGER.error("InterruptedException");
```

- https://youtu.be/98WEQmqpsxI
- https://github.com/GSITM2023/egovframe-common-components/commit/44ead38044d54a79c9da581aa46f9b9aeadfdf5b
- https://github.com/eGovFramework/egovframe-common-components/pull/91

### EgovComAbstractDAO.java @SuppressWarnings("rawtypes") 추가

ResultHandler is a raw type. References to generic type ResultHandler<T> should be parameterized
- ResultHandler는 원시 유형입니다. 일반 유형 ResultHandler<T>에 대한 참조는 매개변수화되어야 합니다.
- EgovComAbstractDAO.java
- /egovframe-common-components/src/main/java/egovframework/com/cmm/service/impl
- line 302
- Java Problem

```java
@SuppressWarnings("rawtypes")
```

- https://youtu.be/lBMBaEfLBNg
- https://github.com/GSITM2023/egovframe-common-components/commit/5b9591f44ef2184ae8a75345b5bc291863d2c215
- https://github.com/eGovFramework/egovframe-common-components/pull/92

### DefaultFileSaveManager.java EgovWebUtil import 사용 안 함

The import egovframework.com.cmm.EgovWebUtil is never used
- 가져오기 egovframework.com.cmm.EgovWebUtil이 사용되지 않음 DefaultFileSaveManager.java /egovframe-common-components/src/main/java/egovframework/com/utl/wed/filter line 32 Java 문제
- DefaultFileSaveManager.java
- /egovframe-common-components/src/main/java/egovframework/com/utl/wed/filter
- line 32
- Java Problem

```java
// import egovframework.com.cmm.EgovWebUtil;
```

- https://youtu.be/3l_iMrf9vNQ
- https://github.com/GSITM2023/egovframe-common-components/commit/2a74d37ea84ded1f414786b0bf5d3f540549bd05
- https://github.com/eGovFramework/egovframe-common-components/pull/93

## 2023-05-03

HashMap is a raw type. References to generic type HashMap<K,V> should be parameterized

EgovUtlJsonController.java

/egovframe-common-components/src/main/java/egovframework/com/utl/jso/web

line 113

Java Problem

- HashMap은 원시 유형입니다. 일반 유형 HashMap<K,V>에 대한 참조는 매개변수화되어야 합니다.

---

List is a raw type. References to generic type List<E> should be parameterized

DeptSchdulManageDao.java

/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl

line 38

Java Problem

- 목록은 원시 유형입니다. 제네릭 형식 List<E>에 대한 참조는 매개 변수화되어야 합니다.

---

The method list(String, Object) from the type EgovComAbstractDAO is deprecated
- EgovComAbstractDAO 유형의 list(String, Object) 메서드는 더 이상 사용되지 않습니다.

list()를 명명규칙에 맞춰 selectList()로 변경한다.

## 2023-05-02

GenericObjectPoolConfig is a raw type. References to generic type GenericObjectPoolConfig<T> should be parameterized

SmsBasicDBUtil.java

/egovframe-common-components/src/main/java/egovframework/com/cop/sms/service/impl

line 92

Java Problem

- GenericObjectPoolConfig는 원시 유형입니다. 제네릭 형식 GenericObjectPoolConfig<T>에 대한 참조는 매개 변수화되어야 합니다.

The method setTimeBetweenEvictionRunsMillis(long) from the type BaseObjectPoolConfig is deprecated
- BaseObjectPoolConfig 유형의 setTimeBetweenEvictionRunsMillis(long) 메서드는 더 이상 사용되지 않습니다.

Type safety: The expression of type GenericObjectPoolConfig needs unchecked conversion to conform to GenericObjectPoolConfig<PoolableConnection>
- 형식 안전성: GenericObjectPoolConfig 형식의 식은 GenericObjectPoolConfig<PoolableConnection>을 준수하기 위해 확인되지 않은 변환이 필요합니다.

## 2023-05-01

Collection is a raw type. References to generic type Collection<E> should be parameterized

EgovMybatisUtil.java

/egovframe-common-components/src/main/java/egovframework/com/cmm/util

line 50

Java Problem

- Add type arguments to 'Collection'
- Add type arguments to 'Map'
- logger.debug(""o={}"", o); 추가

## 2023-02-15

https://github.com/eGovFramework/egovframe-common-components/pull/79

- *.html, *.jsp 에서 onClick 을 onclick 으로 수정
- EgovAccessConfigTest 에서 import egovframework 를 import org.egovframe 으로 수정
- TestSessionURLPattern 에서
    - import egovframework 를 import org.egovframe 으로 수정
    - import egovframework.com.auth.session.EgovAccessConfigTest; 제거

## Problems 버그수정  계획

Description|Resource|Path|Location|Type
-|-|-|-|-
HashMap is a raw type. References to generic type HashMap<K,V> should be parameterized|EgovUtlJsonController.java|/egovframe-common-components/src/main/java/egovframework/com/utl/jso/web|line 113|Java Problem
HashMap is a raw type. References to generic type HashMap<K,V> should be parameterized|EgovUtlJsonController.java|/egovframe-common-components/src/main/java/egovframework/com/utl/jso/web|line 113|Java Problem
List is a raw type. References to generic type List<E> should be parameterized|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 38|Java Problem
List is a raw type. References to generic type List<E> should be parameterized|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 48|Java Problem
Resource leak: 'context' is never closed|TestBean.java|/egovframe-common-components/src/test/java/egovframework/com/bean|line 32|Java Problem
ResultHandler is a raw type. References to generic type ResultHandler<T> should be parameterized|EgovComAbstractDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/service/impl|line 302|Java Problem
The import egovframework.com.cmm.EgovWebUtil is never used|DefaultFileSaveManager.java|/egovframe-common-components/src/main/java/egovframework/com/utl/wed/filter|line 32|Java Problem
The import egovframework.com.cmm.EgovWebUtil is never used|EgovXMLDoc.java|/egovframe-common-components/src/main/java/egovframework/com/utl/sim/service|line 43|Java Problem
The import egovframework.com.cmm.service.EgovProperties is never used|CkImageSaver.java|/egovframe-common-components/src/main/java/egovframework/com/utl/wed/filter|line 41|Java Problem
The import egovframework.com.cmm.service.EgovProperties is never used|EgovFaqController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/faq/web|line 24|Java Problem
The import egovframework.com.cmm.service.EgovProperties is never used|TestLoadFile.java|/egovframe-common-components/src/test/java/egovframework/com/cmm/service|line 3|Java Problem
The import egovframework.com.cmm.service.EgovWhiteList is never used|TestWhiteListLink.java|/egovframe-common-components/src/test/java/egovframework/com/cmm/service|line 8|Java Problem
The import java.io.IOException is never used|EgovDataCryptoTest.java|/egovframe-common-components/src/test/java/egovframework/com/crypto/data|line 9|Java Problem
The import java.net.URLEncoder is never used|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 4|Java Problem
The import java.util.ArrayList is never used|AuthenticInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/interceptor|line 3|Java Problem
The import java.util.ArrayList is never used|TestCopyCollections.java|/egovframe-common-components/src/test/java/egovframework/code/security/copyobj|line 3|Java Problem
The import java.util.Iterator is never used|OAuthLogin.java|/egovframe-common-components/src/main/java/egovframework/com/ext/oauth/service|line 3|Java Problem
The import javax.servlet.ServletRequest is never used|TestTwitter.java|/egovframe-common-components/src/test/java/egovframework/com/uss/ion/tir|line 5|Java Problem
The import org.apache.commons.lang.StringUtils is never used|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 12|Java Problem
The import org.apache.commons.lang3.ObjectUtils is never used|DefaultItemReader.java|/egovframe-common-components/src/main/java/egovframework/com/ext/easybatch/item|line 41|Java Problem
The import org.apache.commons.lang3.ObjectUtils is never used|EgovBndtManageServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/bnt/service/impl|line 13|Java Problem
The import org.apache.commons.lang3.ObjectUtils is never used|EgovCcmZipManageController.java|/egovframe-common-components/src/main/java/egovframework/com/sym/ccm/zip/web|line 39|Java Problem
The import org.apache.commons.lang3.ObjectUtils is never used|EgovFileUploadUtil.java|/egovframe-common-components/src/main/java/egovframework/com/utl/fcc/service|line 12|Java Problem
The import org.apache.commons.lang3.ObjectUtils is never used|EgovMenuManageController.java|/egovframe-common-components/src/main/java/egovframework/com/sym/mnu/mpm/web|line 39|Java Problem
The import org.apache.commons.lang3.StringUtils is never used|OAuthLogin.java|/egovframe-common-components/src/main/java/egovframework/com/ext/oauth/service|line 5|Java Problem
The import org.junit.Assert.assertFalse is never used|TestMessage.java|/egovframe-common-components/src/test/java/egovframework/com/utl/message|line 4|Java Problem
The import org.junit.Ignore is never used|EgovDataCryptoTest.java|/egovframe-common-components/src/test/java/egovframework/com/crypto/data|line 18|Java Problem
The import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post is never used|TestController.java|/egovframe-common-components/src/test/java/egovframework/com/web|line 17|Java Problem
The import org.springframework.test.web.servlet.result.MockMvcResultHandlers.print is never used|TestController.java|/egovframe-common-components/src/test/java/egovframework/com/web|line 18|Java Problem
The import org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl is never used|TestController.java|/egovframe-common-components/src/test/java/egovframework/com/web|line 19|Java Problem
The import org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl is never used|TestController.java|/egovframe-common-components/src/test/java/egovframework/com/web|line 20|Java Problem
The import org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup is never used|TestController.java|/egovframe-common-components/src/test/java/egovframework/com/web|line 22|Java Problem
The import org.springframework.validation.BindException is never used|TestMessage.java|/egovframe-common-components/src/test/java/egovframework/com/utl/message|line 7|Java Problem
The import org.springframework.web.context.request.RequestContextHolder is never used|EgovFileDownloadController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 23|Java Problem
The import org.springframework.web.context.request.RequestContextHolder is never used|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 21|Java Problem
The import org.springframework.web.context.request.ServletRequestAttributes is never used|EgovFileDownloadController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 24|Java Problem
The import org.springframework.web.context.request.ServletRequestAttributes is never used|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 22|Java Problem
The import org.springframework.web.context.request.WebRequest is never used|EgovBindingInitializer.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 10|Java Problem
The import twitter4j.conf.ConfigurationBuilder is never used|TestTwitter.java|/egovframe-common-components/src/test/java/egovframework/com/uss/ion/tir|line 15|Java Problem
The import twitter4j.conf.Configuration is never used|TestTwitter.java|/egovframe-common-components/src/test/java/egovframework/com/uss/ion/tir|line 14|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 52|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 54|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 65|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 66|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 67|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 79|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 80|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 92|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 93|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 94|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 107|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 108|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 111|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 112|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 126|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 127|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 130|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 131|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 134|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 135|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 148|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 149|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 152|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 165|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 166|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 169|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 170|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 174|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 185|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 186|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 196|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 197|Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated|HTMLTagFilterTest.java|/egovframe-common-components/src/test/java/egovframework/com/filter|line 198|Java Problem
The method checkCharacterType(String) from the type RteGenericValidator is deprecated|PasswordValidationTest.java|/egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation|line 56|Java Problem
The method checkCharacterType(String) from the type RteGenericValidator is deprecated|PasswordValidationTest.java|/egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation|line 60|Java Problem
The method checkSeries(String) from the type RteGenericValidator is deprecated|PasswordValidationTest.java|/egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation|line 70|Java Problem
The method checkSeries(String) from the type RteGenericValidator is deprecated|PasswordValidationTest.java|/egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation|line 74|Java Problem
The method checkSeries(String) from the type RteGenericValidator is deprecated|PasswordValidationTest.java|/egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation|line 84|Java Problem
The method checkSeries(String) from the type RteGenericValidator is deprecated|PasswordValidationTest.java|/egovframe-common-components/src/test/java/egovframework/com/uss/umt/validation|line 88|Java Problem
The method decode(String) from the type URLDecoder is deprecated|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 99|Java Problem
The method decode(String) from the type URLDecoder is deprecated|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 142|Java Problem
The method encode(String) from the type URLEncoder is deprecated|EgovAtchFileIdPropertyEditor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 18|Java Problem
The method freeSpaceKb(String) from the type FileSystemUtils is deprecated|EgovFileSysMntrngServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/utl/sys/fsm/service/impl|line 111|Java Problem
The method getYear() from the type Date is deprecated|TestCopyDate.java|/egovframe-common-components/src/test/java/egovframework/code/security/copyobj|line 17|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|AllSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sam/service/impl|line 37|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|AuthorGroupDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/rgm/service/impl|line 39|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|AuthorManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/ram/service/impl|line 39|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|AuthorManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/ram/service/impl|line 97|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|AuthorRoleManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/ram/service/impl|line 40|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|CmmnClCodeManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/ccm/ccc/service/impl|line 47|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|CmmnCodeManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/ccm/cca/service/impl|line 48|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|CmmnDetailCodeManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/ccm/cde/service/impl|line 48|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|CnsltManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/cns/service/impl|line 65|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|CnsltManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/cns/service/impl|line 146|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptAuthorDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/drm/service/impl|line 39|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptAuthorDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/drm/service/impl|line 87|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 38|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 48|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 59|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 70|Java Problem
Unnecessary @SuppressWarnings("unchecked")|TroblReqstDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/tbm/tbr/service/impl|line 29|Java Problem
Unnecessary @SuppressWarnings("unchecked")|ReprtStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/rst/service/impl|line 106|Java Problem
Unnecessary @SuppressWarnings("unchecked")|ReprtStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/rst/service/impl|line 96|Java Problem
Unnecessary @SuppressWarnings("unchecked")|ReprtStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/rst/service/impl|line 86|Java Problem
Unnecessary @SuppressWarnings("unchecked")|ReprtStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/rst/service/impl|line 68|Java Problem
Unnecessary @SuppressWarnings("unchecked")|ReprtStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/rst/service/impl|line 40|Java Problem
Unnecessary @SuppressWarnings("unchecked")|OrgManageLdapDAO.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 125|Java Problem
Unnecessary @SuppressWarnings("unchecked")|NtwrkDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/sym/nwk/service/impl|line 31|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 163|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 151|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 128|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 105|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 82|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 59|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovUserInfManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/com/service/impl|line 36|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovOrgManageLdapServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 190|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovOrgManageLdapServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 167|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovOrgManageLdapServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 102|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovOrgManageLdapServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 87|Java Problem
Unnecessary @SuppressWarnings("unchecked")|EgovOrgManageLdapServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 69|Java Problem
Unnecessary @SuppressWarnings("unchecked")|DtaUseStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/dst/service/impl|line 97|Java Problem
Unnecessary @SuppressWarnings("unchecked")|DtaUseStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/dst/service/impl|line 59|Java Problem
Unnecessary @SuppressWarnings("unchecked")|DtaUseStatsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sts/dst/service/impl|line 31|Java Problem
Unnecessary @SuppressWarnings("unchecked")|DeptManageLdapDAO.java|/egovframe-common-components/src/main/java/egovframework/com/ext/ldapumt/service/impl|line 113|Java Problem
Unnecessary @SuppressWarnings("unchecked")|BkmkMenuManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/mnu/bmm/service/impl|line 122|Java Problem
Unnecessary @SuppressWarnings("unchecked")|BkmkMenuManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/mnu/bmm/service/impl|line 98|Java Problem
Unnecessary @SuppressWarnings("unchecked")|BkmkMenuManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/mnu/bmm/service/impl|line 74|Java Problem
Unnecessary @SuppressWarnings("unchecked")|BatchSchdulDao.java|/egovframe-common-components/src/main/java/egovframework/com/sym/bat/service/impl|line 97|Java Problem
Unnecessary @SuppressWarnings("unchecked")|BatchSchdulDao.java|/egovframe-common-components/src/main/java/egovframework/com/sym/bat/service/impl|line 73|Java Problem
Unnecessary @SuppressWarnings("deprecation")|EgovQnaController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/qna/web|line 256|Java Problem
Unnecessary @SuppressWarnings("deprecation")|EgovQnaController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/qna/web|line 231|Java Problem
Unnecessary @SuppressWarnings("deprecation")|EgovQnaController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/qna/web|line 193|Java Problem
Unnecessary @SuppressWarnings("deprecation")|EgovQnaController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/qna/web|line 129|Java Problem
Type safety: Unchecked cast from List<capture#4-of ?> to List<BoardMasterVO>|EgovBBSMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl|line 77|Java Problem
Type safety: Unchecked cast from List<capture#3-of ?> to List<BlogVO>|EgovBBSMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl|line 73|Java Problem
The value of the local variable resultDBInfo is not used|EgovSignupController.java|/egovframe-common-components/src/main/java/egovframework/com/ext/oauth/web|line 151|Java Problem
The value of the field EgovAuthorRoleController.LOGGER is not used|EgovAuthorRoleController.java|/egovframe-common-components/src/main/java/egovframework/com/sec/ram/web|line 41|Java Problem
The value of the field EgovAdministrationWordController.LOGGER is not used|EgovAdministrationWordController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/web|line 52|Java Problem
The value of the field AuthenticInterceptor.LOGGER is not used|AuthenticInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/interceptor|line 48|Java Problem
The type HandlerInterceptorAdapter is deprecated|IpObtainInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/interceptor|line 28|Java Problem
The type HandlerInterceptorAdapter is deprecated|IpObtainInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/interceptor|line 10|Java Problem
The type HandlerInterceptorAdapter is deprecated|FacebookUserInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/fbk/web|line 50|Java Problem
The type HandlerInterceptorAdapter is deprecated|FacebookUserInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/fbk/web|line 31|Java Problem
The type HandlerInterceptorAdapter is deprecated|EgovWebLogInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/wlg/web|line 31|Java Problem
The type HandlerInterceptorAdapter is deprecated|EgovWebLogInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/wlg/web|line 13|Java Problem
The type HandlerInterceptorAdapter is deprecated|AuthenticInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/interceptor|line 41|Java Problem
The type HandlerInterceptorAdapter is deprecated|AuthenticInterceptor.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/interceptor|line 17|Java Problem
The static field EgovFileMngController.cryptoService should be accessed in a static way|EgovFileMngController.java|/egovframe-common-components/src/main/java/egovframework/com/cmm/web|line 61|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|WebLogDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/wlg/service/impl|line 72|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|UserManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/umt/service/impl|line 73|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|UserLogDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/ulg/service/impl|line 60|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|SysLogDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/lgm/service/impl|line 62|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|StplatManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/sam/stp/service/impl|line 54|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|SndngMailDtlsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/ems/service/impl|line 36|Java Problem
The type FileSystemUtils is deprecated|EgovFileSysMntrngServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/utl/sys/fsm/service/impl|line 17|Java Problem
The type FileSystemUtils is deprecated|EgovFileSysMntrngServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/utl/sys/fsm/service/impl|line 111|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|RoleManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/rmt/service/impl|line 95|Java Problem
The value of the field EgovServerResrceMntrng.LOGGER is not used|EgovServerResrceMntrng.java|/egovframe-common-components/src/main/java/egovframework/com/utl/sys/srm/example|line 35|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|RoleManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/rmt/service/impl|line 49|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrRespondManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qrm/service/impl|line 47|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrRespondManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qrm/service/impl|line 37|Java Problem
The method setYear(int) from the type Date is deprecated|TestCopyDate.java|/egovframe-common-components/src/test/java/egovframework/code/security/copyobj|line 16|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrQestnManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qqm/service/impl|line 79|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrQestnManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qqm/service/impl|line 69|Java Problem
The value of the field TestBean.LOGGER is not used|TestBean.java|/egovframe-common-components/src/test/java/egovframework/com/bean|line 26|Java Problem
The method loadWhiteListNew(String) from the type EgovWhiteList is never used locally|EgovWhiteList.java|/egovframe-common-components/src/test/java/egovframework/com/cmm/service|line 58|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrQestnManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qqm/service/impl|line 48|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrQestnManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qqm/service/impl|line 38|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qmc/service/impl|line 67|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qmc/service/impl|line 47|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qmc/service/impl|line 37|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrItemManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qim/service/impl|line 58|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrItemManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qim/service/impl|line 48|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|QustnrItemManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qim/service/impl|line 38|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|PrivacyLogDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/plg/service/impl|line 33|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollResultDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opr/service/impl|line 34|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollPartcptnDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opp/service/impl|line 85|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollPartcptnDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opp/service/impl|line 66|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollPartcptnDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opp/service/impl|line 56|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollPartcptnDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opp/service/impl|line 36|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opm/service/impl|line 106|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opm/service/impl|line 97|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|OnlinePollManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/opm/service/impl|line 36|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|NoteTrnsmitDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/nts/service/impl|line 112|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|NoteTrnsmitDao.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/nts/service/impl|line 35|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|MberManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/umt/service/impl|line 90|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|MberManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/umt/service/impl|line 38|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|LoginLogDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sym/log/clg/service/impl|line 60|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|IndvdlSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sim/service/impl|line 80|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|IndvdlSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sim/service/impl|line 70|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|IndvdlSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sim/service/impl|line 49|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|IndvdlSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sim/service/impl|line 39|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|GroupManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/sec/gmt/service/impl|line 49|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EntrprsManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/umt/service/impl|line 98|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EntrprsManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/umt/service/impl|line 71|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovWordDicaryDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/wor/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovSiteDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/sit/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovRecomendSiteDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/rec/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovQnaDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/qna/service/impl|line 42|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovQnaDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/qna/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovOnlineManualDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/omm/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovNewsDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/nws/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovHpcmDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/hpc/service/impl|line 15|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovFaqDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/faq/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovEventCmpgnDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/ecc/service/impl|line 39|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovEventCmpgnDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/ecc/service/impl|line 15|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovCommuMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/cmy/service/impl|line 48|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovCommuMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/cmy/service/impl|line 15|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovCommuManageDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/cmy/service/impl|line 32|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovBBSMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl|line 77|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovBBSMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl|line 73|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovBBSMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl|line 45|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovBBSMasterDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/bbs/service/impl|line 18|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovArticleScrapDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/scp/service/impl|line 15|Java Problem
The value of the local variable inputFile is not used|TestPdfConverter2.java|/egovframe-common-components/src/test/java/egovframework/com/utl/sim|line 41|Java Problem
The value of the local variable outputFile is not used|TestPdfConverter2.java|/egovframe-common-components/src/test/java/egovframework/com/utl/sim|line 42|Java Problem
The static method getMyIPaddress() from the type EgovNetworkState should be accessed in a static way|TestPingNetwork.java|/egovframe-common-components/src/test/java/egovframework/com/utl/sim|line 38|Java Problem
The static method getPingTest(String) from the type EgovNetworkState should be accessed in a static way|TestPingNetwork.java|/egovframe-common-components/src/test/java/egovframework/com/utl/sim|line 40|Java Problem
The static method getMyPortScan() from the type EgovNetworkState should be accessed in a static way|TestPingNetwork.java|/egovframe-common-components/src/test/java/egovframework/com/utl/sim|line 42|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovArticleCommentDAO.java|/egovframe-common-components/src/main/java/egovframework/com/cop/cmt/service/impl|line 15|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|EgovAdministrationWordDAO.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/service/impl|line 14|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DiaryManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/dsm/service/impl|line 37|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 103|Java Problem
The method list(String, Object) from the type EgovComAbstractDAO is deprecated|DeptSchdulManageDao.java|/egovframe-common-components/src/main/java/egovframework/com/cop/smt/sdm/service/impl|line 92|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovAdministrationWordController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/web|line 81|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovAdministrationWordController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/web|line 120|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovAdministrationWordController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/web|line 137|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovAdministrationWordController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/awm/web|line 175|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovBndtManageServiceImpl.java|/egovframe-common-components/src/main/java/egovframework/com/uss/ion/bnt/service/impl|line 449|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovKnoPersonalController.java|/egovframe-common-components/src/main/java/egovframework/com/dam/per/web|line 341|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovOnlineManualController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/omm/web|line 79|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovOnlineManualController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/omm/web|line 118|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovOnlineManualController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/omm/web|line 136|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovOnlineManualController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olh/omm/web|line 175|Java Problem
At least one of the problems in category 'unused' is not analysed due to a compiler option being ignored|EgovQustnrTmplatManageController.java|/egovframe-common-components/src/main/java/egovframework/com/uss/olp/qtm/web|line 170|Java Problem
