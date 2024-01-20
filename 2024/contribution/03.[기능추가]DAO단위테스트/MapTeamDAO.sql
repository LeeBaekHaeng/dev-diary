SELECT /* MapTeamDAO.selectList 지식맵(조직별) 조회(멀티건) */
       A.*
  FROM COMTNDAMMAPTEAM A /* 지식맵(조직별) */
 WHERE 1 = 1
 ORDER by ORGNZT_ID DESC /* `ORGNZT_ID` char(20) NOT NULL COMMENT '조직ID', */
;
