# [2024년 전자정부 표준프레임워크 컨트리뷰션] 심플홈페이지 BackEnd

롬복 생성자 기반 종속성 주입

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
