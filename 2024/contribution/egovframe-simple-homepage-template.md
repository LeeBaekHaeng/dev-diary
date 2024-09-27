# 표준프레임워크 템플릿 프로젝트 심플 홈페이지

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지]

- 셀레늄 단위 테스트
- 롬복 생성자 기반 종속성 주입

## 셀레늄 단위 테스트 목차
- [[로그인] 셀레늄 단위 테스트](#로그인-셀레늄-단위-테스트)

## 롬복 생성자 기반 종속성 주입 목차
- [[오늘의 행사] 롬복 생성자 기반 종속성 주입](#오늘의-행사-롬복-생성자-기반-종속성-주입)
- [[공지사항] 롬복 생성자 기반 종속성 주입](#공지사항-롬복-생성자-기반-종속성-주입)
- [[게시판템플릿관리] 롬복 생성자 기반 종속성 주입](#게시판템플릿관리-롬복-생성자-기반-종속성-주입)
- [[게시판생성관리] 롬복 생성자 기반 종속성 주입](#게시판생성관리-롬복-생성자-기반-종속성-주입)
- [[게시판사용관리] 롬복 생성자 기반 종속성 주입](#게시판사용관리-롬복-생성자-기반-종속성-주입)
- [[게시판속성관리?] 롬복 생성자 기반 종속성 주입](#게시판속성관리-롬복-생성자-기반-종속성-주입)

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

### [공지사항] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.27  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/sht_webapp/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA&menuNo=43
```

검색
```
/cop/bbs/selectBoardList.do
```

브랜치 생성
```
2024/di/EgovBBSManageController
```

`@Repository` DAO
```java
//@Repository("BBSManageDAO")
@Repository
```

`@Service` ServiceImpl
```java
//@Service("EgovBBSManageService")
@Service
@RequiredArgsConstructor
public class EgovBBSManageServiceImpl extends EgovAbstractServiceImpl implements EgovBBSManageService {

//	@Resource(name = "BBSManageDAO")
//	private BBSManageDAO bbsMngDAO;
	private final BBSManageDAO bbsMngDAO;

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileService;
	private final EgovFileMngService fileService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
//	private final EgovPropertyService propertyService;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovBBSManageController {

//	@Resource(name = "EgovBBSManageService")
//	private EgovBBSManageService bbsMngService;
	private final EgovBBSManageService bbsMngService;

//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;

//	@Resource(name = "EgovFileMngService")
//	private EgovFileMngService fileMngService;
	private final EgovFileMngService fileMngService;

//	@Resource(name = "EgovFileMngUtil")
//	private EgovFileMngUtil fileUtil;
	private final EgovFileMngUtil fileUtil;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;

	// ---------------------------------
	// 2009.06.29 : 2단계 기능 추가
	// ---------------------------------
	// SHT-CUSTOMIZING//@Resource(name = "EgovBBSCommentService")
	// SHT-CUSTOMIZING//private EgovBBSCommentService bbsCommentService;

	// SHT-CUSTOMIZING//@Resource(name = "EgovBBSSatisfactionService")
	// SHT-CUSTOMIZING//private EgovBBSSatisfactionService bbsSatisfactionService;

	// SHT-CUSTOMIZING//@Resource(name = "EgovBBSScrapService")
	// SHT-CUSTOMIZING//private EgovBBSScrapService bbsScrapService;
	//// -------------------------------

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;
```

```java
@Controller
@SessionAttributes(types = ComDefaultVO.class)
@RequiredArgsConstructor
public class EgovMainController {

	/**
	 * EgovBBSManageService
	 */
//	@Resource(name = "EgovBBSManageService")
//	private EgovBBSManageService bbsMngService;
	private final EgovBBSManageService bbsMngService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][공지사항] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/di/EgovBBSManageController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/23

https://youtu.be/cGdRuvyVWKY

### [게시판템플릿관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.27  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/sht_webapp/cop/com/selectTemplateInfs.do?menuNo=52
```

검색
```
/cop/com/selectTemplateInfs.do
```

브랜치 생성
```
2024/di/EgovTemplateManageController
```

`@Repository` DAO
```java
//@Repository("TemplateManageDAO")
@Repository
```

`@Service` ServiceImpl
```java
//@Service("EgovTemplateManageService")
@Service
@RequiredArgsConstructor
public class EgovTemplateManageServiceImpl extends EgovAbstractServiceImpl implements EgovTemplateManageService {

//	@Resource(name = "TemplateManageDAO")
//	private TemplateManageDAO tmplatDAO;
	private final TemplateManageDAO tmplatDAO;

//	@Resource(name = "egovTmplatIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovTmplatIdGnrService;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovTemplateManageController {

//	@Resource(name = "EgovTemplateManageService")
//	private EgovTemplateManageService tmplatService;
	private final EgovTemplateManageService tmplatService;

//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;

//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][게시판템플릿관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/di/EgovTemplateManageController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/24

https://youtu.be/q69C8k9yqpg

### [게시판생성관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.27  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정

크롬 링크 주소 복사
```
http://localhost:8080/sht_webapp/cop/bbs/SelectBBSMasterInfs.do?menuNo=53
```

검색
```
/cop/bbs/SelectBBSMasterInfs.do
```

브랜치 생성
```
2024/di/EgovBBSAttributeManageController
```

`@Repository` DAO
```java

```

`@Service` ServiceImpl
```java

```

`@Controller` Controller
```java

```

```java
@Controller
@RequiredArgsConstructor
public class EgovBBSManageController {

	@Resource(name = "EgovBBSManageService")
	private EgovBBSManageService bbsMngService;

//	@Resource(name = "EgovBBSAttributeManageService")
//	private EgovBBSAttributeManageService bbsAttrbService;
	private final EgovBBSAttributeManageService bbsAttrbService;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][게시판생성관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/di/EgovBBSAttributeManageController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/25

https://youtu.be/j-EQxJqmesA

### [게시판사용관리] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.27  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정
- 할 일(TODO) 게시판 속성관리 못 찾겠음
- 할 일(TODO) 사용여부에서 사용/사용중지 안됨

크롬 링크 주소 복사
```
http://localhost:8080/sht_webapp/cop/com/selectBBSUseInfs.do?menuNo=54
```

검색
```
/cop/com/selectBBSUseInfs.do
```

브랜치 생성
```
2024/di/EgovBBSUseInfoManageController
```

`@Repository` DAO
```java
//@Repository("BBSUseInfoManageDAO")
@Repository
```

`@Service` ServiceImpl
```java
//@Service("EgovBBSUseInfoManageService")
@Service
@RequiredArgsConstructor
public class EgovBBSUseInfoManageServiceImpl extends EgovAbstractServiceImpl implements EgovBBSUseInfoManageService {

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseDAO;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovBBSUseInfoManageController {

	/** EgovBBSUseInfoManageService */
//	@Resource(name = "EgovBBSUseInfoManageService")
//	private EgovBBSUseInfoManageService bbsUseService;
	private final EgovBBSUseInfoManageService bbsUseService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

	/** DefaultBeanValidator */
//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;
```

```java
@Service("EgovBBSLoneMasterService")
@RequiredArgsConstructor
public class EgovBBSLoneMasterServiceImpl extends EgovAbstractServiceImpl implements EgovBBSLoneMasterService {

	@Resource(name = "BBSLoneMasterDAO")
	private BBSLoneMasterDAO masterDAO;

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseDAO;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][게시판사용관리] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/di/EgovBBSUseInfoManageController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/26

https://youtu.be/aZqJXibUF-Q

### [게시판속성관리?] 롬복 생성자 기반 종속성 주입

- Source > Format
- `@Repository("DAO")` 를 `@Repository` 로 수정
- `@Service("Service")` 를 `@Service` 로 수정
- `@RequiredArgsConstructor` 추가
- ` *   2024.09.27  이백행          컨트리뷰션 롬복 생성자 기반 종속성 주입` 개정이력 수정
- 할 일(TODO) 게시판 속성관리 못 찾겠음

크롬 링크 주소 복사
```
게시판 속성관리 못 찾겠음
```

검색
```
/cop/bbs/selectBoardMasterList.do
```

브랜치 생성
```
2024/di/EgovBBSLoneMasterController
```

`@Repository` DAO
```java
//@Repository("BBSLoneMasterDAO")
@Repository
```

`@Service` ServiceImpl
```java
//@Service("EgovBBSLoneMasterService")
@Service
@RequiredArgsConstructor
public class EgovBBSLoneMasterServiceImpl extends EgovAbstractServiceImpl implements EgovBBSLoneMasterService {

//	@Resource(name = "BBSLoneMasterDAO")
//	private BBSLoneMasterDAO masterDAO;
	private final BBSLoneMasterDAO masterDAO;

//	@Resource(name = "BBSUseInfoManageDAO")
//	private BBSUseInfoManageDAO bbsUseDAO;
	private final BBSUseInfoManageDAO bbsUseDAO;

//	@Resource(name = "egovBBSMstrIdGnrService")
//	private EgovIdGnrService idgenService;
	private final EgovIdGnrService egovBBSMstrIdGnrService;
```

`@Controller` Controller
```java
@Controller
@RequiredArgsConstructor
public class EgovBBSLoneMasterController {

	/** EgovBBSLoneMasterService */
//	@Resource(name = "EgovBBSLoneMasterService")
//	private EgovBBSLoneMasterService bbsLoneService;
	private final EgovBBSLoneMasterService bbsLoneService;

	/** EgovCmmUseService */
//	@Resource(name = "EgovCmmUseService")
//	private EgovCmmUseService cmmUseService;
	private final EgovCmmUseService cmmUseService;

	/** EgovPropertyService */
//	@Resource(name = "propertiesService")
//	protected EgovPropertyService propertyService;
	private final EgovPropertyService propertyService;

	/** DefaultBeanValidator */
//	@Autowired
//	private DefaultBeanValidator beanValidator;
	private final DefaultBeanValidator beanValidator;

	/** EgovMessageSource */
//	@Resource(name = "egovMessageSource")
//	EgovMessageSource egovMessageSource;
	private final EgovMessageSource egovMessageSource;
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][템플릿 프로젝트 심플 홈페이지][게시판속성관리?] 롬복 생성자 기반 종속성 주입

https://github.com/LeeBaekHaeng/egovframe-simple-homepage-template/commits/2024/di/EgovBBSLoneMasterController/

https://github.com/eGovFramework/egovframe-simple-homepage-template/pull/27

https://youtu.be/_QjcqfxEkbY
