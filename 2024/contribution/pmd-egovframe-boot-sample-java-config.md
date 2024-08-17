# 표준프레임워크 부트 기반 심플 게시판 시큐어코딩 PMD 진단/조치

## 표준프레임워크 부트 기반 심플 게시판 시큐어코딩 PMD 진단/조치 1차

표준프레임워크 부트 기반 심플 게시판
- https://github.com/LeeBaekHaeng/egovframe-boot-sample-java-config

전자정부 표준프레임워크 표준 Inspection 룰셋 적용하기
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.2:imp:inspection#%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80_%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC_%ED%91%9C%EC%A4%80_inspection_%EB%A3%B0%EC%85%8B_%EC%A0%81%EC%9A%A9%ED%95%98%EA%B8%B0
- 표준 Inspection 룰셋 한글/영문판의 압축파일 : 개발환경 4.2 이상 버전 사용
- egovinspectionrules-4.2.zip

### EgovAopExceptionTransfer

전자정부 표준프레임워크 표준 Inspection 룰셋
번호|PMD 룰|설명|SW 보안 약점
-|-|-|-
35|UncommentedEmptyMethodBody|빈 메소드에 빈메소드임을 나타내는 주석을 추가할 것|
42|UnusedPrivateMethod|사용되지 않는 Private Method 선언을 탐지|

UncommentedEmptyMethodBody
- 빈 Method Body에 주석을 추가 할 것

lombok-1.18.28 종속성 추가
```xml
		<dependency>
			<groupId>org.projectlombok</groupId>
			<artifactId>lombok</artifactId>
			<version>1.18.28</version>
			<scope>provided</scope>
		</dependency>
```

```java
@Aspect
@Slf4j
public class EgovAopExceptionTransfer {
...
	private void exceptionTransferService() {
		if (log.isDebugEnabled()) {
			log.debug("exceptionTransferService");
		}
	}
```

UnusedPrivateMethod
- 사용되지 않는 Private Method 'exceptionTransferService()' 가 선언되었음

```java
//private void exceptionTransferService() {
public void exceptionTransferService() {
```

http://localhost:8080/

https://github.com/LeeBaekHaeng/egovframe-boot-sample-java-config/commits/2024/08/17/

https://github.com/eGovFramework/egovframe-boot-sample-java-config/pull/19

https://youtu.be/82S3iDXOsxA

## 표준프레임워크 부트 기반 심플 게시판 시큐어코딩 PMD 진단/조치 2차

### EgovBootApplication

### EgovConfigAspect

### EgovConfigCommon

### EgovConfigDatasource

### EgovConfigIdGeneration

### EgovConfigMapper

### EgovConfigProperties

### EgovConfigTransaction

### EgovConfigValidation

### EgovConfigWeb

### EgovAopExceptionTransfer

### EgovSampleExcepHndlr

### EgovSampleOthersExcepHndlr

### EgovPaginationDialect

### EgovPaginationFormat

### EgovSampleService

### SampleDefaultVO

### SampleVO

### EgovSampleServiceImpl

### SampleMapper

### EgovSampleController

### EgovNotNull

### EgovValidation
