# MSA 템플릿 (교육용)

목차
- [module-common 이클립스 문제(Problems)](#module-common-orgwebjars-가져오기를-확인할-수-없습니다)

### module-common org.webjars 가져오기를 확인할 수 없습니다.

org.webjars:webjars-locator-core:0.59 추가해도 될까요?

이클립스 문제(Problems)
```
Description	Resource	Path	Location	Type
Class<NotFoundException> cannot be resolved to a type	ExceptionHandlerAdvice.java	/module-common/src/main/java/org/egovframe/cloud/reactive/exception	line 98	Java Problem
NotFoundException cannot be resolved to a type	ExceptionHandlerAdvice.java	/module-common/src/main/java/org/egovframe/cloud/reactive/exception	line 98	Java Problem
NotFoundException cannot be resolved to a type	ExceptionHandlerAdvice.java	/module-common/src/main/java/org/egovframe/cloud/reactive/exception	line 100	Java Problem
The import org.webjars cannot be resolved	ExceptionHandlerAdvice.java	/module-common/src/main/java/org/egovframe/cloud/reactive/exception	line 22	Java Problem
Newer patch version of Spring Boot available: 2.7.18	build.gradle	/module-common	line 1	Language Servers
Project 'module-common' has no explicit encoding set	module-common		/module-common	No explicit project encoding
The import lombok.extern.slf4j.Slf4j is never used	LeaveaTraceConfig.java	/module-common/src/main/java/org/egovframe/cloud/common/config	line 3	Java Problem
The import org.springframework.beans.factory.annotation.Autowired is never used	AbstractService.java	/module-common/src/main/java/org/egovframe/cloud/common/service	line 8	Java Problem
The serializable class BusinessException does not declare a static final serialVersionUID field of type long	BusinessException.java	/module-common/src/main/java/org/egovframe/cloud/common/exception	line 25	Java Problem
The serializable class BusinessMessageException does not declare a static final serialVersionUID field of type long	BusinessMessageException.java	/module-common/src/main/java/org/egovframe/cloud/common/exception	line 22	Java Problem
The serializable class EntityNotFoundException does not declare a static final serialVersionUID field of type long	EntityNotFoundException.java	/module-common/src/main/java/org/egovframe/cloud/common/exception	line 23	Java Problem
The serializable class InvalidValueException does not declare a static final serialVersionUID field of type long	InvalidValueException.java	/module-common/src/main/java/org/egovframe/cloud/common/exception	line 23	Java Problem
The value of the field ApiLogService.log is not used	ApiLogService.java	/module-common/src/main/java/org/egovframe/cloud/servlet/service	line 33	Java Problem
The value of the field AuthenticationConverter.log is not used	AuthenticationConverter.java	/module-common/src/main/java/org/egovframe/cloud/reactive/config	line 40	Java Problem
```

import org.webjars.NotFoundException;

The import org.webjars cannot be resolved

org.webjars 가져오기를 확인할 수 없습니다.


https://mvnrepository.com/artifact/org.webjars/webjars-locator-core/0.59

Gradle
```
// https://mvnrepository.com/artifact/org.webjars/webjars-locator-core
implementation group: 'org.webjars', name: 'webjars-locator-core', version: '0.59'
```

Gradle (Short)
```
// https://mvnrepository.com/artifact/org.webjars/webjars-locator-core
implementation 'org.webjars:webjars-locator-core:0.59'
```

/module-common/build.gradle

[2024년 전자정부 표준프레임워크 컨트리뷰션] module-common org.webjars 가져오기를 확인할 수 없습니다.

[2024년 전자정부 표준프레임워크 컨트리뷰션][MSA 템플릿 (교육용)] module-common org.webjars 가져오기를 확인할 수 없습니다.

https://github.com/LeeBaekHaeng/egovframe-msa-edu/commits/2024/09/04/

https://github.com/eGovFramework/egovframe-msa-edu/pull/19

https://youtu.be/pA1c8Xf1Ldk
