# [2024년 전자정부 표준프레임워크 컨트리뷰션] 심플홈페이지 BackEnd

- 롬복 생성자 기반 종속성 주입
- 셀레늄 단위 테스트

## 셀레늄 단위 테스트 목차
- [[로그인] 셀레늄 단위 테스트](#로그인-셀레늄-단위-테스트)
- [[로그인] 셀레늄 단위 테스트: v4.13.0 로 버전 수정 했습니다.](#로그인-셀레늄-단위-테스트-v4130-로-버전-수정-했습니다)

## 시큐어코딩 Exception 제거 목차
- [[알림마당 > 오늘의행사] 시큐어코딩 Exception 제거](#알림마당--오늘의행사-롬복-생성자-기반-종속성-주입)

## 롬복 생성자 기반 종속성 주입 목차
- [[게시판사용관리] 롬복 생성자 기반 종속성 주입](#게시판사용관리-롬복-생성자-기반-종속성-주입)

## DAO 단위 테스트 목차
- [[게시판생성관리][BBSAttributeManageDAO.insertBBSMasterInf] DAO 단위 테스트](#게시판생성관리bbsattributemanagedaoinsertbbsmasterinf-dao-단위-테스트)

---

메인
- http://localhost:3000/
- http://localhost:8080/mainPage

알림마당 > 오늘의행사
- http://localhost:3000/inform/daily
- http://localhost:8080/schedule/daily?schdulSe=&year=2024&month=7&date=27

알림마당 > 금주의행사
- http://localhost:3000/inform/weekly
- http://localhost:8080/schedule/week?schdulSe=&year=2024&month=7&date=25&weekDay=0&weekOfMonth=3

알림마당 > 공지사항
- http://localhost:3000/inform/notice
- http://localhost:8080/board?bbsId=BBSMSTR_AAAAAAAAAAAA&pageIndex=1&searchCnd=0&searchWrd=

알림마당 > 사이트갤러리
- http://localhost:3000/inform/gallery
- http://localhost:8080/board?bbsId=BBSMSTR_BBBBBBBBBBBB&pageIndex=1&searchCnd=0&searchWrd=

사이트관리 > 일정관리
- http://localhost:3000/admin/schedule
- http://localhost:8080/schedule/month?schdulSe=&year=2024&month=7&date=27

사이트관리 > 게시판생성관리
- http://localhost:3000/admin/board
- http://localhost:8080/bbsMaster?pageIndex=1&searchCnd=0&searchWrd=

사이트관리 > 게시판사용관리
- http://localhost:3000/admin/usage
- http://localhost:8080/bbsUseInf?pageIndex=1&searchCnd=0&searchWrd=

사이트관리 > 공지사항관리
- http://localhost:3000/admin/notice/
- http://localhost:8080/board?bbsId=BBSMSTR_AAAAAAAAAAAA&pageIndex=1&searchCnd=0&searchWrd=

사이트관리 > 사이트갤러리관리
- http://localhost:3000/admin/gallery
- http://localhost:8080/board?bbsId=BBSMSTR_BBBBBBBBBBBB&pageIndex=1&searchCnd=0&searchWrd=

사이트관리 > 사이트관리자 암호변경
- http://localhost:3000/admin/manager/

사이트관리 > 회원관리
- http://localhost:3000/admin/members/
- http://localhost:8080/members?pageIndex=1&searchCnd=0&searchWrd=

## 게시물 관리 롬복 생성자 기반 종속성 주입
- Constructor-based Dependency Injection
  - 생성자 기반 종속성 주입
  - https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html#beans-constructor-injection
- Spring Beans and Dependency Injection
  - 스프링 빈과 종속성 주입
  - https://docs.spring.io/spring-boot/reference/using/spring-beans-and-dependency-injection.html
- ` *   2024.08.26  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/08/26/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/57

https://youtu.be/-0WuI6VTwVI

## [알림마당 > 오늘의행사] 롬복 생성자 기반 종속성 주입

- `@RequiredArgsConstructor/@Qualifier` 추가
- Constructor-based Dependency Injection
  - 생성자 기반 종속성 주입
  - https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html#beans-constructor-injection
- Spring Beans and Dependency Injection
  - 스프링 빈과 종속성 주입
  - https://docs.spring.io/spring-boot/reference/using/spring-beans-and-dependency-injection.html
- ` *   2024.08.27  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

알림마당 > 오늘의행사
- http://localhost:3000/inform/daily
- http://localhost:8080/schedule/daily?schdulSe=&year=2024&month=7&date=27

/schedule/daily

EgovIndvdlSchdulManageApiController

IndvdlSchdulManageDao
```java
//@Repository("indvdlSchdulManageDao")
@Repository
```

EgovIndvdlSchdulManageServiceImpl
```java
//@Service("egovIndvdlSchdulManageService")
@Service
@RequiredArgsConstructor

//@Resource(name = "indvdlSchdulManageDao")
//private IndvdlSchdulManageDao dao;
//private final IndvdlSchdulManageDao dao;
private final IndvdlSchdulManageDao indvdlSchdulManageDao;

//@Resource(name = "deptSchdulManageIdGnrService")
//private EgovIdGnrService idgenService;
private final EgovIdGnrService deptSchdulManageIdGnrService;
```

EgovIndvdlSchdulManageApiController
```java
@RequiredArgsConstructor

//@Autowired
//private DefaultBeanValidator beanValidator;

/** EgovMessageSource */
//@Resource(name = "egovMessageSource")
//EgovMessageSource egovMessageSource;
//The value of the field EgovIndvdlSchdulManageApiController.egovMessageSource is not used
//EgovIndvdlSchdulManageApiController.egovMessageSource 필드의 값이 사용되지 않습니다.
// 제거

//@Resource(name = "egovIndvdlSchdulManageService")
//private EgovIndvdlSchdulManageService egovIndvdlSchdulManageService;

//@Resource(name = "EgovCmmUseService")
//private EgovCmmUseService cmmUseService;

/** EgovPropertyService */
//@Resource(name = "propertiesService")
//protected EgovPropertyService propertiesService;
//The value of the field EgovIndvdlSchdulManageApiController.propertiesService is not used
//EgovIndvdlSchdulManageApiController.propertiesService 필드의 값이 사용되지 않습니다.
// 제거

// 첨부파일 관련
//@Resource(name = "EgovFileMngService")
//private EgovFileMngService fileMngService;

//@Resource(name = "EgovFileMngUtil")
//private EgovFileMngUtil fileUtil;

/** 암호화서비스 */
//@Resource(name = "egovARIACryptoService")
//EgovCryptoService cryptoService;
```

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/08/26/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/57

https://youtu.be/-U9Pn5x8GO4

## [사이트관리 > 게시판생성관리] 롬복 생성자 기반 종속성 주입

- `@RequiredArgsConstructor` 추가
- Constructor-based Dependency Injection
  - 생성자 기반 종속성 주입
  - https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html#beans-constructor-injection
- Spring Beans and Dependency Injection
  - 스프링 빈과 종속성 주입
  - https://docs.spring.io/spring-boot/reference/using/spring-beans-and-dependency-injection.html
- ` *   2024.08.28  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

사이트관리 > 게시판생성관리
- http://localhost:3000/admin/board
- http://localhost:8080/bbsMaster?pageIndex=1&searchCnd=0&searchWrd=

1. BBSAttributeManageDAO
```java
//@Repository("BBSAttributeManageDAO")
@Repository
```

2. EgovBBSAttributeManageServiceImpl
```java
//@Service("EgovBBSAttributeManageService")
@Service
@RequiredArgsConstructor

//	@Resource(name = "BBSAttributeManageDAO")
//	private BBSAttributeManageDAO attrbMngDAO;
	private final BBSAttributeManageDAO bbsAttributeManageDAO;

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseInfoManageDAO;

//	@Resource(name = "EgovUserInfManageService")
//	private EgovUserInfManageService userService;
	private final EgovUserInfManageService egovUserInfManageService;

//	@Resource(name = "egovBBSMstrIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovBBSMstrIdGnrService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService egovPropertyService;

	// ---------------------------------
	// 2009.06.26 : 2단계 기능 추가
	// ---------------------------------
//	@Resource(name = "BBSAddedOptionsDAO")
//	private BBSAddedOptionsDAO addedOptionsDAO;
	private final BBSAddedOptionsDAO addedOptionsDAO;
	//// -------------------------------
```

3. EgovBBSAttributeManageApiController
```java
@RequiredArgsConstructor

	/** EgovBBSAttributeManageService */
//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService egovBBSAttributeManageService;

	/** EgovCmmUseService */
//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService egovCmmUseService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService egovPropertyService;

	/** DefaultBeanValidator */
//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
//	private final EgovMessageSource egovMessageSource;
// The value of the field EgovBBSAttributeManageApiController.egovMessageSource is not used
// EgovBBSAttributeManageApiController.egovMessageSource 필드의 값이 사용되지 않습니다.
// 사용되지 않아 제거
```

4. CmmUseDAO
```java
//@Repository("cmmUseDAO")
@Repository
//public class CmmUseDAO extends EgovComAbstractDAO {
public class CmmUseDAO extends EgovAbstractMapper {
```

5. EgovCmmUseServiceImpl
```java
//@Service("EgovCmmUseService")
@Service
@RequiredArgsConstructor

//	@Resource(name = "cmmUseDAO")
//	private CmmUseDAO cmmUseDAO;
	private final CmmUseDAO cmmUseDAO;
```

6. EgovBBSUseInfoManageApiController
```java
@RequiredArgsConstructor

	/** EgovBBSAttributeManageService */
//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;
```

7. EgovMberManageApiController
```java
@RequiredArgsConstructor

	/** cmmUseService */
//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;

		if (log.isDebugEnabled()) {
			log.debug("commandMap={}", commandMap);
		}
```

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/08/28/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/58

https://youtu.be/cdv-m0bw_cY

## [게시판생성관리] 롬복 생성자 기반 종속성 주입

- [사이트관리 > 게시판사용관리] 롬복 생성자 기반 종속성 주입
- `@RequiredArgsConstructor` 추가
- Constructor-based Dependency Injection
  - 생성자 기반 종속성 주입
  - https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html#beans-constructor-injection
- Spring Beans and Dependency Injection
  - 스프링 빈과 종속성 주입
  - https://docs.spring.io/spring-boot/reference/using/spring-beans-and-dependency-injection.html
- ` *   2024.08.29  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

사이트관리 > 게시판사용관리
- http://localhost:3000/admin/usage
- http://localhost:8080/bbsUseInf?pageIndex=1&searchCnd=0&searchWrd=

```
/bbsUseInf
```

1. BBSUseInfoManageDAO
```java
//@Repository("BBSUseInfoManageDAO")
@Repository
```

2. EgovBBSUseInfoManageServiceImpl
```java
//@Service("EgovBBSUseInfoManageService")
@Service
@RequiredArgsConstructor

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseDAO;
```

3. EgovBBSUseInfoManageApiController
```java
@RequiredArgsConstructor

	/** EgovBBSUseInfoManageService */
//	@Resource(name = "EgovBBSUseInfoManageService")
//	private EgovBBSUseInfoManageService bbsUseService;
	private final EgovBBSUseInfoManageService bbsUseService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

	/** EgovBBSAttributeManageService */
//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;

	/** DefaultBeanValidator */
//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;
//The value of the field EgovBBSUseInfoManageApiController.egovMessageSource is not used
//EgovBBSUseInfoManageApiController.egovMessageSource 필드의 값이 사용되지 않습니다.
//사용되지 않아 제거
```

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/08/29/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/59

https://youtu.be/xhivzGdXjD0

## [사이트관리자 암호변경] 롬복 생성자 기반 종속성 주입

- [사이트관리 > 사이트관리자 암호변경] 롬복 생성자 기반 종속성 주입
- `@RequiredArgsConstructor` 추가
- Constructor-based Dependency Injection
  - 생성자 기반 종속성 주입
  - https://docs.spring.io/spring-framework/reference/core/beans/dependencies/factory-collaborators.html#beans-constructor-injection
- Spring Beans and Dependency Injection
  - 스프링 빈과 종속성 주입
  - https://docs.spring.io/spring-boot/reference/using/spring-beans-and-dependency-injection.html
- ` *   2024.08.29  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

사이트관리 > 사이트관리자 암호변경
- http://localhost:3000/admin/manager/
- http://localhost:8080/admin/password

```
/admin/password
```

1. SiteManagerDAO
```java
//@Repository("siteManagerDAO")
@Repository
```

2. EgovSiteManagerServiceImpl
```java
//@Service("siteManagerService")
@Service

@RequiredArgsConstructor

//	@Resource(name = "siteManagerDAO")
//	private SiteManagerDAO siteManagerDAO;
	private final SiteManagerDAO siteManagerDAO;
```

3. EgovSiteManagerApiController
```java
@RequiredArgsConstructor

	/** EgovSiteManagerService */
//	@Resource(name = "siteManagerService")
//	private EgovSiteManagerService siteManagerService;
	private final EgovSiteManagerService siteManagerService;
```

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/08/29a/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/60

https://youtu.be/aRp4n8SNLX4


### [로그인] 셀레늄 단위 테스트

- Source > Format
- src/test/java 추가
- src/test/resources 추가
- Selenium 라이브러리 설치
- 셀레늄 단위 테스트 추가

1. 브랜치 생성

http://localhost:3000/login

http://localhost:8080/auth/login-jwt

```
/auth/login-jwt
```

```
2024/selenium/EgovLoginApiController
```

2. 셀레늄 단위 테스트 추가

```
egovframework.let.uat.uia.web
```

```
TestSelenium
TestEgovLoginApiControllerSelenium
```

/egovframe-template-simple-backend/pom.xml
```xml
		<selenium.version>4.23.1</selenium.version>
	</properties>

		<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
		<dependency>
			<groupId>org.seleniumhq.selenium</groupId>
			<artifactId>selenium-java</artifactId>
			<scope>test</scope>
		</dependency>
	</dependencies>
```

3. Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/

4. 셀레늄 사용
- Using Selenium
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/#examples

```
SLF4J: Class path contains multiple SLF4J bindings.
SLF4J: Found binding in [jar:file:/C:/EGOVFRAME/.m2/repository/ch/qos/logback/logback-classic/1.2.12/logback-classic-1.2.12.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: Found binding in [jar:file:/C:/EGOVFRAME/.m2/repository/org/apache/logging/log4j/log4j-slf4j-impl/2.17.2/log4j-slf4j-impl-2.17.2.jar!/org/slf4j/impl/StaticLoggerBinder.class]
SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
SLF4J: Actual binding is of type [ch.qos.logback.classic.util.ContextSelectorStaticBinder]
```

JRE > jre
```
Caused by: java.lang.UnsupportedClassVersionError: org/openqa/selenium/WebDriver has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime only recognizes class file versions up to 52.0
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][로그인] 셀레늄 단위 테스트

[2024년 전자정부 표준프레임워크 컨트리뷰션][심플홈페이지 BackEnd][로그인] 셀레늄 단위 테스트

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/selenium/EgovLoginApiController/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/61

https://youtu.be/43wJRS_w2pw

### [로그인] 셀레늄 단위 테스트: v4.13.0 로 버전 수정 했습니다.

v4.13.0 로 버전 수정 했습니다.

selenium jdk 8

Java 8 support in Selenium

https://www.selenium.dev/blog/2023/java-8-support/

https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java/4.13.0

[2024년 전자정부 표준프레임워크 컨트리뷰션][심플홈페이지 BackEnd][로그인] 셀레늄 단위 테스트

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/selenium/EgovLoginApiController/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/64

https://youtu.be/TpewXpFhMjA

### [2024년 전자정부 표준프레임워크 컨트리뷰션][알림마당 > 오늘의행사] 시큐어코딩 Exception 제거

- Source > Format
- `@throws Exception/throws Exception/@exception Exception Exception` 제거
- ` *   2024.09.05  이백행          컨트리뷰션 시큐어코딩 Exception 제거` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/schedule/daily?schdulSe=&year=2024&month=8&date=5
```

검색(Search)
```
/schedule/daily
```

브랜치 생성
```
2024/pmd/EgovIndvdlSchdulManageApiController
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][심플홈페이지 BackEnd][오늘의행사] 시큐어코딩 Exception 제거

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/pmd/EgovIndvdlSchdulManageApiController/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/62

https://youtu.be/OI4QwXrlMy8

### [게시판사용관리] 롬복 생성자 기반 종속성 주입

[2024년 전자정부 표준프레임워크 컨트리뷰션][심플홈페이지 BackEnd][게시판사용관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- SnsLoginApiController.loginService 필드의 값이 사용되지 않아 제거
- EgovLoginApiController.propertiesService 필드의 값이 사용되지 않아 제거
- EgovLoginApiController.leaveaTrace 필드의 값은 사용되지 않아 제거
- ` *   2024.09.20  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/bbsUseInf?pageIndex=1&searchCnd=0&searchWrd=
```

검색
```
/bbsUseInf
```

브랜치 생성
```
2024/di/EgovUserInfManageDAO
```

`@Repository` DAO
```java
//@Repository("EgovUserInfManageDAO")
@Repository
public class EgovUserInfManageDAO extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Service("EgovUserInfManageService")
@Service
@RequiredArgsConstructor
public class EgovUserInfManageServiceImpl extends EgovAbstractServiceImpl implements EgovUserInfManageService {

//	@Resource(name = "EgovUserInfManageDAO")
//	private EgovUserInfManageDAO userInfDAO;
	private final EgovUserInfManageDAO userInfDAO;
```

게시판 마스터 등록
- `@PostMapping(value = "/bbsMaster")`
- `egovBBSAttributeManageService.insertBBSMastetInf(boardMasterVO);`
```java
			if ("REGC05".equals(boardMaster.getRegistSeCode())) {
				tmpList = egovUserInfManageService.selectAllClubUser(userVO);

			} else if ("REGC06".equals(boardMaster.getRegistSeCode())) {
				tmpList = egovUserInfManageService.selectAllCmmntyUser(userVO);
```

FileManageDAO, LoginDAO, EgovComponentChecker
```java
@Repository("FileManageDAO")
@Service("EgovFileMngService")
EgovFileDownloadController
EgovFileMngApiController
EgovImageProcessController

@Repository("loginDAO")
@Service("loginService")
SnsLoginApiController
EgovLoginApiController

@Service("egovUtil")
```

FileManageDAO
```java
//@Repository("FileManageDAO")
@Repository
public class FileManageDAO extends EgovAbstractMapper {

//@Service("EgovFileMngService")
@Service
@RequiredArgsConstructor
public class EgovFileMngServiceImpl extends EgovAbstractServiceImpl implements EgovFileMngService {

//	@Resource(name = "FileManageDAO")
//	private FileManageDAO fileMngDAO;
	private final FileManageDAO fileMngDAO;

@Slf4j
@Controller
@Tag(name = "EgovFileDownloadController", description = "파일 다운로드")
@RequiredArgsConstructor
public class EgovFileDownloadController {

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileService;
	private final EgovFileMngService fileService;

	/** 암호화서비스 */
//	@Resource(name = "egovARIACryptoService")
//	EgovCryptoService cryptoService;
	private final EgovCryptoService cryptoService;

@RestController
@Tag(name = "EgovFileMngApiController", description = "파일 관리")
@RequiredArgsConstructor
public class EgovFileMngApiController {

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileService;
	private final EgovFileMngService fileService;

	/** 암호화서비스 */
//	@Resource(name = "egovARIACryptoService")
//	EgovCryptoService cryptoService;
	private final EgovCryptoService cryptoService;

@Slf4j
@Controller
@Tag(name = "EgovImageProcessController", description = "이미지 처리")
@RequiredArgsConstructor
public class EgovImageProcessController extends HttpServlet {

	/**
	 * serialVersion UID
	 */
	private static final long serialVersionUID = -6339945210971171173L;

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileService;
	private final EgovFileMngService fileService;

	/** 암호화서비스 */
//	@Resource(name = "egovARIACryptoService")
//	EgovCryptoService cryptoService;
	private final EgovCryptoService cryptoService;
```

LoginDAO
```java
@Slf4j
@RestController
@Tag(name = "SnsLoginApiController", description = "Sns 로그인 관련")
@RequiredArgsConstructor
public class SnsLoginApiController {

	/** EgovLoginService */
//	@Resource(name = "loginService")
//	private EgovLoginService loginService;
//	private final EgovLoginService loginService;
// The value of the field SnsLoginApiController.loginService is not used
// SnsLoginApiController.loginService 필드의 값이 사용되지 않습니다.

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

	/** JWT */
//	@Autowired
//	private EgovJwtTokenUtil jwtTokenUtil;
	private final EgovJwtTokenUtil jwtTokenUtil;

@Slf4j
@RestController
@Tag(name = "EgovLoginApiController", description = "로그인 관련")
@RequiredArgsConstructor
public class EgovLoginApiController {

	/** EgovLoginService */
//	@Resource(name = "loginService")
//	private EgovLoginService loginService;
	private final EgovLoginService loginService;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
	private final EgovPropertyService propertiesService;
// The value of the field EgovLoginApiController.propertiesService is not used
// EgovLoginApiController.propertiesService 필드의 값이 사용되지 않습니다.

	/** TRACE */
//	@Resource(name = "leaveaTrace")
//	LeaveaTrace leaveaTrace;
//	private final LeaveaTrace leaveaTrace;
// The value of the field EgovLoginApiController.leaveaTrace is not used
// EgovLoginApiController.leaveaTrace 필드의 값은 사용되지 않습니다.

	/** JWT */
//	@Autowired
//	private EgovJwtTokenUtil jwtTokenUtil;
	private final EgovJwtTokenUtil jwtTokenUtil;
```

EgovComponentChecker
```java
//@Service("egovUtil")
@Service
public class EgovComponentChecker extends EgovAbstractServiceImpl implements ApplicationContextAware {
```

검색
```
@Repository("
```
- `@Repository("FileManageDAO")`
- `@Repository("BBSAddedOptionsDAO")`
- `@Repository("BBSLoneMasterDAO")`
- `@Repository("EgovUserInfManageDAO")`
- `@Repository("loginDAO")`
- `@Repository("mberManageDAO")`

검색
```
@Service("
```
- `@Service("EgovFileMngService")`
- `@Service("egovUtil")`
- `@Service("EgovBBSLoneMasterService")`
- `@Service("EgovUserInfManageService")`
- `@Service("loginService")`
- `@Service("mberManageService")`

사이트관리
- 일정관리
  - http://localhost:8080/schedule/month?schdulSe=&year=2024&month=8&date=15
  - /schedule/month
  - 이백행 2024-08-27 
- 게시판생성관리
  - http://localhost:8080/bbsMaster?pageIndex=1&searchCnd=0&searchWrd=
  - /bbsMaster
  - 이백행 2024-08-28
- 게시판사용관리
  - http://localhost:8080/bbsUseInf?pageIndex=1&searchCnd=0&searchWrd=
  - /bbsUseInf
  - 이백행 2024-08-29
  - TODO 할 일: `@Repository("EgovUserInfManageDAO")` EgovUserInfManageDAO, `@Service("EgovUserInfManageService")` EgovUserInfManageServiceImpl
  - 이백행 2024-09-20
- 공지사항관리
  - http://localhost:8080/board?bbsId=BBSMSTR_AAAAAAAAAAAA&pageIndex=1&searchCnd=0&searchWrd=
  - /board
  - 이백행 2024-08-26
  - TODO 할 일: `@Repository("BBSAddedOptionsDAO")` BBSAddedOptionsDAO, `@Repository("BBSLoneMasterDAO")` BBSLoneMasterDAO, `@Service("EgovBBSLoneMasterService")` EgovBBSLoneMasterServiceImpl
  - 안단희  2024-09-20
- 사이트갤러리관리
  - http://localhost:8080/board?bbsId=BBSMSTR_BBBBBBBBBBBB&pageIndex=1&searchCnd=0&searchWrd=
- 사이트관리자 암호변경
  - http://localhost:8080/admin/password
  - /admin/password
  - 이백행 2024-08-29
- 회원관리
  - http://localhost:8080/members?pageIndex=1&searchCnd=0&searchWrd=
  - /members
  - 이백행 2024-08-28
  - TODO 할 일: `@Repository("mberManageDAO")` MberManageDAO, `@Service("mberManageService")` EgovMberManageServiceImpl, EgovMberManageApiController
  - 강동휘 2024-09-20

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/di/EgovUserInfManageDAO/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/66

https://youtu.be/bGozw9g6T10

### [게시판생성관리][BBSAttributeManageDAO.insertBBSMasterInf] DAO 단위 테스트

- 신규 게시판 속성정보를 등록한다.
- [게시판생성관리][BBSAttributeManageDAO.insertBBSMasterInf] DAO 단위 테스트
- [게시판생성관리][EgovBBSUseInfoManageServiceImpl.insertBBSMastetInf] ServiceImpl 단위 테스트
- [게시판생성관리][EgovBBSAttributeManageApiController.insertBBSMasterInf] Controller 단위 테스트

크롬 링크 주소 복사
```
http://localhost:8080/bbsMaster
```

검색
```
/bbsMaster
```

브랜치 생성
```
2024/test/EgovBBSAttributeManageApiController
```

테스트 패키지 생성
```
egovframework.let.cop.bbs.service.impl
```
테스트 파일 생성
```
BBSAttributeManageDAOTestInsertBBSMasterInfTest
```
```
EgovBBSUseInfoManageServiceImplTestInsertBBSMastetInfTest
```

테스트 패키지 생성
```
egovframework.let.cop.bbs.web
```
테스트 파일 생성
```
EgovBBSAttributeManageApiControllerTestInsertBBSMasterInfTest
```

https://github.com/LeeBaekHaeng/egovframe-template-simple-backend/commits/2024/test/EgovBBSAttributeManageApiController/

https://github.com/eGovFramework/egovframe-template-simple-backend/pull/68

https://youtu.be/3udJ0yFW9yI
