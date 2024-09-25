# MSA 템플릿 (교육용)

## 이클립스 문제(Problems) 해결 목차
- [module-common 이클립스 문제(Problems)](#module-common-orgwebjars-가져오기를-확인할-수-없습니다)
- [[SecurityConfig] 이클립스 문제(Problems) 해결](#securityconfig-이클립스-문제problems-해결)
- [[apigateway] 이클립스 문제(Problems) 해결](#apigateway-이클립스-문제problems-해결)
- [[user-service] 이클립스 문제(Problems) 해결](#user-service-이클립스-문제problems-해결)

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

### [apigateway] 이클립스 문제(Problems) 해결

- The import org.springframework.context.annotation.Bean is never used
  - import org.springframework.context.annotation.Bean은 절대 사용되지 않습니다.
- The import org.springframework.context.annotation.Configuration is never used
  - import org.springframework.context.annotation.Configuration은 절대 사용되지 않습니다.
- The import org.springframework.context.i18n.LocaleContextHolder is never used
  - 가져오기 org.springframework.context.i18n.LocaleContextHolder는 사용되지 않습니다.

브랜치 생성
```
2024/problems/apigateway
```

```java
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;

//import org.springframework.context.i18n.LocaleContextHolder;
```

```
Description	Resource	Path	Location	Type
Newer patch version of Spring Boot available: 2.7.18	build.gradle	/apigateway	line 1	Language Servers
Project 'apigateway' has no explicit encoding set	apigateway		/apigateway	No explicit project encoding
The import org.springframework.context.annotation.Bean is never used	ReactiveExceptionHandlerConfig.java	/apigateway/src/main/java/org/egovframe/cloud/apigateway/exception	line 9	Java Problem
The import org.springframework.context.annotation.Configuration is never used	ReactiveExceptionHandlerConfig.java	/apigateway/src/main/java/org/egovframe/cloud/apigateway/exception	line 10	Java Problem
The import org.springframework.context.i18n.LocaleContextHolder is never used	MessageSourceApiController.java	/apigateway/src/main/java/org/egovframe/cloud/apigateway/api	line 6	Java Problem
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][MSA 템플릿 (교육용)][apigateway] 이클립스 문제(Problems) 해결

https://github.com/LeeBaekHaeng/egovframe-msa-edu/commits/2024/problems/apigateway/

https://github.com/eGovFramework/egovframe-msa-edu/pull/23

https://youtu.be/OeEGB94kvug

### [user-service] 이클립스 문제(Problems) 해결


브랜치 생성
```
2024/problems/user-service
```

OAuth2UserService is a raw type. References to generic type OAuth2UserService<R,U> should be parameterized	CustomOAuth2UserService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config	line 50	Java Problem
- Type safety: The method loadUser(OAuth2UserRequest) belongs to the raw type OAuth2UserService. References to generic type OAuth2UserService<R,U> should be parameterized	CustomOAuth2UserService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config	line 51	Java Problem
```java
//        OAuth2UserService delegate = new DefaultOAuth2UserService();
        OAuth2UserService<OAuth2UserRequest, OAuth2User> delegate = new DefaultOAuth2UserService();
```

The import com.fasterxml.jackson.core.JsonProcessingException is never used	AuthorizationApiControllerTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/api/role	line 3	Java Problem
```java
//import com.fasterxml.jackson.core.JsonProcessingException;
```

The import java.util.Locale is never used	MessageSourceConfigTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/config	line 10	Java Problem
- The import org.springframework.boot.test.context.SpringBootTest.WebEnvironment.RANDOM_PORT is never used	MessageSourceConfigTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/config	line 15	Java Problem
- The import org.springframework.context.MessageSource is never used	MessageSourceConfigTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/config	line 8	Java Problem
```java
//import org.springframework.context.MessageSource;
//import java.util.Locale;
//import static org.springframework.boot.test.context.SpringBootTest.WebEnvironment.RANDOM_PORT;
```

The method getAndSaveSocialUser(String, String, String, String) from the type UserService is never used locally	UserService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/service/user	line 820	Java Problem
```java
//    /**
//     * 소셜 사용자 엔티티 조회
//     * 등록되어 있지 않은 경우 사용자 등록
//     *
//     * @param providerCode 공급자 코드
//     * @param providerId   공급자 id
//     * @param email        이메일
//     * @param userName     사용자 명
//     * @return UserLoginRequestDto 사용자 로그인 요청 DTO
//     */
//    private UserResponseDto getAndSaveSocialUser(String providerCode, String providerId, String email, String userName) {
//        User user = findSocialUser(providerCode, providerId);
//
//        // 이메일로 조회
//        // 공급자에서 동일한 이메일을 사용할 수 있고
//        // 현재 시스템 구조 상 이메일을 사용자 식별키로 사용하고 있어서 이메일로 사용자를 한번 더 검색한다.
//        if (user == null) {
//            user = userRepository.findByEmail(email).orElse(null);
//
//            // 공급자 id로 조회되지 않지만 이메일로 조회되는 경우 공급자 id 등록
//            if (user != null) {
//                user.setSocial(providerCode, providerId);
//            }
//        }
//
//        if (user == null) {
//            // 사용자 등록
//            final String userId = UUID.randomUUID().toString();
//            //final String password = makeRandomPassword(); // 임의 비밀번호 생성 시 복호화 불가능
//
//            user = User.builder()
//                    .email(email) // 100byte
//                    //.encryptedPassword(passwordEncoder.encode(password)) // 100 byte
//                    .userName(userName)
//                    .userId(userId)
//                    .role(Role.USER)
//                    .userStateCode(UserStateCode.NORMAL.getKey())
//                    .build();
//            user.setSocial(providerCode, providerId);
//
//            user = userRepository.save(user);
//
//        }
//
//        return new UserResponseDto(user);
//    }
```

The serializable class RestResponsePage does not declare a static final serialVersionUID field of type long	RestResponsePage.java	/user-service/src/test/java/org/egovframe/cloud/userservice/util	line 30	Java Problem
```java
    /**
     * 
     */
    private static final long serialVersionUID = -5737360124251098346L;
```

The serializable class SessionUser does not declare a static final serialVersionUID field of type long	SessionUser.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config/dto	line 28	Java Problem
```java
    /**
     * 
     */
    private static final long serialVersionUID = -6319235143325686744L;
```

The value of the field AuthorizationService.log is not used	AuthorizationService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/service/role	line 52	Java Problem
```java
        if (log.isDebugEnabled()) {
            log.debug("requestDto={}", requestDto);
        }
```

할 일(TODO): Type safety: Unchecked cast from Object to Map<String,Object>	OAuthAttributes.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config/dto	line 47	Java Problem

```
Description	Resource	Path	Location	Type
Newer patch version of Spring Boot available: 2.7.18	build.gradle	/user-service	line 1	Language Servers
OAuth2UserService is a raw type. References to generic type OAuth2UserService<R,U> should be parameterized	CustomOAuth2UserService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config	line 50	Java Problem
Project 'user-service' has no explicit encoding set	user-service		/user-service	No explicit project encoding
The import com.fasterxml.jackson.core.JsonProcessingException is never used	AuthorizationApiControllerTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/api/role	line 3	Java Problem
The import com.querydsl.core.types.dsl is never used	QAuthorizationListResponseDto.java	/user-service/build/generated/querydsl/org/egovframe/cloud/userservice/api/role/dto	line 3	Java Problem
The import com.querydsl.core.types.dsl is never used	QRoleAuthorizationListResponseDto.java	/user-service/build/generated/querydsl/org/egovframe/cloud/userservice/api/role/dto	line 3	Java Problem
The import com.querydsl.core.types.dsl is never used	QRoleListResponseDto.java	/user-service/build/generated/querydsl/org/egovframe/cloud/userservice/api/role/dto	line 3	Java Problem
The import com.querydsl.core.types.dsl is never used	QUserListResponseDto.java	/user-service/build/generated/querydsl/org/egovframe/cloud/userservice/api/user/dto	line 3	Java Problem
The import java.util.Locale is never used	MessageSourceConfigTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/config	line 10	Java Problem
The import org.springframework.boot.test.context.SpringBootTest.WebEnvironment.RANDOM_PORT is never used	MessageSourceConfigTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/config	line 15	Java Problem
The import org.springframework.context.MessageSource is never used	MessageSourceConfigTest.java	/user-service/src/test/java/org/egovframe/cloud/userservice/config	line 8	Java Problem
The method fetchResults() from the type AbstractJPAQuery<UserListResponseDto,JPAQuery<UserListResponseDto>> is deprecated	UserRepositoryImpl.java	/user-service/src/main/java/org/egovframe/cloud/userservice/domain/user	line 62	Java Problem
The method getAndSaveSocialUser(String, String, String, String) from the type UserService is never used locally	UserService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/service/user	line 820	Java Problem
The serializable class RestResponsePage does not declare a static final serialVersionUID field of type long	RestResponsePage.java	/user-service/src/test/java/org/egovframe/cloud/userservice/util	line 30	Java Problem
The serializable class SessionUser does not declare a static final serialVersionUID field of type long	SessionUser.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config/dto	line 28	Java Problem
The value of the field AuthorizationService.log is not used	AuthorizationService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/service/role	line 52	Java Problem
Type safety: The method loadUser(OAuth2UserRequest) belongs to the raw type OAuth2UserService. References to generic type OAuth2UserService<R,U> should be parameterized	CustomOAuth2UserService.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config	line 51	Java Problem
Type safety: Unchecked cast from Object to Map<String,Object>	OAuthAttributes.java	/user-service/src/main/java/org/egovframe/cloud/userservice/config/dto	line 47	Java Problem

```

[2024년 전자정부 표준프레임워크 컨트리뷰션][MSA 템플릿 (교육용)][user-service] 이클립스 문제(Problems) 해결

https://github.com/LeeBaekHaeng/egovframe-msa-edu/commits/2024/problems/user-service/

https://github.com/eGovFramework/egovframe-msa-edu/pull/24

https://youtu.be/xxmNxLu7ABw
