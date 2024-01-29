SELECT /* MapTeamDAO.selectList 지식맵(조직별) 조회(멀티건) */
       A.*
  FROM COMTNDAMMAPTEAM A /* 지식맵(조직별) */
 WHERE 1 = 1
 ORDER by ORGNZT_ID DESC /* `ORGNZT_ID` char(20) NOT NULL COMMENT '조직ID', */
;

SELECT /* MapTeamDAO.selectMapTeamList */ A.ORGNZT_ID , A.ORGNZT_NM , DATE_FORMAT(A.CL_DE,'%Y-%m-%d') 
CL_YMD , A.KNWLDG_URL KNO_URL FROM COMTNDAMMAPTEAM A WHERE 1 = 1
-- AND A.ORGNZT_NM like CONCAT('%', 'test 조직명 202401', '%')
-- AND A.ORGNZT_NM like CONCAT('%', 'TEST 조직명 202401', '%')
-- AND BINARY(A.ORGNZT_NM) like CONCAT('%', 'test 조직명 202401', '%')
AND BINARY(A.ORGNZT_NM) like CONCAT('%', 'TEST 조직명 202401', '%')
LIMIT 10 OFFSET 0 
;
