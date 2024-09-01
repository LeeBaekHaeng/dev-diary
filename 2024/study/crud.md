# 2024년 CRUD 프로그램 자동 생성 기능 스터디
템플릿 기반 Code Gen
- CRUD 프로그램 자동 생성 기능
  - 데이터베이스 테이블을 참조하여 실행 가능한 CRUD Java Code 및 Jsp, SqlMapConfig 파일, SqlMap 파일 자동 생성.

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev2:imp:codegen:template

---

CRUD 프로그램 자동 생성 기능
- 데이터베이스의 특정 테이블을 지정하면 선택된 테이블에 대한 목록, 조회, 수정, 삭제 등의 기본 기능을 수행하는 프로그램을 자동생성하는 기능이다.

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.1:imp:codegen:template:crud

---

## Spring Data JPA 3.3.3 시작하기
- Spring Data JPA 3.3.3 Getting Started
- https://docs.spring.io/spring-data/jpa/reference/jpa/getting-started.html

### 스프링 초기화
- Spring Initializr

https://start.spring.io/

### 종속성 추가... Ctrl + b
- Add dependencies... Ctrl + b
- Web, Security, JPA, Actuator, Devtools...
- Web, JPA

Spring Web
```
Web
```

Spring Data JPA
```
JPA
```

---

H2 Database
```
h2
```

MariaDB Driver
```
mariadb
```

PostgreSQL Driver
```
postgresql
```

---

Lombok
```
lombok
```

### 생성 Ctrl + ⏎ 버튼 클릭
- Generate Ctrl + ⏎

### 오픈 프로젝트
- Open Projects
- File > Settings > Plugins > Lombok
- File > Settings > Tools > Actions on Save
  - Reformat code
  - Optimize Imports

import
```java
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.repository.Repository;

import java.util.NoSuchElementException;
import java.util.Optional;

@Getter
@Setter
@ToString
class Person {
```

spring.h2.console.enabled=true
- http://localhost:8080/h2-console
- https://docs.spring.io/spring-boot/appendix/application-properties/index.html#application-properties.data.spring.h2.console.enabled

Log levels severity mapping. For instance, `logging.level.org.springframework=DEBUG`.
- https://docs.spring.io/spring-boot/appendix/application-properties/index.html#application-properties.core.logging.level

```properties
logging.level.com.example.demo=DEBUG
```

spring.datasource.url
- https://docs.spring.io/spring-boot/appendix/application-properties/index.html#application-properties.data.spring.datasource.url
- https://mariadb.com/kb/en/about-mariadb-connector-j/

```properties
spring.datasource.driver-class-name=org.mariadb.jdbc.Driver
spring.datasource.url=jdbc:mariadb://localhost:3306/demo
spring.datasource.username=demo
spring.datasource.password=demo
```

```java
@GeneratedValue(strategy = GenerationType.IDENTITY)
```

spring.jpa.hibernate.ddl-auto
- https://docs.spring.io/spring-boot/appendix/application-properties/index.html#application-properties.data.spring.jpa.hibernate.ddl-auto

```properties
spring.jpa.hibernate.ddl-auto=update
```

```java
@Comment("이름")
```

DemoApplication.java
```java
package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.annotations.Comment;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.repository.Repository;

import java.util.NoSuchElementException;
import java.util.Optional;

@SpringBootApplication
@Slf4j
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    @Bean
    CommandLineRunner runner(PersonRepository repository) {
        return args -> {

            Person person = new Person();
            person.setName("John");

            repository.save(person);
            Person saved = repository.findById(person.getId()).orElseThrow(NoSuchElementException::new);
            if (log.isDebugEnabled()) {
                log.debug("saved={}", saved);
            }
        };
    }

}

@Entity
@Getter
@Setter
@ToString
class Person {

    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Comment("이름")
    private String name;

    // getters and setters omitted for brevity
}

interface PersonRepository extends Repository<Person, Long> {

    Person save(Person person);

    Optional<Person> findById(long id);
}
```

application.properties
```properties
spring.application.name=demo
spring.h2.console.enabled=true
logging.level.com.example.demo=DEBUG
spring.datasource.driver-class-name=org.mariadb.jdbc.Driver
spring.datasource.url=jdbc:mariadb://localhost:3306/demo
spring.datasource.username=demo
spring.datasource.password=demo
#spring.datasource.username=root
#spring.datasource.password=root
#spring.jpa.hibernate.ddl-auto=update
spring.jpa.hibernate.ddl-auto=create
```

---

<!--
## 목차

