# 표준프레임워크 템플릿 프로젝트 포털 사이트

- 셀레늄 단위 테스트

## [로그인] 셀레늄 단위 테스트

- src/test/java 추가
- src/test/resources 추가
- junit-jupiter-api-5.11.0 의존(dependency) 추가
- lombok- 1.18.28 의존(dependency) 추가
- Selenium 라이브러리 설치
- 셀레늄 단위 테스트 추가

1. Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/

```xml
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.23.1</version>
    <scope>test</scope>
</dependency>
```

2. 셀레늄 사용
- Using Selenium
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/#examples

3. 셀레늄 단위 테스트 추가

http://localhost:8080/pst_webapp/uat/uia/egovLoginUsr.do

```
/uat/uia/egovLoginUsr.do
```

브랜치 생성
```
2024/selenium/EgovLoginController
```

```
egovframework.let.uat.uia.web
```

```
EgovLoginControllerTestSelenium
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
```

JRE > jre
```
Caused by: java.lang.UnsupportedClassVersionError: org/openqa/selenium/WebDriver has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime only recognizes class file versions up to 52.0
```

cssSelector
```
body > div > div.header > div > div.top_menu > span.t > span
```

https://github.com/LeeBaekHaeng/egovframe-portal-site-template/commits/2024/selenium/EgovLoginController/

https://github.com/eGovFramework/egovframe-portal-site-template/pull/11

https://youtu.be/qjkO5yZ2HfY

## [2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 포털 사이트] 관리자 게시판 요청 메서드 정리

https://github.com/LeeBaekHaeng/egovframe-portal-site-template/commits/2024/08/23/

https://github.com/eGovFramework/egovframe-portal-site-template/pull/10

2024 09 02 19 56 03

### [로그인] 셀레늄 단위 테스트: v4.13.0 로 버전 수정 했습니다.

v4.13.0 로 버전 수정 했습니다.

selenium jdk 8

Java 8 support in Selenium

https://www.selenium.dev/blog/2023/java-8-support/

https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java/4.13.0

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 포털 사이트][로그인] 셀레늄 단위 테스트: v4.13.0 로 버전 수정 했습니다.

https://github.com/LeeBaekHaeng/egovframe-portal-site-template/commits/2024/selenium/EgovLoginController/

https://github.com/eGovFramework/egovframe-portal-site-template/pull/13

https://youtu.be/CNoQNaBgxRY
