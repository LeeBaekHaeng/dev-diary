# 표준프레임워크 심플 게시판

- 셀레늄 단위 테스트

목차
- [[게시판 등록 화면] 셀레늄 단위 테스트](#게시판-등록-화면-셀레늄-단위-테스트)

## 셀레늄 단위 테스트

### [게시판 등록 화면] 셀레늄 단위 테스트

- Source > Format
- src/test/java 추가
- src/test/resources 추가
- junit-jupiter-api-5.11.0 의존(dependency) 추가
- lombok- 1.18.28 의존(dependency) 추가
- Selenium 라이브러리 설치
- 셀레늄 단위 테스트 추가

1. 브랜치 생성

http://localhost:8080/pst_webapp/uat/uia/egovLoginUsr.do

```
/uat/uia/egovLoginUsr.do
```

```
2024/selenium/EgovLoginController
```

2. 셀레늄 단위 테스트 추가

```
egovframework.example.sample.web
```

```
EgovSampleControllerTestSelenium
TestEgovSampleControllerTestSelenium
TestEgovSampleControllerSelenium
```

```xml
<!-- https://mvnrepository.com/artifact/org.junit.jupiter/junit-jupiter-api -->
<dependency>
    <groupId>org.junit.jupiter</groupId>
    <artifactId>junit-jupiter-api</artifactId>
    <version>5.11.0</version>
    <scope>test</scope>
</dependency>
<!-- https://mvnrepository.com/artifact/org.projectlombok/lombok -->
<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
    <version>1.18.28</version>
    <scope>provided</scope>
</dependency>
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.23.1</version>
    <scope>test</scope>
</dependency>
```

3. Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/

4. 셀레늄 사용
- Using Selenium
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/#examples

JRE > jre
```
Caused by: java.lang.UnsupportedClassVersionError: org/openqa/selenium/WebDriver has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime only recognizes class file versions up to 52.0
```

cssSelector
```
#table > table > tbody > tr:nth-child(2) > td:nth-child(3)
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][게시판 등록 화면] 셀레늄 단위 테스트

[2024년 전자정부 표준프레임워크 컨트리뷰션][심플 게시판][게시판 등록 화면] 셀레늄 단위 테스트

https://github.com/LeeBaekHaeng/egovframe-web-sample/commits/2024/09/03/

https://github.com/eGovFramework/egovframe-web-sample/pull/8

https://youtu.be/xR0JC2fdGP4
