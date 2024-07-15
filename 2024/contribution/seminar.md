# Exception 제거하기

- 오류(버그) 수정
  - 시큐어코딩
    - Exception 제거
    - PMD
- 기능 추가
  - DAO단위테스트
  - 셀레늄단위테스트

## 환경설정
![save](save.png)

## 오류(버그) 수정-시큐어코딩-Exception 제거-30. 로그인정책관리

URL
```
http://localhost:8080/egovframework-all-in-one/uat/uap/selectLoginPolicyList.do
```

@RequestMapping
```
/uat/uap/selectLoginPolicyList.do
```

package
```
egovframework.com.uat.uap.web
```

컨트롤러
```
EgovLoginPolicyController
```

브랜치
```
2024/secure-coding/EgovLoginPolicyController
```

주석
```
 *   2024.07.13  이백행          Exception 제거
```
