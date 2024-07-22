# Exception 제거 함께해요!

- [10. 로그인 시큐어코딩 PMD Exception 제거](#10-로그인-exception-제거)
- [10. 로그인 셀레늄 단위 테스트](#10-로그인-셀레늄-단위-테스트)
- [10. 로그인 DAO 단위 테스트](#10-로그인-dao-단위-테스트)

환경설정
```
save
```
![save](save.png)

## 10. 로그인 시큐어코딩 PMD Exception 제거
```
http://localhost:8080/egovframework-all-in-one/uat/uia/egovLoginUsr.do
```

Search
```
"/uat/uia/egovLoginUsr.do
```

새 브랜치
```
2024/pmd/EgovLoginController
```

바꾸기
```java
throws Exception
```

catch
```java
if (log.isErrorEnabled()) {
	log.error("");
}
throw new BaseRuntimeException(e); // TODO 시큐어코딩 Exception 제거
```

개정이력 추가
```java
 *   2024.07.20  이백행          시큐어코딩 Exception 제거
```

[전자정부 표준프레임워크 표준 Inspection 룰셋 적용하기](https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.2:imp:inspection#%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80_%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC_%ED%91%9C%EC%A4%80_inspection_%EB%A3%B0%EC%85%8B_%EC%A0%81%EC%9A%A9%ED%95%98%EA%B8%B0)
- 표준 Inspection 룰셋 한글/영문판의 압축파일 : 개발환경 4.2 이상 버전 사용
- egovinspectionrules-4.2.zip

## 10. 로그인 셀레늄 단위 테스트

새 브랜치
```
2024/selenium/EgovLoginController
```

Install a Selenium library
- Selenium 라이브러리 설치
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
TestEgovLoginControllerSelenium
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

## 10. 로그인 DAO 단위 테스트

새 브랜치
```
2024/test/LoginDAO
```

참고
```
DeptJobDAOTest
```

```
LoginDAOActionLoginTest
```
