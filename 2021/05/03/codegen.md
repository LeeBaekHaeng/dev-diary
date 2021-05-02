# Code Generation 코드 생성 - setColumnVO

```java
package god.test;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StopWatch;

import lombok.extern.slf4j.Slf4j;

@Slf4j

@RunWith(SpringJUnit4ClassRunner.class)

//@ActiveProfiles({ "altibase", "dummy" })
//@ActiveProfiles({ "cubrid", "dummy" })
//@ActiveProfiles({ "maria", "dummy" })
//@ActiveProfiles({ "mysql", "dummy" })
@ActiveProfiles({ "oracle", "dummy" })
//@ActiveProfiles({ "postgres", "dummy" })
//@ActiveProfiles({ "tibero", "dummy" })

@Transactional

public class GodTestV1 {

	private static final StopWatch STOP_WATCH = new StopWatch();
	private static final StopWatch STOP_WATCH2 = new StopWatch();

	private static String[] beanDefinitionNames;

	@Autowired
	private ApplicationContext context;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		log.info("setUpBeforeClass");
		log.info("");

		log.info("start");
		log.info("");
		STOP_WATCH.start();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		log.info("tearDownAfterClass");
		log.info("");

		log.info("stop");
		log.info("");
		STOP_WATCH.stop();

		log.info("getTotalTimeMillis={}", STOP_WATCH.getTotalTimeMillis());
		log.info("getTotalTimeSeconds={}", STOP_WATCH.getTotalTimeSeconds());
	}

	@Before
	public void setUp() throws Exception {
		log.info("setUp");
		log.info("");

		log.info("start2");
		log.info("");
		STOP_WATCH2.start();

		if (beanDefinitionNames == null) {
			beanDefinitionNames = context.getBeanDefinitionNames();

			log.debug("beanDefinitionNames.length={}", beanDefinitionNames.length);
			log.debug("");

			for (String beanDefinitionName : beanDefinitionNames) {
				log.debug("beanDefinitionName={}", beanDefinitionName);
			}

			log.debug("");
		}
	}

	@After
	public void tearDown() throws Exception {
		log.info("tearDown");
		log.info("");

		log.info("stop2");
		log.info("");
		STOP_WATCH2.stop();

		log.info("getTotalTimeMillis={}", STOP_WATCH2.getTotalTimeMillis());
		log.info("getTotalTimeSeconds={}", STOP_WATCH2.getTotalTimeSeconds());
	}

}
```

```java
package god.java.sql;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.ImportResource;

import god.codegen.datamodel.service.DataModelService;
import god.codegen.oracle.alltabcols.service.impl.AllTabColsMapper;
import god.codegen.oracle.alltables.service.impl.AllTablesMapper;

@Configuration

@ImportResource({

//		"classpath*:egovframework/spring/com/**/context-*.xml",

		"classpath*:/egovframework/spring/com/context-crypto.xml",
		"classpath*:/egovframework/spring/com/context-datasource.xml",

		"classpath*:egovframework/spring/com/context-mapper.xml",
		"classpath*:egovframework/spring/com/context-mapper-god-oracle.xml",

		"classpath*:egovframework/spring/com/context-transaction.xml",

		"classpath*:egovframework/spring/com/test-context-common.xml",

})

@ComponentScan(useDefaultFilters = false, basePackages = { "god" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = { AllTablesMapper.class, AllTabColsMapper.class,
				DatabaseMetaDataOracle.class, DataModelService.class }) })

public class A0_Configuration {

}
```

```java
@Slf4j
@ContextConfiguration(classes = { A0_Configuration.class })
public class A1_sql extends GodTestV1 {
```

```java
import oracle.jdbc.OracleConnection;

		try {
			Connection con = ds.getConnection();

			if (con.isWrapperFor(OracleConnection.class)) {
				OracleConnection oracleConnection = con.unwrap(OracleConnection.class);
				log.debug("getRemarksReporting={}", oracleConnection.getRemarksReporting());
				oracleConnection.setRemarksReporting(true);
				log.debug("getRemarksReporting={}", oracleConnection.getRemarksReporting());
			}

			dmd = con.getMetaData();
		} catch (SQLException e) {
			log.error(e.getMessage());
		}
```

```java

		try {
			ResultSet rs = dmd.getTables(dataModelVO.getCatalog(), dataModelVO.getSchemaPattern(),
					dataModelVO.getTableNamePattern(), dataModelVO.getTypes());

			while (rs.next()) {
				TableVO table = new TableVO();

				table.setTableSchem(rs.getString("TABLE_SCHEM"));
				table.setTableName(rs.getString("TABLE_NAME"));
				table.setRemarks(rs.getString("REMARKS"));

				tables.add(table);
			}
		} catch (SQLException e) {
			log.error(e.getMessage());
		}
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/9835c4c82324095610d2bf24aa55f4ff009d956b>
