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

EgovLoginPolicyController

AtLeastOneConstructor

```java
@RequiredArgsConstructor
```

```
AtLeastOneConstructor 적어도 하나의 생성자
```

AvoidDuplicateLiterals

```
	/**
	 * 로그인 정책
	 */
	private static final String LOGIN_POLICY = "loginPolicy";

	/**
	 * 로그인 정책 VO
	 */
	private static final String LOGIN_POLICY_VO = "loginPolicyVO";

	/**
	 * 메시지
	 */
	private static final String MESSAGE = "message";
```

```
AvoidDuplicateLiterals 중복 리터럴 방지
```

CommentDefaultAccessModifier

```
CommentDefaultAccessModifier 주석 기본 액세스 수정자
```

CommentRequired

```
CommentRequired 댓글 필수
```

ControlStatementBraces

```
ControlStatementBraces 제어문 중괄호
```

LiteralsFirstInComparisons

```
LiteralsFirstInComparisons 비교에서 리터럴이 먼저임
```

LocalVariableCouldBeFinal

```
LocalVariableCouldBeFinal 지역 변수가 최종일 수 있음
```

LongVariable 긴 변수 TODO

LooseCoupling

```
LooseCoupling 느슨한 결합
```

MethodArgumentCouldBeFinal

```
MethodArgumentCouldBeFinal 메서드 인수가 최종일 수 있음
```

OnlyOneReturn 단 한 번의 반품 TODO

ShortVariable

```
ShortVariable 짧은 변수
```

3. 셀레늄 단위 테스트

4. DAO 단위 테스트

## 60. 권한관리

## 80. 그룹관리

## 90. 롤관리

## 100. 부서권한관리

## 110. 모바일운전면허증
