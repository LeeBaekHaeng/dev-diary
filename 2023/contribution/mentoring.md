# 2023 전자정부 표준프레임워크 컨트리뷰션 멘토링 DAO 단위 테스트 추가

## 2023-08-11

EgovUserInfManageDAO

협업 활용 사용자 정보 조회를 위한 데이터 접근 클래스

협업 활용 사용자 정보 조회를 위한 데이터 접근 클래스 단위 테스트

EgovUserInfManageDAOTest 협업 활용 사용자 정보 조회를 위한 데이터 접근 클래스 단위 테스트

EgovUserInfManageDAO.selectUserList 사용자 정보에 대한 목록을 조회한다.

EgovUserInfManageDAO.selectUserListCnt 사용자 정보에 대한 목록 전체 건수를 조회한다.

EgovUserInfManageDAO.selectCmmntyUserList 커뮤니티 사용자 목록을 조회한다.

EgovUserInfManageDAO.selectCmmntyUserListCnt 커뮤니티 사용자 목록에 대한 전체 건수를 조회한다.

EgovUserInfManageDAO.selectCmmntyMngrList 커뮤니티 관리자 목록을 조회한다.

EgovUserInfManageDAO.selectCmmntyMngrListCnt 커뮤니티 관리자 목록에 대한 전체 건수를 조회한다.

이백행

SmsDAO.selectSmsInfs 문자메시지 목록을 조회한다.

SmsDAO.selectSmsInfsCnt 문자메시지 목록 숫자를 조회한다

SmsDAO.selectSmsInf 문자메시지에 대한 상세정보를 조회한다.

SmsDAO.selectSmsRecptnInfs 문자메시지 수신 및 결과 목록을 조회한다.

SmsDAO.updateSmsRecptnInf 문자메시지 전송 결과 수신을 처리한다.

## 할 일

깃허브 프로젝트 DAO 단위 테스트 추가
- https://github.com/orgs/GSITM2023/projects/2

주레피의 공통프레임워크 컨트리뷰션(멘토링) 진행 내용
- https://m.blog.naver.com/dhan0213/223172513100

오프라인 대전, 서울

DAO 단위 테스트 추가를 한다.

- EgovArticleCommentDAOTest 댓글 이백행
  - https://github.com/LeeBaekHaeng/god.codegen/blob/main/god.com/src/test/java/egovframework/com/cop/cmt/service/impl/EgovArticleCommentDAOTest.java
  - https://github.com/LeeBaekHaeng/god.codegen/blob/main/god.com/src/test/java/egovframework/com/cop/cmt/service/impl/EgovArticleCommentDAO2Test.java
- EgovCommuBBSMasterDAO 게시판마스터 JuRepia
  - https://github.com/LeeBaekHaeng/god.codegen/blob/main/god.com/src/test/java/egovframework/com/cop/cmy/service/impl/EgovCommuBBSMasterDAOTest.java
- EgovCommuManageDAO 커뮤니티사용자 JuRepia
  - https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:cop:cmt:%EC%BB%A4%EB%AE%A4%EB%8B%88%ED%8B%B0%ED%9A%8C%EC%9B%90%EA%B4%80%EB%A6%AC
  - 커뮤니티 사용자 및 승인정보 관리를 위한 데이터 접근 클래스
  - 커뮤니티 사용자 및 승인정보 관리를 위한 DAO 단위 테스트
- EgovCommuMasterDAO 커뮤니티 속성 JuRepia
- EgovUserInfManageDAO 주소록관리 JuRepia
- SndngMailDetailDAO 메일발신관리 JuRepia
- SndngMailDtlsDAO 메일발신관리 JuRepia
- SndngMailRegistDAO 메일발신관리 JuRepia
- NcrdManageDAO 명함정보속성 JuRepia
- EgovArticleScrapDAO 스크랩 JuRepia

