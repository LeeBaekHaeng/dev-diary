# 2023 전자정부 표준프레임워크 컨트리뷰션 참가

https://github.com/GSITM2023/egovframe-common-components

https://github.com/eGovFramework/egovframe-common-components

https://github.com/eGovFramework/egovframe-common-components/pulls

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
