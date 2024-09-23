# MSA 템플릿 (교육용)

## 이클립스 문제(Problems) 해결 목차
- [module-common 이클립스 문제(Problems)](#module-common-orgwebjars-가져오기를-확인할-수-없습니다)
- [[SecurityConfig] 이클립스 문제(Problems) 해결](#securityconfig-이클립스-문제problems-해결)

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

### 테스트

1. config
- http://localhost:8888/

2. discovery
- http://localhost:8761/

3. apigateway
- http://localhost:8000/
- http://10.0.2.15:8000/actuator/info

http://10.0.2.15:8000/actuator/info

http://10.0.2.15:8000/user-service/api/v1/messages/attachment/ko

http://10.0.2.15:8000/user-service/api/v1/messages/banner/ko

http://10.0.2.15:8000/user-service/api/v1/messages/banner/en

4. user-service
- http://10.0.2.15:62789/actuator/info
- http://10.0.2.15:62789/api/v1/messages/fail.common.msg/ko

@GetMapping("/api/v1/messages/{code}/{lang}")

messageSource getBasenameSet=file:///C:/Users/god/msa-attach-volume/messages/messages

C:\Users\god\msa-attach-volume\messages\messages

C:/Users/god/msa-attach-volume/messages/messages

/apigateway/src/main/resources/application.yml
```yml
messages:
  directory: ${user.dir}/msa-attach-volume/messages
```

C:\EGOVFRAME\eGovFrameDev-4.2.0-64bit\workspace3\egovframe-common-components-2024\src\main\resources\egovframework\message\com
message-common_en.properties
message-common_ko.properties

http://10.0.2.15:8000/portal-service/api/v1/code-details/00


### [SecurityConfig] 이클립스 문제(Problems) 해결

- The type WebSecurityConfigurerAdapter is deprecated
- WebSecurityConfigurerAdapter 유형은 더 이상 사용되지 않습니다.

브랜치 생성
```
2024/problems/SecurityConfig
```

```java
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        return http.build();
```

```
Description	Resource	Path	Location	Type
Newer patch version of Spring Boot available: 2.7.18	build.gradle	/discovery	line 1	Language Servers
Project 'discovery' has no explicit encoding set	discovery		/discovery	No explicit project encoding
The type WebSecurityConfigurerAdapter is deprecated	SecurityConfig.java	/discovery/src/main/java/org/egovframe/cloud/discovery	line 5	Java Problem
The type WebSecurityConfigurerAdapter is deprecated	SecurityConfig.java	/discovery/src/main/java/org/egovframe/cloud/discovery	line 26	Java Problem
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][MSA 템플릿 (교육용)][SecurityConfig] 이클립스 문제(Problems) 해결

https://github.com/LeeBaekHaeng/egovframe-msa-edu/commits/2024/problems/SecurityConfig/

https://github.com/eGovFramework/egovframe-msa-edu/pull/22

https://youtu.be/cVyexV3WRK8
