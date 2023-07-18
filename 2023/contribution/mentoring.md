# 2023 전자정부 표준프레임워크 컨트리뷰션 멘토링 DAO 단위 테스트 추가

오프라인 대전, 서울

DAO 단위 테스트 추가를 한다.

- EgovArticleCommentDAOTest 댓글
  - https://github.com/LeeBaekHaeng/god.codegen/blob/main/god.com/src/test/java/egovframework/com/cop/cmt/service/impl/EgovArticleCommentDAOTest.java
  - https://github.com/LeeBaekHaeng/god.codegen/blob/main/god.com/src/test/java/egovframework/com/cop/cmt/service/impl/EgovArticleCommentDAO2Test.java
- EgovCommuBBSMasterDAO 게시판마스터
  - https://github.com/LeeBaekHaeng/god.codegen/blob/main/god.com/src/test/java/egovframework/com/cop/cmy/service/impl/EgovCommuBBSMasterDAOTest.java
- EgovCommuManageDAO 커뮤니티사용자
  - https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:cop:cmt:%EC%BB%A4%EB%AE%A4%EB%8B%88%ED%8B%B0%ED%9A%8C%EC%9B%90%EA%B4%80%EB%A6%AC
  - 커뮤니티 사용자 및 승인정보 관리를 위한 데이터 접근 클래스
  - 커뮤니티 사용자 및 승인정보 관리를 위한 DAO 단위 테스트
- EgovCommuMasterDAO 커뮤니티 속성
- EgovUserInfManageDAO 주소록관리
- SndngMailDetailDAO 메일발신관리
- SndngMailDtlsDAO 메일발신관리
- SndngMailRegistDAO 메일발신관리
- NcrdManageDAO 명함정보속성
- EgovArticleScrapDAO 스크랩

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
9|EgovCommuBBSMasterDAO||멘티1
10|EgovCommuManageDAO||멘티2
11|EgovCommuMasterDAO||멘티3
12|EgovUserInfManageDAO||멘티4
13|SndngMailDetailDAO||멘티5
14|SndngMailDtlsDAO||멘티6
15|SndngMailRegistDAO||멘티7
16|NcrdManageDAO||멘티8
17|EgovArticleScrapDAO||멘티9
18|SmsBasicDAO||
19|SmsDAO||
20|DeptJobDAO||
21|LeaderSchdulDAO||
22|MemoReprtDAO||
23|MemoTodoDAO||
24|WikMnthngReprtDAO||
25|BBSSatisfactionDAO||
26|TemplateManageDAO||
27|KnoAppraisalDAO||
28|MapMaterialDAO||
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

