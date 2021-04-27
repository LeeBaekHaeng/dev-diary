# 리팩토링

## 1. AllTablesMapperTest_selectList 리팩토링

### 1.1 @ImportResource 수정

```java
//@ImportResource({ "classpath*:/egovframework/spring/com/test-context-dao.xml" })
@ImportResource({

		"classpath*:/egovframework/spring/com/context-crypto.xml",
		"classpath*:/egovframework/spring/com/context-datasource.xml",
		"classpath*:/egovframework/spring/com/context-mapper.xml",
		"classpath*:/egovframework/spring/com/context-mapper-god-oracle.xml",

		"classpath*:/egovframework/spring/com/test-context-common.xml",

})
```

### 1.2. @Autowired private 추가

```java
	@Autowired
	private ApplicationContext context;

	@Autowired
	private AllTablesMapper mapper;
```

### 1.3. StopWatch 추가

```java
import org.springframework.util.StopWatch;

	private static final StopWatch STOP_WATCH = new StopWatch();

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		log.debug("setUpBeforeClass");

		log.debug("start");
		STOP_WATCH.start();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		log.debug("tearDownAfterClass");

		log.debug("stop");
		STOP_WATCH.stop();

		log.debug("getTotalTimeMillis={}", STOP_WATCH.getTotalTimeMillis());
		log.debug("getTotalTimeSeconds={}", STOP_WATCH.getTotalTimeSeconds());
	}
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/7c466d7cf05b89077ceaad21b88c9e2db8f5d9ae>

## 2. CrudCodeGenTest_A1_sql 리팩토링

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/230af6e16d9ab2a216c3066e58c8ebdd69c427d3>

## 3. CrudCodeGenTest_A2_sql 리팩토링

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/c3b89734ced060bbc89af4a7bfeeb8e229f1c508>

## 4. CrudCodeGenTest_B1_excel 리팩토링

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/4e3a7c604b97025009b7ebdaa13d2f5526e15f08>

## 5. CrudCodeGenTest_B2_excel 리팩토링

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/33d5af0a6759faedf10d87913601f138eae6e0f4>

## 6. CrudCodeGenTest_C1_src 리팩토링

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/0f90476aa792d36ea58baf28a69694d7143f8078>

<https://youtu.be/9-cSqPFcfd8>
