# Code Generation 코드 생성

## 1. DatabaseMetaData.getTables

DatabaseMetaDataTest_getTables

```java
package god.java.sql;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.sql.DataSource;

import org.apache.commons.lang.SystemUtils;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.ImportResource;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.util.StopWatch;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { DatabaseMetaDataTest_getTables.class })
//@ActiveProfiles({ "oracle", "dummy" })
@ActiveProfiles({ "mysql", "dummy" })

@Configuration

@ImportResource({ "classpath*:/egovframework/spring/com/context-crypto.xml",
		"classpath*:/egovframework/spring/com/context-datasource.xml" })

@ComponentScan(useDefaultFilters = true, basePackages = { "god" }, includeFilters = {
		@Filter(type = FilterType.ASSIGNABLE_TYPE, classes = {}) })

public class DatabaseMetaDataTest_getTables {

	private static final StopWatch STOP_WATCH = new StopWatch();

	@Autowired
	private ApplicationContext context;

	@Autowired
	private DataSource dataSource;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		log.debug("start");
		log.debug("setUpBeforeClass");
		STOP_WATCH.start();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		log.debug("stop");
		log.debug("tearDownAfterClass");

		STOP_WATCH.stop();

		log.debug("getTotalTimeMillis={}", STOP_WATCH.getTotalTimeMillis());
		log.debug("getTotalTimeSeconds={}", STOP_WATCH.getTotalTimeSeconds());
	}

	@Before
	public void setUp() throws Exception {
		log.debug("setUp");

		String[] beanDefinitionNames = context.getBeanDefinitionNames();

		for (String beanDefinitionName : beanDefinitionNames) {
			log.debug("beanDefinitionName={}", beanDefinitionName);
		}
	}

	@After
	public void tearDown() throws Exception {
		log.debug("tearDown");
	}

	@Test
	public void test() throws Exception {
		Connection connection = dataSource.getConnection();

		DatabaseMetaData dmd = connection.getMetaData();
		log.debug("dmd={}", dmd);

//		ResultSet tables = dmd.getTables("COM", null, null, null);
//		ResultSet tables = dmd.getTables(null, "COM", null, null);
		ResultSet tables = dmd.getTables("COM", "", "", new String[] { "" });

//		ResultSet tables = dmd.getColumns("COM", "", "", "");
		log.debug("tables={}", tables);

		ResultSetMetaData rsmd = tables.getMetaData();
		int columnCount = rsmd.getColumnCount() + 1;

		debug(rsmd, columnCount);

		while (tables.next()) {
//			String TABLE_CAT = tables.getString("TABLE_CAT");
//			String TABLE_SCHEM = tables.getString("TABLE_SCHEM");
//			String TABLE_NAME = tables.getString("TABLE_NAME");
//			String TABLE_TYPE = tables.getString("TABLE_TYPE");
//			String REMARKS = tables.getString("REMARKS");
//			String TYPE_CAT = tables.getString("TYPE_CAT");
//			String TYPE_SCHEM = tables.getString("TYPE_SCHEM");
//			String TYPE_NAME = tables.getString("TYPE_NAME");
//			String SELF_REFERENCING_COL_NAME = tables.getString("SELF_REFERENCING_COL_NAME");
//			String REF_GENERATION = tables.getString("REF_GENERATION");
//
//			log.debug("TABLE_CAT={}", TABLE_CAT);
//			log.debug("TABLE_SCHEM={}", TABLE_SCHEM);
//			log.debug("TABLE_NAME={}", TABLE_NAME);
//			log.debug("TABLE_TYPE={}", TABLE_TYPE);
//			log.debug("REMARKS={}", REMARKS);
//			log.debug("TYPE_CAT={}", TYPE_CAT);
//			log.debug("TYPE_SCHEM={}", TYPE_SCHEM);
//			log.debug("TYPE_NAME={}", TYPE_NAME);
//			log.debug("SELF_REFERENCING_COL_NAME={}", SELF_REFERENCING_COL_NAME);
//			log.debug("REF_GENERATION={}", REF_GENERATION);
//			log.debug("");
//			log.debug("");
//			log.debug("");

			debug(rsmd, columnCount, tables);
		}
	}

	private ResultSetMetaData debug(ResultSetMetaData rsmd, int columnCount) throws Exception {
		log.debug("columnCount={}", columnCount);

		StringBuffer sb = new StringBuffer(SystemUtils.LINE_SEPARATOR);
		StringBuffer sb2 = new StringBuffer(SystemUtils.LINE_SEPARATOR);

		for (int i = 1; i < columnCount; i++) {
			String columnName = rsmd.getColumnName(i);
			int columnType = rsmd.getColumnType(i);

			log.debug("columnName={}", columnName);
			log.debug("columnType={}", columnType);
			log.debug("");
			log.debug("");
			log.debug("");

			log.debug("getColumnCount={}", rsmd.getColumnCount());
			log.debug("getColumnDisplaySize={}", rsmd.getColumnDisplaySize(i));
			log.debug("getColumnLabel={}", rsmd.getColumnLabel(i));
			log.debug("getColumnName={}", rsmd.getColumnName(i));
			log.debug("getColumnType={}", rsmd.getColumnType(i));
			log.debug("getColumnTypeName={}", rsmd.getColumnTypeName(i));
			log.debug("getColumnClassName={}", rsmd.getColumnClassName(i));
			log.debug("");
			log.debug("");
			log.debug("");

			if (columnType == 12) {
				sb.append("String ");
				sb.append(columnName);
				sb.append(" = tables.getString(\"");
				sb.append(columnName);
				sb.append("\");");
				sb.append(SystemUtils.LINE_SEPARATOR);
			}

			sb2.append("log.debug(\"");
			sb2.append(columnName);
			sb2.append("={}\", ");
			sb2.append(columnName);
			sb2.append(");");
			sb2.append(SystemUtils.LINE_SEPARATOR);
		}
		log.debug("{}", sb);
		log.debug("");
		log.debug("");
		log.debug("");
		log.debug("{}", sb2);
		log.debug("");
		log.debug("");
		log.debug("");

		return rsmd;
	}

	private void debug(ResultSetMetaData rsmd, int columnCount, ResultSet tables) throws Exception {
		for (int i = 1; i < columnCount; i++) {
			log.debug("{}, {}, {}", i, rsmd.getColumnName(i), tables.getString(i));
		}
		log.debug("");
		log.debug("");
		log.debug("");
	}

}

```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/4ee67d75506d644ca05e83206bad4e1c89d11a39>
