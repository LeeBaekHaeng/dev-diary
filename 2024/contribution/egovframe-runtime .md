# 표준프레임워크 실행환경 4.2.0

[2024년 전자정부 표준프레임워크 컨트리뷰션][실행환경] 이클립스 문제(Probems) 해결

## 이클립스 문제(Probems) 해결 목차
- [[ObjectOptimisticLockingFailureException] 이클립스 문제(Probems) 해결](#objectoptimisticlockingfailureexception이클립스-문제probems-해결)

### [ObjectOptimisticLockingFailureException] 이클립스 문제(Probems) 해결
- Class is a raw type. References to generic type Class<T> should be parameterized
- 클래스는 원시 유형입니다. 일반 유형 Class<T>에 대한 참조는 매개변수화되어야 합니다.
- `Class` 를 `Class<?>` 로 수정

Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 52	Java Problem
```java
//	public ObjectOptimisticLockingFailureException(Class persistentClass, Object identifier) {
	public ObjectOptimisticLockingFailureException(Class<?> persistentClass, Object identifier) {
```

Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 64	Java Problem
```java
//			Class persistentClass, Object identifier, Throwable cause) {
			Class<?> persistentClass, Object identifier, Throwable cause) {
```

Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 80	Java Problem
```java
//			Class persistentClass, Object identifier, String msg, Throwable cause) {
			Class<?> persistentClass, Object identifier, String msg, Throwable cause) {
```

Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 133	Java Problem
```java
//	public Class getPersistentClass() {
	public Class<?> getPersistentClass() {
```

Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 134	Java Problem
```java
//		return (this.persistentClass instanceof Class ? (Class) this.persistentClass : null);
		return (this.persistentClass instanceof Class ? (Class<?>) this.persistentClass : null);
```

Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 143	Java Problem
```java
//			return ((Class) this.persistentClass).getName();
			return ((Class<?>) this.persistentClass).getName();
```

### 이클립스 문제(Probems)

```
Description	Resource	Path	Location	Type
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 52	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 64	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 80	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 133	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 134	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectOptimisticLockingFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 143	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectRetrievalFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 52	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectRetrievalFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 67	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectRetrievalFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 107	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectRetrievalFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 108	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	ObjectRetrievalFailureException.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm	line 117	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	SampleAspect.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 22	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	SampleAspect.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 38	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	SampleAspect.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 49	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	SqlMapClientFactoryBean.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 102	Java Problem
Class is a raw type. References to generic type Class<T> should be parameterized	SqlMapClientFactoryBean.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 246	Java Problem
Collection is a raw type. References to generic type Collection<E> should be parameterized	EgovObjectUtil.java	/org.egovframe.rte.fdl.string/src/main/java/org/egovframe/rte/fdl/string	line 163	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	AuthorityMapFactoryBean.java	/org.egovframe.rte.fdl.access/src/main/java/org/egovframe/rte/fdl/access/bean	line 62	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	ResourceMapFactoryBean.java	/org.egovframe.rte.fdl.access/src/main/java/org/egovframe/rte/fdl/access/bean	line 63	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientOperations.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 70	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientOperations.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 76	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientOperations.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 83	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientOperations.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 90	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 244	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 244	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 288	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 292	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 295	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 296	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 302	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 308	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 312	Java Problem
List is a raw type. References to generic type List<E> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 313	Java Problem
ListOrderedMap is a raw type. References to generic type ListOrderedMap<K,V> should be parameterized	EgovMap.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/dataaccess/util	line 41	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	EgovObjectUtil.java	/org.egovframe.rte.fdl.string/src/main/java/org/egovframe/rte/fdl/string	line 165	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientOperations.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 111	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientOperations.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 118	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 258	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 258	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 337	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 341	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 342	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 348	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 352	Java Problem
Map is a raw type. References to generic type Map<K,V> should be parameterized	SqlMapClientTemplate.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/orm/ibatis	line 353	Java Problem
Optional is a raw type. References to generic type Optional<T> should be parameterized	EgovObjectUtil.java	/org.egovframe.rte.fdl.string/src/main/java/org/egovframe/rte/fdl/string	line 157	Java Problem
Project 'egovframe-runtime' has no explicit encoding set	egovframe-runtime		/egovframe-runtime	No explicit project encoding
Resource leak: 'bufReader3' is never closed	EgovARIAFileTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 53	Java Problem
Resource leak: 'context' is never closed	EgovARIAErrorTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 22	Java Problem
Resource leak: 'context' is never closed	EgovARIAFileTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 83	Java Problem
Resource leak: 'context' is never closed	EgovARIATest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 54	Java Problem
Resource leak: 'context' is never closed	EgovAccessConfigTest.java	/org.egovframe.rte.fdl.access/src/test/java/org/egovframe/rte/fdl/access/config	line 54	Java Problem
Resource leak: 'context' is never closed	EgovEnvCryptoUserTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 40	Java Problem
Resource leak: 'fs' is never closed	FilehandlingServiceTest.java	/org.egovframe.rte.fdl.filehandling/src/test/java/org/egovframe/rte/fdl/filehandling	line 150	Java Problem
Resource leak: 'wb' is never closed	CategoryExcelView.java	/org.egovframe.rte.fdl.excel/src/test/java/org/egovframe/rte/fdl/excel/download	line 27	Java Problem
Resource leak: 'workbook' is never closed	EgovExcelServiceTest.java	/org.egovframe.rte.fdl.excel/src/test/java/org/egovframe/rte/fdl/excel	line 410	Java Problem
Resource leak: 'workbook' is never closed	EgovExcelXSSFServiceTest.java	/org.egovframe.rte.fdl.excel/src/test/java/org/egovframe/rte/fdl/excel	line 407	Java Problem
ResultContext is a raw type. References to generic type ResultContext<T> should be parameterized	FileWritingResultHandler.java	/org.egovframe.rte.psl.dataaccess/src/test/java/org/egovframe/rte/psl/dataaccess/resulthandler	line 54	Java Problem
ResultHandler is a raw type. References to generic type ResultHandler<T> should be parameterized	EgovAbstractMapper.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/dataaccess	line 283	Java Problem
ResultHandler is a raw type. References to generic type ResultHandler<T> should be parameterized	EmpMapper.java	/org.egovframe.rte.psl.dataaccess/src/test/java/org/egovframe/rte/psl/dataaccess/dao	line 84	Java Problem
ResultHandler is a raw type. References to generic type ResultHandler<T> should be parameterized	EmployerMapper.java	/org.egovframe.rte.psl.dataaccess/src/test/java/org/egovframe/rte/psl/dataaccess/mapper	line 30	Java Problem
ResultHandler is a raw type. References to generic type ResultHandler<T> should be parameterized	FileWritingResultHandler.java	/org.egovframe.rte.psl.dataaccess/src/test/java/org/egovframe/rte/psl/dataaccess/resulthandler	line 29	Java Problem
RowMapper is a raw type. References to generic type RowMapper<T> should be parameterized	EgovStagingItemReader.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/example/support	line 105	Java Problem
The constructor MessageDigestPasswordEncoder(String) is deprecated	EgovUserDetailsHelper.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/userdetails/util	line 139	Java Problem
The constructor MessageDigestPasswordEncoder(String) is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 182	Java Problem
The constructor MessageDigestPasswordEncoder(String) is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 186	Java Problem
The constructor MessageDigestPasswordEncoder(String) is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 190	Java Problem
The import java.util.Base64 is never used	EgovGeneralCryptoServiceTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 13	Java Problem
The method assertThat(Boolean, Matcher<? super Boolean>) from the type Assert is deprecated	PropertySourceAnnotationTests.java	/org.egovframe.rte.fdl.property/src/test/java/org/egovframe/rte/fdl/property/annotation	line 89	Java Problem
The method assertThat(Boolean, Matcher<? super Boolean>) from the type Assert is deprecated	PropertySourceAnnotationTests.java	/org.egovframe.rte.fdl.property/src/test/java/org/egovframe/rte/fdl/property/annotation	line 90	Java Problem
The method assertThat(Order, Matcher<? super Order>) from the type Assert is deprecated	AspectjJunitTest.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 53	Java Problem
The method assertThat(Order, Matcher<? super Order>) from the type Assert is deprecated	AspectjJunitTest.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 68	Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated	PropertySourceAnnotationTests.java	/org.egovframe.rte.fdl.property/src/test/java/org/egovframe/rte/fdl/property/annotation	line 45	Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated	PropertySourceAnnotationTests.java	/org.egovframe.rte.fdl.property/src/test/java/org/egovframe/rte/fdl/property/annotation	line 56	Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated	PropertySourceAnnotationTests.java	/org.egovframe.rte.fdl.property/src/test/java/org/egovframe/rte/fdl/property/annotation	line 68	Java Problem
The method assertThat(String, Matcher<? super String>) from the type Assert is deprecated	PropertySourceAnnotationTests.java	/org.egovframe.rte.fdl.property/src/test/java/org/egovframe/rte/fdl/property/annotation	line 78	Java Problem
The method closeQuietly(LineIterator) from the type LineIterator is deprecated	FilehandlingServiceTest.java	/org.egovframe.rte.fdl.filehandling/src/test/java/org/egovframe/rte/fdl/filehandling	line 429	Java Problem
The method createRndStringOld(int) from the type EgovARIATest is never used locally	EgovARIATest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 122	Java Problem
The method decode(String) from the type URLDecoder is deprecated	EgovARIACryptoServiceTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 201	Java Problem
The method encode(String) from the type URLEncoder is deprecated	EgovARIACryptoServiceTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 197	Java Problem
The method entry() from the type Logger is deprecated	FlowTracingTestSample.java	/org.egovframe.rte.fdl.logging/src/test/java/org/egovframe/rte/fdl/logging/sample	line 17	Java Problem
The method entry(Object...) from the type Logger is deprecated	FlowTracingTestSample.java	/org.egovframe.rte.fdl.logging/src/test/java/org/egovframe/rte/fdl/logging/sample	line 31	Java Problem
The method exit(String) from the type Logger is deprecated	FlowTracingTestSample.java	/org.egovframe.rte.fdl.logging/src/test/java/org/egovframe/rte/fdl/logging/sample	line 27	Java Problem
The method exit(String) from the type Logger is deprecated	FlowTracingTestSample.java	/org.egovframe.rte.fdl.logging/src/test/java/org/egovframe/rte/fdl/logging/sample	line 33	Java Problem
The method find(String, Object...) from the type HibernateTemplate is deprecated	HibernateIntegrationDefinitionDao.java	/org.egovframe.rte.itl.integration/src/main/java/org/egovframe/rte/itl/integration/metadata/dao/hibernate	line 63	Java Problem
The method find(String, Object...) from the type HibernateTemplate is deprecated	HibernateIntegrationDefinitionDao.java	/org.egovframe.rte.itl.integration/src/main/java/org/egovframe/rte/itl/integration/metadata/dao/hibernate	line 84	Java Problem
The method find(String, Object...) from the type HibernateTemplate is deprecated	HibernateServiceDefinitionDao.java	/org.egovframe.rte.itl.integration/src/main/java/org/egovframe/rte/itl/integration/metadata/dao/hibernate	line 65	Java Problem
The method find(String, Object...) from the type HibernateTemplate is deprecated	HibernateServiceDefinitionDao.java	/org.egovframe.rte.itl.integration/src/main/java/org/egovframe/rte/itl/integration/metadata/dao/hibernate	line 86	Java Problem
The method find(String, Object...) from the type HibernateTemplate is deprecated	HibernateSystemDefinitionDao.java	/org.egovframe.rte.itl.integration/src/main/java/org/egovframe/rte/itl/integration/metadata/dao/hibernate	line 64	Java Problem
The method freeSpaceKb(String) from the type FileSystemUtils is deprecated	FilehandlingServiceTest.java	/org.egovframe.rte.fdl.filehandling/src/test/java/org/egovframe/rte/fdl/filehandling	line 382	Java Problem
The method getAttributes(Method, Class<?>) from the type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 212	Java Problem
The method getAttributes(Method, Class<?>) from the type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 235	Java Problem
The method getAttributes(Method, Class<?>) from the type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 216	Java Problem
The method getAttributes(Method, Class<?>) from the type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 241	Java Problem
The method getInstance() from the type NoOpPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 180	Java Problem
The method getSecurityMetadataSource() from the type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 249	Java Problem
The method getSecurityMetadataSource() from the type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 287	Java Problem
The method getSecurityMetadataSource() from the type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 256	Java Problem
The method getSecurityMetadataSource() from the type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 296	Java Problem
The method initializeNextBigDecimalId(String, BigDecimal) from the type EgovSequenceIdGnrServiceTest is never used locally	EgovSequenceIdGnrServiceTest.java	/org.egovframe.rte.fdl.idgnr/src/test/java/org/egovframe/rte/fdl/idgnr	line 314	Java Problem
The method isEmpty(Object) from the type StringUtils is deprecated	EgovUserDetailsHelper.java	/org.egovframe.rte.fdl.access/src/main/java/org/egovframe/rte/fdl/access/service	line 65	Java Problem
The method notNull(Object) from the type Assert is deprecated	EgovFixedLengthLineAggregator.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/file/transform	line 80	Java Problem
The method notNull(Object) from the type Assert is deprecated	SpringXmlProfileTest.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/profiles	line 22	Java Problem
The method notNull(Object) from the type Assert is deprecated	SpringXmlProfileTest.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/profiles	line 32	Java Problem
The method notNull(Object) from the type Assert is deprecated	TradeWriter.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/common/domain/trade	line 64	Java Problem
The method peekNextBigDecimalId(String) from the type EgovSequenceIdGnrServiceTest is never used locally	EgovSequenceIdGnrServiceTest.java	/org.egovframe.rte.fdl.idgnr/src/test/java/org/egovframe/rte/fdl/idgnr	line 374	Java Problem
The method queryForObject(String, Object[], Class<String>) from the type JdbcTemplate is deprecated	EgovBatchException.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/exception	line 109	Java Problem
The method setEncodeHashAsBase64(boolean) from the type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 183	Java Problem
The method setEncodeHashAsBase64(boolean) from the type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 187	Java Problem
The method setEncodeHashAsBase64(boolean) from the type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 191	Java Problem
The method state(boolean) from the type Assert is deprecated	EgovPartitionFlatFileItemWriter.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/file	line 546	Java Problem
The method state(boolean) from the type Assert is deprecated	EgovPartitionFlatFileItemWriter.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/example/support	line 590	Java Problem
The static field AuthorityResourceMetadata.authorityList should be accessed in a static way	AuthorityResourceMetadata.java	/org.egovframe.rte.fdl.access/src/main/java/org/egovframe/rte/fdl/access/bean	line 52	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 23	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 201	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 201	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 224	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 224	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 23	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 205	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 205	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 230	Java Problem
The type DelegatingMethodSecurityMetadataSource is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 230	Java Problem
The type EgovConcreteDOMFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 3	Java Problem
The type EgovConcreteDOMFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 8	Java Problem
The type EgovConcreteDOMFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 11	Java Problem
The type EgovConcreteDOMFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 16	Java Problem
The type EgovConcreteSAXFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 4	Java Problem
The type EgovConcreteSAXFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 9	Java Problem
The type EgovConcreteSAXFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 20	Java Problem
The type EgovConcreteSAXFactory is deprecated	EgovCacheset.java	/org.egovframe.rte.fdl.xml/src/test/java/org/egovframe/rte/fdl/xml/ehcache	line 25	Java Problem
The type FileSystemUtils is deprecated	FilehandlingServiceTest.java	/org.egovframe.rte.fdl.filehandling/src/test/java/org/egovframe/rte/fdl/filehandling	line 18	Java Problem
The type FileSystemUtils is deprecated	FilehandlingServiceTest.java	/org.egovframe.rte.fdl.filehandling/src/test/java/org/egovframe/rte/fdl/filehandling	line 382	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 33	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 248	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 248	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 286	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityConfigTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 286	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 33	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 255	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 255	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 295	Java Problem
The type FilterSecurityInterceptor is deprecated	EgovSecurityServiceTest.java	/org.egovframe.rte.fdl.security/src/test/java/org/egovframe/rte/fdl/security	line 295	Java Problem
The type HandlerInterceptorAdapter is deprecated	OneInterceptor.java	/org.egovframe.rte.ptl.mvc/src/test/java/org/egovframe/rte/ptl/mvc/handler	line 4	Java Problem
The type HandlerInterceptorAdapter is deprecated	OneInterceptor.java	/org.egovframe.rte.ptl.mvc/src/test/java/org/egovframe/rte/ptl/mvc/handler	line 10	Java Problem
The type HandlerInterceptorAdapter is deprecated	TwoInterceptor.java	/org.egovframe.rte.ptl.mvc/src/test/java/org/egovframe/rte/ptl/mvc/handler	line 4	Java Problem
The type HandlerInterceptorAdapter is deprecated	TwoInterceptor.java	/org.egovframe.rte.ptl.mvc/src/test/java/org/egovframe/rte/ptl/mvc/handler	line 10	Java Problem
The type MessageDigestPasswordEncoder is deprecated	EgovUserDetailsHelper.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/userdetails/util	line 28	Java Problem
The type MessageDigestPasswordEncoder is deprecated	EgovUserDetailsHelper.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/userdetails/util	line 139	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 26	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 182	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 182	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 186	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 186	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 190	Java Problem
The type MessageDigestPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 190	Java Problem
The type NoOpPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 27	Java Problem
The type NoOpPasswordEncoder is deprecated	SecurityConfigInitializer.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config	line 180	Java Problem
The type Required is deprecated	AuthoritiesQueryFactoryBean.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config/internal	line 23	Java Problem
The type Required is deprecated	AuthoritiesQueryFactoryBean.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config/internal	line 81	Java Problem
The type Required is deprecated	MapClassFactoryBean.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config/internal	line 23	Java Problem
The type Required is deprecated	MapClassFactoryBean.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config/internal	line 79	Java Problem
The type Required is deprecated	UsersQueryFactoryBean.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config/internal	line 23	Java Problem
The type Required is deprecated	UsersQueryFactoryBean.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/config/internal	line 79	Java Problem
The value of the field AbstractXMLUtility.LOGGER is not used	AbstractXMLUtility.java	/org.egovframe.rte.fdl.xml/src/main/java/org/egovframe/rte/fdl/xml	line 76	Java Problem
The value of the field CsrfAccessDeniedHandler.LOGGER is not used	CsrfAccessDeniedHandler.java	/org.egovframe.rte.fdl.security/src/main/java/org/egovframe/rte/fdl/security/intercept	line 34	Java Problem
The value of the field DefaultItemReader<T>.LOGGER is not used	DefaultItemReader.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/item	line 56	Java Problem
The value of the field EgovAccessDao.context is not used	EgovAccessDao.java	/org.egovframe.rte.fdl.access/src/main/java/org/egovframe/rte/fdl/access/service/impl	line 49	Java Problem
The value of the field EgovARIACryptoServiceImpl.base64 is not used	EgovARIACryptoServiceImpl.java	/org.egovframe.rte.fdl.crypto/src/main/java/org/egovframe/rte/fdl/cryptography/impl	line 36	Java Problem
The value of the field EgovFieldExtractor<T>.LOGGER is not used	EgovFieldExtractor.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/file/transform	line 47	Java Problem
The value of the field EgovIndexFileReader<T>.stepName is not used	EgovIndexFileReader.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/file	line 62	Java Problem
The value of the field EgovIndexFileWriter<T>.jobParameters is not used	EgovIndexFileWriter.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/file	line 68	Java Problem
The value of the field EgovIndexFileWriter<T>.stepName is not used	EgovIndexFileWriter.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/file	line 63	Java Problem
The value of the field EgovMyBatisBatchItemWriter<T>.LOGGER is not used	EgovMyBatisBatchItemWriter.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/item/database	line 56	Java Problem
The value of the field EgovReflectionSupport<T>.LOGGER is not used	EgovReflectionSupport.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/reflection	line 48	Java Problem
The value of the field EgovUserDetailsHelper.LOGGER is not used	EgovUserDetailsHelper.java	/org.egovframe.rte.fdl.access/src/main/java/org/egovframe/rte/fdl/access/service	line 49	Java Problem
The value of the field EmpVO.serialVersionUID is not used	EmpVO.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/mapper	line 7	Java Problem
The value of the field TaskletDeleteStep.file is not used	TaskletDeleteStep.java	/org.egovframe.rte.bat.core/src/main/java/org/egovframe/rte/bat/core/step	line 22	Java Problem
The value of the field TaskletJob.vResourceVariable is not used	TaskletJob.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/support/tasklet	line 27	Java Problem
The value of the field TaskletJob.vStepVariable is not used	TaskletJob.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/support/tasklet	line 25	Java Problem
The value of the field TaskletStep.vJobVariable is not used	TaskletStep.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/support/tasklet	line 21	Java Problem
The value of the field TaskletStep.vResourceVariable is not used	TaskletStep.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/support/tasklet	line 26	Java Problem
The value of the field User.serialVersionUID is not used	User.java	/org.egovframe.rte.psl.data.jpa/src/test/java/org/egovframe/rte/psl/data/jpa/domain	line 10	Java Problem
The value of the local variable arrCryptoString is not used	EgovARIATest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 48	Java Problem
The value of the local variable clazz is not used	SampleAspect.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 22	Java Problem
The value of the local variable clazz is not used	SampleAspect.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 38	Java Problem
The value of the local variable clazz is not used	SampleAspect.java	/org.egovframe.rte.fdl.cmmn/src/test/java/org/egovframe/rte/fdl/cmmn/aspectj	line 49	Java Problem
The value of the local variable decryptedURLDecoder is not used	EgovARIACryptoServiceTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 201	Java Problem
The value of the local variable dir1 is not used	FilehandlingServiceTest.java	/org.egovframe.rte.fdl.filehandling/src/test/java/org/egovframe/rte/fdl/filehandling	line 490	Java Problem
The value of the local variable egovDelimitedLineTokenizer is not used	EgovDelimitedLineTokenizerTest.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/core/item/file/transform	line 28	Java Problem
The value of the local variable encryptedURLEndoder is not used	EgovARIACryptoServiceTest.java	/org.egovframe.rte.fdl.crypto/src/test/java/org/egovframe/rte/fdl/cryptography	line 197	Java Problem
The value of the local variable i is not used	CustomerCreditIncreaseProcessor.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/exception	line 26	Java Problem
The value of the local variable now is not used	TaskletCreateDataStep.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/core/step	line 44	Java Problem
The value of the local variable random is not used	TaskletCreateDataStep.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/core/step	line 42	Java Problem
The value of the local variable sdfDate is not used	TaskletCreateDataStep.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/core/step	line 43	Java Problem
Type safety: The expression of type FlatFileItemWriter needs unchecked conversion to conform to FlatFileItemWriter<CustomerCredit>	TaskletCreateDataStep.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/rte/bat/core/step	line 38	Java Problem
Type safety: The method put(Object, Object) belongs to the raw type ListOrderedMap. References to generic type ListOrderedMap<K,V> should be parameterized	EgovMap.java	/org.egovframe.rte.psl.dataaccess/src/main/java/org/egovframe/rte/psl/dataaccess/util	line 58	Java Problem
Type safety: Unchecked cast from Object to List<Object>	CategoryExcelView.java	/org.egovframe.rte.fdl.excel/src/test/java/org/egovframe/rte/fdl/excel/download	line 44	Java Problem
Type safety: Unchecked cast from Object to Map<String,Object>	CategoryExcelView.java	/org.egovframe.rte.fdl.excel/src/test/java/org/egovframe/rte/fdl/excel/download	line 43	Java Problem
Type safety: Unchecked cast from Object to Map<String,String>	CategoryExcelView.java	/org.egovframe.rte.fdl.excel/src/test/java/org/egovframe/rte/fdl/excel/download	line 76	Java Problem
Unnecessary @SuppressWarnings("deprecation")	EgovColumnRangePartitioner.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/example/support	line 79	Java Problem
Unnecessary @SuppressWarnings("deprecation")	EgovStagingItemProcessor.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/example/support	line 44	Java Problem
Unnecessary @SuppressWarnings("restriction")	EgovEmailEventNoticeTrigger.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/example/event	line 121	Java Problem
Unnecessary @SuppressWarnings("restriction")	EgovStringUtil.java	/org.egovframe.rte.fdl.string/src/main/java/org/egovframe/rte/fdl/string	line 561	Java Problem
Unnecessary @SuppressWarnings("restriction")	EgovStringUtil.java	/org.egovframe.rte.fdl.string/src/main/java/org/egovframe/rte/fdl/string	line 574	Java Problem
Unnecessary @SuppressWarnings("unchecked")	EgovCompositeItemWriterSampleFunctionalTests.java	/org.egovframe.rte.bat.core/src/test/java/org/egovframe/brte/sample/testcase/test	line 105	Java Problem
Unnecessary @SuppressWarnings("unchecked")	EgovPropertyServiceImpl.java	/org.egovframe.rte.fdl.property/src/main/java/org/egovframe/rte/fdl/property/impl	line 247	Java Problem
Unnecessary @SuppressWarnings("unchecked")	TypedList.java	/org.egovframe.rte.itl.integration/src/main/java/org/egovframe/rte/itl/integration/message/typed	line 100	Java Problem
```
