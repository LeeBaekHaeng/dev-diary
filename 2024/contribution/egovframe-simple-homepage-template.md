# 표준프레임워크 템플릿 프로젝트 심플 홈페이지

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지]

- 셀레늄 단위 테스트
- 롬복 생성자 기반 종속성 주입

## 셀레늄 단위 테스트 목차
- [[로그인] 셀레늄 단위 테스트](#로그인-셀레늄-단위-테스트)

## 롬복 생성자 기반 종속성 주입 목차
- [[오늘의 행사] 롬복 생성자 기반 종속성 주입](#오늘의-행사-롬복-생성자-기반-종속성-주입)

## 메뉴 구성

알림마당
- 오늘의 행사
- 금주의 행사
- 공지사항
- 사이트갤러리

사이트관리(관리자)
- 일정관리
- 게시판템플릿관리
- 게시판생성관리
- 게시판사용관리
- 공지사항관리
- 사이트갤러리관리

### [로그인] 셀레늄 단위 테스트

- Source > Format
- src/test/java 추가
- src/test/resources 추가
- junit-jupiter-api-5.11.0 의존(dependency) 추가
- lombok- 1.18.28 의존(dependency) 추가
- Selenium 라이브러리 설치
- 셀레늄 단위 테스트 추가

1. 브랜치 생성

http://localhost:8080/pst_webapp/uat/uia/egovLoginUsr.do

```
/uat/uia/egovLoginUsr.do
```

```
2024/selenium/EgovLoginController
```

2. 셀레늄 단위 테스트 추가

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
<!-- https://mvnrepository.com/artifact/org.seleniumhq.selenium/selenium-java -->
<dependency>
    <groupId>org.seleniumhq.selenium</groupId>
    <artifactId>selenium-java</artifactId>
    <version>4.23.1</version>
    <scope>test</scope>
</dependency>
```

3. Selenium 라이브러리 설치
- Install a Selenium library
- https://www.selenium.dev/documentation/webdriver/getting_started/install_library/

4. 셀레늄 사용
- Using Selenium
- https://www.selenium.dev/documentation/webdriver/getting_started/using_selenium/#examples

JRE > jre
```
Caused by: java.lang.UnsupportedClassVersionError: org/openqa/selenium/WebDriver has been compiled by a more recent version of the Java Runtime (class file version 55.0), this version of the Java Runtime only recognizes class file versions up to 52.0
```

cssSelector
```
#header_loginname > a
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][로그인] 셀레늄 단위 테스트

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/selenium/EgovLoginController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/20

https://youtu.be/5YYCD96TWl4

### [오늘의 행사] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.26  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/sht_webapp/cop/smt/sim/EgovIndvdlSchdulManageDailyList.do
```

검색
```
/cop/smt/sim/EgovIndvdlSchdulManageDailyList.do
```

브랜치 생성
```
2024/di/EgovIndvdlSchdulManageController
```

`@Repository` DAO
```java
//@Repository("indvdlSchdulManageDao")
@Repository
```

`@Service` ServiceImpl
```java
//@Service("egovIndvdlSchdulManageService")
@Service
@RequiredArgsConstructor
public class EgovIndvdlSchdulManageServiceImpl extends EgovAbstractServiceImpl
		implements EgovIndvdlSchdulManageService {

//	@Resource(name = "indvdlSchdulManageDao")
//	private IndvdlSchdulManageDao dao;
	private final IndvdlSchdulManageDao dao;

//	@Resource(name = "deptSchdulManageIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService deptSchdulManageIdGnrService;

```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovIndvdlSchdulManageController {

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

//	@Resource(name = "egovIndvdlSchdulManageService")
//	private EgovIndvdlSchdulManageService egovIndvdlSchdulManageService;
	private final EgovIndvdlSchdulManageService egovIndvdlSchdulManageService;

//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertiesService;
//	private final EgovPropertyService propertiesService;

	// 첨부파일 관련
//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileMngService;
	private final EgovFileMngService fileMngService;

//	@Resource(name = "EgovFileMngUtil")
//	private EgovFileMngUtil fileUtil;
	private final EgovFileMngUtil fileUtil;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][오늘의 행사] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/di/EgovIndvdlSchdulManageController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/22
