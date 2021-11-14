# To Do

## 2021 전자정부 표준프레임워크 컨트리뷰션
- 오타 수정
- 버그 수정
- 기능 추가
- 개선필요부분

## 개발표준가이드_v1.0.pdf

### 2.4 jsp
#### 2.4.1 명명규칙

|Postfix명|설명|적용|예|비고|
|-|-|-|-|-|
|List|목록|EgovChangeRequestList|||
|Regist|등록|EgovChangeRequestRegist|||
|Detail|상세|EgovChangeRequestDetail|||
|Updt|수정|EgovChangeRequestUpdt|||
|Popup|팝업|EgovChangeRequestPopup|||
|Search|조회|EgovChangeRequestSearch|||

- jsp의 각 컨트롤의 변수명에 대한 명명규칙은 다음과 같다.

|컨트롤|Prefix명|적용|예|비고|
|-|-|-|-|-|
|버튼|btn|회원등록버튼 --> btnRegiUsr|||
|이미지|img|검색버튼 --> imgSearch|||
|Text|txt|사용자이름 Input --> txtName|||
|TextArea|txa|내용 Textarea --> txaContent|||
|Select|sel|Select에서 옵션선택 --> selOption1|||
|ListBox|lst|List에서 메뉴선택 --> lstMenu01|||
|Radio|rdo|Radio에서 타입선택 --> rdoTypeA|||
|CheckBox|chk|체크박스로 옵션선택 --> chkOption1|||

### 3.2.4 java method
- 구분, 유형, 동사(prefix), 비고
- business 처리 관련
	- 내용검증 validate
	- 조건확인 check
	- 검색 search
	- 연계 contact
	- action action
	- 파일관리-읽기 read
	- 파일관리-쓰기 write
- data 처리관련(Controller, Business , DAO 공통)
	- 등록 insert
	- 조회(단건) select
	- 조회(멀티건) select postfix로 List를 사용
	- 수정 update
	- 삭제 delete
	- 등록/수정 merge
	- 등록/수정/삭제 multi 작업을 동시에 수행하는 경우
- Value Object(model)
	- 값읽기 get
	- 값설정 set

|구분|유형|동사(prefix)|비고|
|-|-|-|-|
|business 처리 관련|내용검증|validate||
|business 처리 관련|조건확인|check||
|business 처리 관련|검색|search||
|business 처리 관련|연계|contact||
|business 처리 관련|action|action||
|business 처리 관련|파일관리-읽기|read||
|business 처리 관련|파일관리-쓰기|write||
|&nbsp;||||
|data 처리관련(Controller, Business , DAO 공통)|등록|insert||
|data 처리관련(Controller, Business , DAO 공통)|조회(단건)|select||
|data 처리관련(Controller, Business , DAO 공통)|조회(멀티건)|select|postfix로 List를 사용|
|data 처리관련(Controller, Business , DAO 공통)|수정|update||
|data 처리관련(Controller, Business , DAO 공통)|삭제|delete||
|data 처리관련(Controller, Business , DAO 공통)|등록/수정|merge||
|data 처리관련(Controller, Business , DAO 공통)|등록/수정/삭제|multi|작업을 동시에 수행하는 경우|
|&nbsp;||||
|Value Object(model)|값읽기|get||
|Value Object(model)|값설정|set||

