# 표준프레임워크 템플릿 프로젝트 포털 사이트

- 셀레늄 단위 테스트

## 롬복 생성자 기반 종속성 주입 목차

- [[포털 사이트][설문템플릿] 롬복 생성자 기반 종속성 주입](#포털-사이트설문템플릿-롬복-생성자-기반-종속성-주입)

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

### [게시판생성관리][BBSAttributeManageDAO.insertBBSMasterInf] DAO 단위 테스트

- Source > Format
- 신규 게시판 속성정보를 등록한다.
- [게시판생성관리][BBSAttributeManageDAO.insertBBSMasterInf] DAO 단위 테스트
- [게시판생성관리][EgovBBSAttributeManageServiceImpl.insertBBSMastetInf] ServiceImpl 단위 테스트
- [게시판생성관리][EgovBBSAttributeManageController.insertBBSMasterInf] Controller 단위 테스트
- junit-jupiter-api/lombok/spring-test jar 추가
- EgovTestAbstractSpring, EgovTestAbstractSpringMvc 추가
- /egovframe-web-sample/src/test/resources/egovframework/spring/test-context-common.xml 추가
- EgovUserDetailsHelper 추가

크롬 링크 주소 복사
```
http://localhost:8080/pst_webapp/cop/bbs/insertBBSMasterInf.do
```

검색
```
/cop/bbs/insertBBSMasterInf.do
```

브랜치 생성
```
2024/test/EgovBBSAttributeManageController
```

---

테스트 패키지 생성
```
egovframework.let.cop.bbs.service.impl
```
테스트 파일 생성
```
BBSAttributeManageDAOTestInsertBBSMasterInfTest
```
```
EgovBBSAttributeManageServiceImplTestInsertBBSMastetInfTest
```

---

테스트 패키지 생성
```
egovframework.let.cop.bbs.web
```
테스트 파일 생성
```
EgovBBSAttributeManageControllerTestInsertBBSMasterInfTest
```

---

테스트 패키지 생성
```
egovframework.test
```

---

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
		<!-- https://mvnrepository.com/artifact/org.springframework/spring-test -->
		<dependency>
			<groupId>org.springframework</groupId>
			<artifactId>spring-test</artifactId>
			<version>${spring.maven.artifact.version}</version>
			<scope>test</scope>
		</dependency>
```

---

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 포털 사이트][게시판생성관리] DAO 단위 테스트

https://github.com/LeeBaekHaeng/egovframe-portal-site-template/commits/2024/test/EgovBBSAttributeManageController/

https://github.com/eGovFramework/egovframe-portal-site-template/pull/14

https://youtu.be/bb4yY-LX5vc

### [포털 사이트][설문지] 롬복 생성자 기반 종속성 주입

[2024년 전자정부 표준프레임워크 컨트리뷰션][포털 사이트][설문지] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.23  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/pst_webapp/uss/olp/qmc/EgovQustnrManageList.do
```

검색
```
/uss/olp/qmc/EgovQustnrManageList.do
```

브랜치 생성
```
2024/di/EgovQustnrManageController
```

`@Repository` DAO
```java
//@Repository("qustnrManageDao")
@Repository
public class QustnrManageDao extends EgovAbstractMapper {
```

`@Service` ServiceImpl
```java
//@Repository("qustnrManageDao")
@Repository
public class QustnrManageDao extends EgovAbstractMapper {
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovQustnrManageController {

	private static final Logger LOGGER = LoggerFactory.getLogger(EgovQustnrManageController.class);

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovQustnrManageService")
//	private EgovQustnrManageService egovQustnrManageService;
	private final EgovQustnrManageService egovQustnrManageService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
	private final EgovPropertyService propertiesService;

//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;
```

```xml
		<!-- https://mvnrepository.com/artifact/org.projectlombok/lombok -->
		<dependency>
			<groupId>org.projectlombok</groupId>
			<artifactId>lombok</artifactId>
			<version>1.18.28</version>
			<scope>provided</scope>
		</dependency>
```

https://github.com/LeeBaekHaeng/egovframe-portal-site-template/commits/2024/di/EgovQustnrManageController/

https://github.com/eGovFramework/egovframe-portal-site-template/pull/15

https://youtu.be/YoARWAjXzsk

포털서비스관리
- 설문관리
  - 설문지: 이백행 2024-09-23 원
  - 설문템플릿: 이백행 2024-09-24 화
  - 설문문항: 이백행 2024-09-25 수
  - 설문항목: 이백행 2024-09-26 목
  - 설문응답결과: 이백행 2024-09-27 금
- 서비스관리
  - FAQ관리: 안단희 2024-09-23 원
  - QnA관리: 안단희 2024-09-24 화
  - QnA답변관리: 안단희 2024-09-25 수
  - 게시판생성관리: 안단희 2024-09-26 목
  - 게시판사용관리: 안단희 2024-09-27 금
  - 공지사항관리: 안단희 2024-09-28 토
  - 자유게시판관리: 안단희 2024-09-30 월
  - 배너관리: 안단희 2024-09-30 월
포털시스템관리
- 사용자관리
  - 회원관리: 강동휘 2024-09-23 원
  - 이용약관관리: 강동휘 2024-09-24 화
  - 개인정보보호관리: 강동휘 2024-09-25 수
- 사용자권한관리
  - 권한관리: 강동휘 2024-09-26 목
  - 사용자그룹관리: 강동휘 2024-09-27 금
  - 사용자별권한관리: 강동휘 2024-09-28 토
  - 롤관리: 강동휘 2024-09-30 월

### [포털 사이트][설문템플릿] 롬복 생성자 기반 종속성 주입

[2024년 전자정부 표준프레임워크 컨트리뷰션][포털 사이트][설문템플릿] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.24  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/pst_webapp/uss/olp/qtm/EgovQustnrTmplatManageList.do
```

검색
```
/uss/olp/qtm/EgovQustnrTmplatManageList.do
```

브랜치 생성
```
2024/di/EgovQustnrTmplatManageController
```

`@Repository` DAO
```java
//@Repository("qustnrTmplatManageDao")
@Repository
```

`@Service` ServiceImpl
```java
//@Service("egovQustnrTmplatManageService")
@Service
@RequiredArgsConstructor
public class EgovQustnrTmplatManageServiceImpl extends EgovAbstractServiceImpl
		implements EgovQustnrTmplatManageService {

//	@Resource(name = "qustnrTmplatManageDao")
//	private QustnrTmplatManageDao dao;
	private final QustnrTmplatManageDao dao;

//	@Resource(name = "egovQustnrTmplatManageIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovQustnrTmplatManageIdGnrService;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovQustnrTmplatManageController {

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovQustnrTmplatManageService")
//	private EgovQustnrTmplatManageService egovQustnrTmplatManageService;
	private final EgovQustnrTmplatManageService egovQustnrTmplatManageService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
	private final EgovPropertyService propertiesService;
```

```xml
		<!-- https://mvnrepository.com/artifact/org.projectlombok/lombok -->
		<dependency>
			<groupId>org.projectlombok</groupId>
			<artifactId>lombok</artifactId>
			<version>1.18.28</version>
			<scope>provided</scope>
		</dependency>
```

포털서비스관리
- 설문관리
  - 설문지: 이백행 2024-09-23 원
  - 설문템플릿: 이백행 2024-09-24 화
  - 설문문항: 이백행 2024-09-25 수
  - 설문항목: 이백행 2024-09-26 목
  - 설문응답결과: 이백행 2024-09-27 금
- 서비스관리
  - FAQ관리: 안단희 2024-09-23 원
  - QnA관리: 안단희 2024-09-24 화
  - QnA답변관리: 안단희 2024-09-25 수
  - 게시판생성관리: 안단희 2024-09-26 목
  - 게시판사용관리: 안단희 2024-09-27 금
  - 공지사항관리: 안단희 2024-09-28 토
  - 자유게시판관리: 안단희 2024-09-30 월
  - 배너관리: 안단희 2024-09-30 월
포털시스템관리
- 사용자관리
  - 회원관리: 강동휘 2024-09-23 원
  - 이용약관관리: 강동휘 2024-09-24 화
  - 개인정보보호관리: 강동휘 2024-09-25 수
- 사용자권한관리
  - 권한관리: 강동휘 2024-09-26 목
  - 사용자그룹관리: 강동휘 2024-09-27 금
  - 사용자별권한관리: 강동휘 2024-09-28 토
  - 롤관리: 강동휘 2024-09-30 월

https://github.com/LeeBaekHaeng/egovframe-portal-site-template/commits/2024/di/EgovQustnrTmplatManageController/

https://github.com/eGovFramework/egovframe-portal-site-template/pull/17

https://youtu.be/0YM-K_GmrWs
