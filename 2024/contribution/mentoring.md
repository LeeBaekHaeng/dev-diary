# 2024년 전자정부 표준프레임워크 컨트리뷰션 멘토링

시큐어코딩과 단위 테스트를 멘토링한다.

1. 시큐어코딩 Exception 제거
2. 시큐어코딩 PMD 진단/조치
3. 셀레늄 단위 테스트
4. DAO 단위 테스트

[30. 로그인정책관리](#30-로그인정책관리)

[60. 권한관리](#60-권한관리)

[80. 그룹관리](#80-그룹관리)

[90. 롤관리](#90-롤관리)

[100. 부서권한관리](#100-부서권한관리)

[110. 모바일운전면허증](#110-모바일운전면허증)

## 30. 로그인정책관리

http://localhost:8080/egovframework-all-in-one/uat/uap/selectLoginPolicyList.do

Search
- Ctrl + H
```
/uat/uap/selectLoginPolicyList.do
```

1. 시큐어코딩 Exception 제거

브랜치 생성
```
2024/pmd/EgovLoginPolicyController
```

개정이력 추가
```
 *   2024.07.26  이백행          시큐어코딩 Exception 제거
```

Find/Replace
- Ctrl + F
```
throws Exception
```

커밋

```
30. 로그인정책관리 시큐어코딩 Exception 제거
```

```
EgovLoginPolicyController 시큐어코딩 Exception 제거
```

```
EgovLoginPolicyService Source > Format
```

```
EgovLoginPolicyService 시큐어코딩 Exception 제거
```

```
EgovLoginPolicyServiceImpl Source > Format
```

```
EgovLoginPolicyServiceImpl 시큐어코딩 Exception 제거
```

```
LoginPolicyDAO Source > Format
```

```
LoginPolicyDAO 시큐어코딩 Exception 제거
```

https://github.com/GSITM2023/egovframe-common-components-2024/commits/2024/pmd/EgovLoginPolicyController/

2. 시큐어코딩 PMD 진단/조치

3. 셀레늄 단위 테스트

4. DAO 단위 테스트

## 60. 권한관리

## 80. 그룹관리

## 90. 롤관리

## 100. 부서권한관리

## 110. 모바일운전면허증
