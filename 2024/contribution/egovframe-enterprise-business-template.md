# 표준프레임워크 템플릿 프로젝트 내부업무 시스템

셀레늄 단위 테스트

## [로그인] 셀레늄 단위 테스트

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

```
2024/selenium/EgovLoginController
```

http://localhost:8080/ebt_webapp/


http://localhost:8080/ebt_webapp/uat/uia/egovLoginUsr.do

```
/uat/uia/egovLoginUsr.do
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

cssSelector
```
body > div > div.header > div > div.top_menu > span.t > span
```

https://github.com/LeeBaekHaeng/egovframe-enterprise-business-template/commits/2024/selenium/EgovLoginController/

https://github.com/eGovFramework/egovframe-enterprise-business-template/pull/13

https://youtu.be/rGxVxy61dx0