## 전자정부 표준프레임워크 공통컴포넌트 3.10.0 단위 테스트
1. <s>CmmUseDAO</s>
2. <s>EgovComAbstractDAO</s>
3. <s>FileManageDAO</s>
4. <s>AddressBookDAO</s>
5. <s>BBSAddedOptionsDAO</s>
6. <s>EgovArticleDAO</s>
7. <s>EgovBBSMasterDAO</s>
8. <s>EgovArticleCommentDAO</s>
9. <s>EgovCommuBBSMasterDAO</s>
10. <s>EgovCommuManageDAO</s>
11. EgovCommuMasterDAO
12. EgovUserInfManageDAO
13. SndngMailDetailDAO
14. SndngMailDtlsDAO
15. SndngMailRegistDAO
16. NcrdManageDAO
17. EgovArticleScrapDAO
18. SmsBasicDAO
19. SmsDAO
20. DeptJobDAO
21. LeaderSchdulDAO
22. MemoReprtDAO
23. MemoTodoDAO
24. WikMnthngReprtDAO
25. BBSSatisfactionDAO
26. TemplateManageDAO
27. KnoAppraisalDAO
28. MapMaterialDAO
29. MapTeamDAO
30. KnoManagementDAO
31. KnoPersonalDAO
32. KnoSpecialistDAO
33. DeptManageLdapDAO
34. OrgManageLdapDAO
35. UserManageLdapDAO
36. DeptAuthorDAO
37. GroupManageDAO
38. AuthorManageDAO
39. AuthorRoleManageDAO
40. AuthorGroupDAO
41. RoleManageDAO
42. CntcInsttDAO
43. CntcMessageDAO
44. CntcSttusDAO
45. SystemCntcDAO
46. BbsStatsDAO
47. ConectStatsDAO
48. DtaUseStatsDAO
49. ReprtStatsDAO
50. ScrinStatsDAO
51. UserStatsDAO
52. RestdeManageDAO
53. AdministCodeRecptnDAO
54. AdministCodeManageDAO
55. CmmnCodeManageDAO
56. CmmnClCodeManageDAO
57. CmmnDetailCodeManageDAO
58. InsttCodeRecptnDAO
59. RdnmadZipDAO
60. ZipManageDAO
61. LoginLogDAO
62. SysLogDAO
63. PrivacyLogDAO
64. SysHistoryDAO
65. TrsmrcvLogDAO
66. UserLogDAO
67. WebLogDAO
68. BkmkMenuManageDAO
69. MenuCreateManageDAO
70. MenuManageDAO
71. SiteMapngDAO
72. ProgrmManageDAO
73. NtwrkDAO
74. ServerDAO
75. TroblProcessDAO
76. TroblReqstDAO
77. LoginPolicyDAO
78. LoginDAO
79. EgovCmtManageDAO
80. AnnvrsryManageDAO
81. BannerDAO
82. BndtManageDAO
83. CtsnnManageDAO
84. EgovEventCmpgnDAO
85. EventManageDAO
86. IntnetSvcGuidanceDAO
87. InfrmlSanctnDAO
88. LoginScrinImageDAO
89. MainImageDAO
90. MtgPlaceManageDAO
91. NotificationDAO
92. EgovNewsDAO
93. PopupManageDAO
94. EgovRecomendSiteDAO
95. EgovRoughMapDAO
96. RwardManageDAO
97. EgovSiteDAO
98. UserAbsnceDAO
99. VcatnManageDAO
100. IndvdlYrycDAO
101. EgovIndvdlPgeDAO
102. EgovAdministrationWordDAO
103. EgovFaqDAO
104. EgovHpcmDAO
105. EgovOnlineManualDAO
106. EgovQnaDAO
107. EgovWordDicaryDAO
108. CnsltManageDAO
109. CpyrhtPrtcPolicyDAO
110. StplatManageDAO
111. DeptManageDAO
112. EntrprsManageDAO
113. MberManageDAO
114. UserManageDAO
115. PrntngOutptDAO
116. FileSysMntrngDAO
117. HttpMonDAO
118. NtwrkSvcMntrngDAO
119. ProcessMonDAO
120. ProxySvcDAO
121. ServerResrceMntrngDAO
122. SynchrnServerDAO

TodoTest.java
```java
package egovframework.com.test;

import java.io.File;
import java.util.Collection;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.SystemUtils;
import org.junit.Test;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class TodoTest {

	@Test
	public void test() {
		String pathname = "C:\\EGOVFRAME-3.10.0\\git\\egovframe-common-components\\src\\main\\java\\egovframework\\com";

		final File directory = new File(pathname);
		final String[] extensions = { "java" };
		final boolean recursive = true;

		Collection<File> listFiles = FileUtils.listFiles(directory, extensions, recursive);
		int size = listFiles.size();

		StringBuffer sb = new StringBuffer();
		sb.append(SystemUtils.LINE_SEPARATOR);

		int i = 1;

		for (File listFile : listFiles) {
			String name = listFile.getName();
			if (name.endsWith("DAO.java")) {
				sb.append(i);
				sb.append(". ");
				sb.append(name.replaceAll(".java", ""));
				sb.append(SystemUtils.LINE_SEPARATOR);

				i++;
			}
		}

		log.debug(sb.toString());
		log.debug("size={}", size);
	}

}
```