- [IntelliJ 다운로드](#1-intellij-로-spring-boot-332-시작하기)
- [Spring Data JPA 3.3.3](#spring-data-jpa-333)

## 1. IntelliJ 로 Spring Boot 3.3.2 시작하기

2024년 8월 13일 화요일

1.1. IntelliJ 다운로드
```
https://www.jetbrains.com/ko-kr/idea/download/?section=windows
```

IntelliJ IDEA Community Edition
- ideaIC-2024.2.exe

IntelliJ IDEA Ultimate
- ideaIU-2024.2.exe

1.2. 스프링 초기화

Spring Initializr
- https://start.spring.io/

종속성 추가...Ctrl + b
- Add dependencies...Ctrl + b

```
web
```

생성Ctrl + ⏎
- GenerateCtrl + ⏎

1.3. demo.zip 압축 풀기

1.4. 프로젝트 열기

```
A problem occurred configuring root project 'demo'.
> Could not resolve all artifacts for configuration ':classpath'.
   > Could not resolve org.springframework.boot:spring-boot-gradle-plugin:3.3.2.
     Required by:
         project : > org.springframework.boot:org.springframework.boot.gradle.plugin:3.3.2
      > Dependency requires at least JVM runtime version 17. This build uses a Java 8 JVM.

* Try:
> Run this build using a Java 17 or newer JVM.
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.
> Get more help at https://help.gradle.org.
```

Run this build using a Java 17 or newer JVM.
- Java 17 이상 JVM을 사용하여 이 빌드를 실행하세요.

그래들 Java 17

Settings > Build, Execution, Deployment > Build Tools > Gradle
- Gradle JVM: Amazon Crretto 17
- Download JDK...
![orretto-17.0.12](orretto-17.0.12.PNG)
  - C:\Users\god\.jdks\corretto-17.0.12
- Download 버튼 클릭
- OK 버튼 클릭
- Reload All Gradle Projects 버튼 클릭

Project JDK is not defined

1.5 크롬 확인

http://localhost:8080/

1.6 helloworld
```
@SpringBootApplication
@RestController
public class DemoApplication {

    @GetMapping("/helloworld")
    public String hello() {
        return"Hello World!";
    }
}
```
http://localhost:8080/helloworld

1.7 Tools > Actions on Save
![save.PNG](save.PNG)

## Spring Data JPA 3.3.3

스프링 초기화(Spring Initializr)

https://start.spring.io/

종속성 추가...Ctrl + b(Add dependencies...Ctrl + b)

Web, Security, JPA, Actuator, Devtools...
```
web
```

```
security
```

```
jpa
```

```
actuator
```

```
devtools
```

JDBC
```
h2
```

```
mariadb
```

```
postgresql
```

Developer Tools
```
lombok
```

---

시작하기(Getting Started)

https://spring.io/projects/spring-data-jpa

https://docs.spring.io/spring-data/jpa/reference/jpa/getting-started.html

---

스프링 시큐리티 로그인

http://localhost:8080/login

Username
```
user
```

Password
```
ed2ae9e7-58c9-4a5b-9cc7-f408041053c0
```
Using generated security password: ed2ae9e7-58c9-4a5b-9cc7-f408041053c0

---

H2 console 로그인

H2 console available at '/h2-console'. Database available at 'jdbc:h2:mem:ab647d1b-5861-4efd-be17-e3e8b5d497f1'

http://localhost:8080/h2-console

- Driver Class: org.h2.Driver
- JDBC URL: jdbc:h2:~/test
```
jdbc:h2:mem:ab647d1b-5861-4efd-be17-e3e8b5d497f1
```
- User Name: sa
- Password:

spring security h2 console 403

https://docs.spring.io/spring-security/reference/servlet/authentication/passwords/index.html

```java
.requestMatchers(new AntPathRequestMatcher("/h2-console/**")).permitAll()
```

```java
package com.example.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(
                        (authorize) -> authorize
//                                .requestMatchers(new AntPathRequestMatcher("/h2-console/**")).permitAll()
//                                .anyRequest().permitAll()
                                .requestMatchers("/").permitAll()
                                .requestMatchers("/login").permitAll()
//                                .requestMatchers("/h2-console/**").permitAll()
                                .requestMatchers(new AntPathRequestMatcher("/h2-console/**")).permitAll()
                                .anyRequest().authenticated()
                )
                .httpBasic(Customizer.withDefaults())
                .formLogin(Customizer.withDefaults());


        return http.build();
    }

}
```

application.properties
```properties
spring.application.name=demo

logging.level.com.example.demo=DEBUG

spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=
spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
```
-->
