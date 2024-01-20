# 2024년 전자정부 표준프레임워크 컨트리뷰션 멘토링

누가: 이백행 멘토, 멘티

언제: 매주 수요일 오후 1시

어디서: 오프라인 정부대전청사 근처 스터디룸, 서울역 근처 스터디룸

무엇을: 보안 취약점과 단위 테스트를

어떻게: 시큐어 코딩 버그수정, 셀레늄/DAO 단위 테스트 기능추가

왜: 보안 취약점을 제거하고, 소스 코드의 특정 모듈이 의도된 대로 정확히 작동하는지 검증하기 위해

참여분야: 오타수정, 버그수정, 기능추가, 개선의견 제시 등 모든분야

## 01.[버그수정]시큐어 코딩
- 소프트웨어 개발 보안
- 소프트웨어 개발 보안 또는 시큐어 코딩이란 안전한 소프트웨어 개발을 위해 소스 코드 등에 존재할 수 있는 잠재적인 보안 취약점을 제거하고, 보안을 고려하여 기능을 설계 및 구현하는 등 소프트웨어 개발 과정에서 지켜야 할 일련의 보안 활동을 말한다.
  - Exception 제거
  - Format source code

## 02.[기능추가]셀레늄 단위 테스트
- 유닛 테스트
- 유닛 테스트는 컴퓨터 프로그래밍에서 소스 코드의 특정 모듈이 의도된 대로 정확히 작동하는지 검증하는 절차다. 즉, 모든 함수와 메소드에 대한 테스트 케이스를 작성하는 절차를 말한다.

## 03.[기능추가]DAO 단위 테스트
- Format source code
- Exception 제거
- insert, update, delete 메서드 return int 로 수정
- 불필요한 형변환 제거
- 개발표준가이드대로 메서드 순서 수정
  1. 등록 insert
  2. 조회(단건) select
  3. 조회(멀티건) selectList
  4. 조회(멀티건) 전체건수 selectListTotCnt
  5. 수정 update
  6. 삭제 delete
- @Repository value를 제거해서 타입 세이프하게
  - @Repository("MapTeamDAO") 를 @Repository 로 수정

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
29|MapTeamDAO|[기능추가][DAO단위테스트]지식맵(조직별) MapTeamDAO 2024-02-01 ~ 2024-02-07|LeeBaekHaeng
30|KnoManagementDAO|[기능추가][DAO단위테스트]지식정보 KnoManagementDAO 2024-02-01 ~ 2024-02-07|JuRepia
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
