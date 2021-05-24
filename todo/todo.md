# To Do

## 전자정부 표준프레임워크 공통컴포넌트 3.10.0 단위 테스트
1. <s>CmmUseDAO</s>
2. <s>EgovComAbstractDAO</s>
3. <s>FileManageDAO</s>
4. <s>AddressBookDAO</s>
5. BBSAddedOptionsDAO
6. EgovArticleDAO
7. EgovBBSMasterDAO
8. EgovArticleCommentDAO
9. EgovCommuBBSMasterDAO
10. EgovCommuManageDAO
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
