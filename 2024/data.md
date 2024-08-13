# 공공데이터포털

공공데이터포털 API 샘플 프로젝트
- https://github.com/LeeBaekHaeng/god.codegen/tree/4.2.0/god.data

 [개발가이드] 공유서비스 개발 가이드라인
- https://www.data.go.kr/bbs/rcr/selectRecsroom.do?pageIndex=1&originId=PDS_0000000000000124&atchFileId=FILE_000000002244460&searchCondition3=&searchCondition2=2&cndCtgryLaword=Y&cndCtgryEdc=Y&cndCtgryBigdata=Y&cndCtgryStd=Y&cndCtgryNews=Y&cndCtgryContest=&cndCtgryEtc=Y&cndCtgryCardNews=&bindCndCtgry=PDTY01%2CPDTY02%2CPDTY03%2CPDTY04%2CPDTY05%2CPDTY06&sort-post=2&searchKeyword1=%EA%B0%9C%EB%B0%9C%EA%B0%80%EC%9D%B4%EB%93%9C&Laword=PDTY01&Edc=PDTY02&Bigdata=PDTY03&Std=PDTY04&News=PDTY05&Etc=PDTY06

## 공유서비스_개발가이드라인.hwp

### 서비스명 작성 기준
- 4쪽
- 국문 서비스명
  - ‘주제 + 처리행위’ + “서비스”
  - 주제는 “회원”, “주문”
  - 처리행위는 “관리”, “제어”, “가입”, “요청”, “조회”
  - 공통상세코드조회서비스
- 영문 서비스명
  - '동사 + 목적어‘ + “Service”
  - GetCmmnDetailCodeService

### 서비스 URL 작성 기준
- 5쪽
- /api/v1/data/cmmndetailcode

### 서비스 오퍼레이션 작성 기준
- 6쪽

오퍼레이션 유형|영문 오퍼레이션명|국문 오퍼레이션명
-|-|-
조회 (목록)|‘get’ + 목적어 + ‘List’|목적어 + ‘목록조회’
조회 (Item)|‘get’ +목적어+ ‘Item’|목적어 + ‘항목조회’
등록|‘add’＋목적어|목적어 + ‘등록’
변경/수정/제어|‘set’ +목적어|목적어 + ‘수정’
삭제|‘delete‘+목적어|목적어 + ‘삭제’
송신 (비동기)|‘send’+목적어|목적어 + ‘송신’
수신 (비동기)|‘receive’+목적어|목적어 + ‘수신’

오퍼레이션 유형|영문 오퍼레이션명|국문 오퍼레이션명
-|-|-
조회 (목록)|getCmmnDetailCodeList|공통상세코드목록조회
조회 (Item)|getCmmnDetailCodeItem|공통상세코드항목조회
등록|addCmmnDetailCode|공통상세코드등록
변경/수정/제어|setCmmnDetailCode|공통상세코드수정
삭제|deleteCmmnDetailCode|공통상세코드삭제
송신 (비동기)|sendCmmnDetailCode|공통상세코드송신
수신 (비동기)|receiveCmmnDetailCode|공통상세코드수신

### 요청 메시지 구조
- 21쪽
- ComMsgHeader
  - ServiceKey
  - RequestTime
  - CallBackURI
  - RequestMsgID
- MsgHeader
- MsgBody

### 응답 메시지 구조
- 23쪽
- ComMsgHeader
  - RequestMsgID
  - ResponseTime
  - ResponseMsgID
  - SuccessYN
  - ReturnCode
  - ErrMsg
- MsgHeader
- MsgBody
