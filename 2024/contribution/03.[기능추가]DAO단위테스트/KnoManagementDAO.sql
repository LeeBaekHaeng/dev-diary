SELECT /* KnoManagementDAO.selectList 지식정보 조회(멀티건) */
       A.*
  FROM COMTNDAMKNOIFM A /* 지식정보 */
 WHERE 1 = 1
 ORDER by KNWLDG_ID DESC /* `KNWLDG_ID` char(20) NOT NULL COMMENT '지식ID', */
;