번호|대상 DAO|DAO 단위 테스트|컨트리뷰터
-|-|-|-
1|CmmUseDAO|CmmUseDAOTest_selectCmmCodeDetail.java|이백행
2|EgovComAbstractDAO||
3|FileManageDAO|FileManageDAOTest_insertFileInfs.java|이백행
4|AddressBookDAO|AddressBookDAOTest_insertAdressBook.java|이백행
5|BBSAddedOptionsDAO|BBSAddedOptionsDAOTest_insertAddedOptionsInf.java|이백행
6|EgovArticleDAO|EgovArticleDAOTest_insertArticle.java|이백행
7|EgovBBSMasterDAO|EgovBBSMasterDAOTest_insertBBSMasterInf.java|이백행
8|EgovArticleCommentDAO||이백행
9|EgovCommuBBSMasterDAO||멘티1 JuRepia
10|EgovCommuManageDAO||멘티2 JuRepia
11|EgovCommuMasterDAO||멘티3 JuRepia
12|EgovUserInfManageDAO||멘티4 JuRepia
13|SndngMailDetailDAO||멘티5 JuRepia
14|SndngMailDtlsDAO||멘티6 JuRepia
15|SndngMailRegistDAO||멘티7 JuRepia
16|NcrdManageDAO||멘티8 JuRepia
17|EgovArticleScrapDAO||멘티9 JuRepia
18|SmsBasicDAO||
19|SmsDAO||
20|DeptJobDAO||
21|LeaderSchdulDAO||danheean
22|MemoReprtDAO||LeeBaekHaeng
23|MemoTodoDAO|[기능추가][DAO단위테스트] 메모할일정보 MemoTodoDAO 2023-12-02 ~ 2023-12-11|LeeBaekHaeng
24|WikMnthngReprtDAO|[기능추가][DAO단위테스트] 메모보고관리 WikMnthngReprtDAO 2023-12-07 ~|danheean
25|BBSSatisfactionDAO|[기능추가][DAO단위테스트] 만족도 BBSSatisfactionDAO 2023-12-12 ~ 2023-12-20|LeeBaekHaeng
26|TemplateManageDAO|[기능추가][DAO단위테스트] 템플릿 TemplateManageDAO 2023-12-21 ~ 2024-01-01|LeeBaekHaeng
27|KnoAppraisalDAO|[기능추가][DAO단위테스트] 지식평가관리 KnoAppraisalDAO 2024-01-02 ~ 2024-01-06|LeeBaekHaeng
28|MapMaterialDAO|[기능추가][DAO단위테스트]지식맵(유형별) MapMaterialDAO 2024-01-08 ~ 2024-01-17|LeeBaekHaeng
29|MapTeamDAO||
30|KnoManagementDAO||
31|KnoPersonalDAO||
32|KnoSpecialistDAO||
33|DeptManageLdapDAO||
34|OrgManageLdapDAO||
35|UserManageLdapDAO||
36|DeptAuthorDAO||
37|GroupManageDAO||
38|AuthorManageDAO||
39|AuthorRoleManageDAO||
40|AuthorGroupDAO||
41|RoleManageDAO||
42|SvcDAO||
43|TrxInfoDAO||
44|CntcInsttDAO||
45|CntcMessageDAO||
46|CntcSttusDAO||
47|SystemCntcDAO||
48|BbsStatsDAO||
49|ConectStatsDAO||
50|DtaUseStatsDAO||
51|ReprtStatsDAO||
52|ScrinStatsDAO||
53|UserStatsDAO||
54|RestdeManageDAO||
55|AdministCodeRecptnDAO||
56|AdministCodeManageDAO||
57|CmmnCodeManageDAO||
58|CmmnClCodeManageDAO||
59|CmmnDetailCodeManageDAO||
60|InsttCodeRecptnDAO||
61|RdnmadZipDAO||
62|ZipManageDAO||
63|LoginLogDAO||
64|SysLogDAO||
65|PrivacyLogDAO||
66|SysHistoryDAO||
67|TrsmrcvLogDAO||
68|UserLogDAO||
69|WebLogDAO||
70|BkmkMenuManageDAO||
71|MenuCreateManageDAO||
72|MenuManageDAO||
73|SiteMapngDAO||
74|ProgrmManageDAO||
75|NtwrkDAO||
76|ServerDAO||
77|TroblProcessDAO||
78|TroblReqstDAO||
79|LoginPolicyDAO||
80|EgovOnepassDAO||
81|LoginDAO||
82|EgovCmtManageDAO||
83|AnnvrsryManageDAO||
84|BannerDAO||
85|BndtManageDAO||
86|CtsnnManageDAO||
87|EgovEventCmpgnDAO||
88|EventManageDAO||
89|IntnetSvcGuidanceDAO||
90|InfrmlSanctnDAO||
91|LoginScrinImageDAO||
92|MainImageDAO||
93|MtgPlaceManageDAO||
94|NotificationDAO||
95|EgovNewsDAO||
96|PopupManageDAO||
97|EgovRecomendSiteDAO||
98|EgovRoughMapDAO||
99|RwardManageDAO||
100|EgovSiteDAO||
101|UserAbsnceDAO||
102|VcatnManageDAO||
103|IndvdlYrycDAO||
104|EgovIndvdlPgeDAO||
105|EgovAdministrationWordDAO||
106|EgovFaqDAO||
107|EgovHpcmDAO||
108|EgovOnlineManualDAO||
109|EgovQnaDAO||
110|EgovWordDicaryDAO||
111|CnsltManageDAO||
112|CpyrhtPrtcPolicyDAO||
113|StplatManageDAO||
114|DeptManageDAO||
115|EntrprsManageDAO||
116|MberManageDAO||
117|UserManageDAO||
118|PrntngOutptDAO||
119|FileSysMntrngDAO||
120|HttpMonDAO||
121|NtwrkSvcMntrngDAO||
122|ProcessMonDAO||
123|ProxySvcDAO||
124|ServerResrceMntrngDAO||
125|SynchrnServerDAO||

