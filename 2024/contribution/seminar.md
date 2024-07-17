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

```
http://localhost:8080/egovframework-all-in-one/uat/uap/selectLoginPolicyList.do
```

```
/uat/uap/selectLoginPolicyList.do
```

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

## 기능 추가-DAO단위테스트-LoginPolicyDAO

```
LoginPolicyDAO
```

브랜치
```
2024/test/LoginPolicyDAO
```

```
DeptJobDAOTest
```

```
egovframework.com.uat.uap.service.impl
```

```
LoginPolicyDAOTest
```

```java
package egovframework.com.uat.uap.service.impl;

import static org.junit.Assert.assertEquals;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.test.context.ContextConfiguration;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.test.EgovTestAbstractDAO;
import egovframework.com.uat.uap.service.LoginPolicyVO;
import lombok.extern.slf4j.Slf4j;

/**
 * 로그인정책 DAO 단위 테스트
 * 
 * @author 이백행
 * @since 2024-07-16
 */

@ContextConfiguration(classes = { LoginPolicyDAOTest.class, EgovTestAbstractDAO.class })
@Configuration
@ComponentScan(useDefaultFilters = false, basePackages = {
		"egovframework.com.uat.uap.service.impl" }, includeFilters = {
				@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { LoginPolicyDAO.class }) })
@Slf4j
public class LoginPolicyDAOTest extends EgovTestAbstractDAO {

	@Autowired
	private LoginPolicyDAO loginPolicyDAO;

	@Test
	public void insertLoginPolicy() {
		// given
		LoginPolicyVO loginPolicyVO = new LoginPolicyVO();
		loginPolicyVO.setEmplyrId("test" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")));
		loginPolicyVO.setIpInfo("localhost");
		loginPolicyVO.setDplctPermAt("Y");
		loginPolicyVO.setLmttAt("N");

		LoginVO loginVO = (LoginVO) EgovUserDetailsHelper.getAuthenticatedUser();
		if (loginVO != null) {
			loginPolicyVO.setUserId(loginVO.getId());
		}

		// when
		int result = loginPolicyDAO.insertLoginPolicy(loginPolicyVO);

		if (log.isDebugEnabled()) {
			log.debug("result={}", result);
		}

		// then
		assertEquals(egovMessageSource.getMessage("fail.common.insert"), 1, result);
	}

}
```

## 기능 추가-셀레늄단위테스트-로그인

```
http://localhost:8080/egovframework-all-in-one/uat/uia/egovLoginUsr.do
```

```
/uat/uia/egovLoginUsr.do
```

```
egovframework.com.uat.uia.web
```

```
EgovLoginController
```

브랜치
```
2024/selenium/EgovLoginController
```

Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/
- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java/4.22.0

```xml
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.22.0</version>
    <scope>test</scope>
</dependency>
```

Selenium 코드 구성 및 실행
- Organizing and Executing Selenium Code
- Examples
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/

```
EgovLoginControllerSelenium
```

```java
package egovframework.com.uat.uia.web;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class EgovLoginControllerSelenium {

	@Test
	public void test() throws InterruptedException {
		// given
		WebDriver driver = new ChromeDriver();

		driver.get("http://localhost:8080/egovframework-all-in-one/uat/uia/egovLoginUsr.do");
		Thread.sleep(1000);

		JavascriptExecutor js = (JavascriptExecutor) driver;

		js.executeScript("location.reload();");
		Thread.sleep(1000);

		// 업무 탭 클릭
		js.executeScript("document.getElementById('typeUsr').click();");
//		WebElement typeUsr = driver.findElement(By.id("typeUsr"));
//		typeUsr.click();
		Thread.sleep(1000);

		// 아이디 입력
		WebElement id = driver.findElement(By.id("id"));
		id.sendKeys("TEST1");
		Thread.sleep(1000);

		// 패스워드 입력
		WebElement password = driver.findElement(By.id("password"));
		password.sendKeys("rhdxhd12");
		Thread.sleep(1000);

		// when
		// 로그인 버튼 클릭
		js.executeScript("actionLogin();");

		// then
		// 로그아웃 버튼
		WebElement a = driver.findElement(By.tagName("a"));
		String aText = a.getText();
		if (log.isDebugEnabled()) {
			log.debug("aText={}", aText);
		}
		assertEquals("에러가 발생했습니다!", "로그아웃", aText);
	}

}
```

```
오류(버그) 수정-시큐어코딩-30. 로그인정책관리 Exception 제거
2024/secure-coding/EgovLoginPolicyController

기능 추가-셀레늄단위테스트-로그인
2024/selenium/EgovLoginController

기능 추가-DAO단위테스트-LoginPolicyDAO
2024/test/LoginPolicyDAO
```

```
10. 로그인 Exception 제거
2024/pmd/EgovLoginController

10. 로그인 셀레늄 단위 테스트
2024/test/EgovLoginControllerSelenium

10. 로그인 DAO 단위 테스트
2024/test/LoginDAO
```
