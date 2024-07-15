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
```java
 *   2024.07.13  이백행          Exception 제거
```

## 오류(버그) 수정-시큐어코딩-PMD-30. 로그인정책관리

[전자정부 표준프레임워크 표준 Inspection 룰셋 적용하기](https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.2:imp:inspection#%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80_%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC_%ED%91%9C%EC%A4%80_inspection_%EB%A3%B0%EC%85%8B_%EC%A0%81%EC%9A%A9%ED%95%98%EA%B8%B0)
- 표준 Inspection 룰셋 한글/영문판의 압축파일 : 개발환경 4.2 이상 버전 사용
- egovinspectionrules-4.2.zip

get
```java
		if (delYn != null) {
			return Arrays.stream(delYn).toArray(String[]::new);
		}
		return null;
```

set
```java
		if (delYn != null) {
			this.delYn = Arrays.stream(delYn).toArray(String[]::new);
		}
```

```java
	/**
	 * @return the delYn
	 */
	public String[] getDelYn() {
		if (delYn != null) {
			return Arrays.stream(delYn).toArray(String[]::new);
		}
		return null;
	}

	/**
	 * @param delYn the delYn to set
	 */
	public void setDelYn(String[] delYn) {
		if (delYn != null) {
			this.delYn = Arrays.stream(delYn).toArray(String[]::new);
		}
	}
```