## DAO 단위테스트 2023-11

https://github.com/orgs/GSITM2023/projects/5

EgovArticleDAOTest_JavaParser

```java
File file = new File("src\\main\\java\\egovframework\\com\\cop\\smt\\lsm\\service\\impl\\LeaderSchdulDAO.java");

Path path = FileSystems.getDefault().getPath("src/main/java/egovframework/com/cop/smt/lsm/service/impl/LeaderSchdulDAO.java");

Path path = FileSystems.getDefault().getPath("src/main/java/egovframework/com/cop/smt/lsm/service/impl", "LeaderSchdulDAO.java");

Path path = FileSystems.getDefault().getPath("src/main/java/egovframework/com/cop/smt/mrm/service/impl/MemoReprtDAO.java");

Optional<ClassOrInterfaceDeclaration> classEgovArticleDAO = compilationUnit.getClassByName(compilationUnit.getPrimaryTypeName().get());
```

LeaderSchdulDAO danheean

간부일정에 대한 DAO 클래스를 정의한다.

```
LeaderSchdulDAO.selectEmplyrList
LeaderSchdulDAO.selectEmplyrListCnt
LeaderSchdulDAO.selectLeaderSchdulList
LeaderSchdulDAO.selectLeaderSchdul
LeaderSchdulDAO.updateLeaderSchdul
LeaderSchdulDAO.insertLeaderSchdul
LeaderSchdulDAO.insertLeaderSchdulDe
LeaderSchdulDAO.deleteLeaderSchdul
LeaderSchdulDAO.deleteLeaderSchdulDe
LeaderSchdulDAO.selectLeaderSttusList
LeaderSchdulDAO.selectLeaderSttusListCnt
LeaderSchdulDAO.selectLeaderSttus
LeaderSchdulDAO.updateLeaderSttus
LeaderSchdulDAO.insertLeaderSttus
LeaderSchdulDAO.selectLeaderSttusCheck
LeaderSchdulDAO.deleteLeaderSttus
```

MemoReprtDAO LeeBaekHaeng

메모보고에 대한 DAO 클래스를 정의한다.

```
MemoReprtDAO.selectReportrList
MemoReprtDAO.selectReportrListCnt
MemoReprtDAO.selectWrterClsfNm
MemoReprtDAO.selectMemoReprtList
MemoReprtDAO.selectMemoReprt
MemoReprtDAO.readMemoReprt
MemoReprtDAO.updateMemoReprt
MemoReprtDAO.updateMemoReprtDrctMatter
MemoReprtDAO.insertMemoReprt
MemoReprtDAO.deleteMemoReprt
MemoReprtDAO.selectMemoReprtListCnt
```

코드 정리
- throws Exception 제거
- return (Integer) 등 형변환 (Integer) 제거
- insert/update/delete 반환타입 void 에서 int 로 수정
