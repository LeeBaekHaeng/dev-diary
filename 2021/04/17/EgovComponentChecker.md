# EgovComponentChecker

getBeanDefinitionNames
- Return the names of all beans defined in this factory.
- 이 팩토리에 정의 된 모든 빈의 이름을 반환합니다.

EgovComponentCheckerTest
```java
package egovframework.com.cmm;

import org.junit.Test;

import egovframework.com.test.EgovTest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class EgovComponentCheckerTest extends EgovTest {

	@Test
	public void test() {
		log.debug("test");

		// hasComponent
		log.debug("cmmUseDAO={}", EgovComponentChecker.hasComponent("cmmUseDAO"));
		log.debug("CmmUseDAO={}", EgovComponentChecker.hasComponent("CmmUseDAO"));

		// getBeanDefinitionCount
		int beanDefinitionCount = EgovComponentChecker.context.getBeanDefinitionCount();
		log.debug("beanDefinitionCount={}", beanDefinitionCount);

		// getBeanDefinitionNames
		String[] beanDefinitionNames = EgovComponentChecker.context.getBeanDefinitionNames();

		for (String beanDefinitionName : beanDefinitionNames) {
			log.debug("beanDefinitionName={}", beanDefinitionName);
		}
	}

}
```

EgovComponentCheckerTest_egovUtil
```java
package egovframework.com.cmm;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import egovframework.com.test.EgovTest;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class EgovComponentCheckerTest_egovUtil extends EgovTest {

	@Autowired
	EgovComponentChecker egovUtil;

	@SuppressWarnings("static-access")
	@Test
	public void test() {
		log.debug("test");

		// hasComponent
		log.debug("cmmUseDAO={}", egovUtil.hasComponent("cmmUseDAO"));
		log.debug("CmmUseDAO={}", egovUtil.hasComponent("CmmUseDAO"));

		// getBeanDefinitionCount
		int beanDefinitionCount = egovUtil.context.getBeanDefinitionCount();
		log.debug("beanDefinitionCount={}", beanDefinitionCount);

		// getBeanDefinitionNames
		String[] beanDefinitionNames = egovUtil.context.getBeanDefinitionNames();

		for (String beanDefinitionName : beanDefinitionNames) {
			log.debug("beanDefinitionName={}", beanDefinitionName);
		}
	}

}
```
