# 개발일기

## 할 일(To Do)
- 컨트리뷰션 공통컴포넌트 테스트 코드 사용 가이드(2022-04-26)
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - https://github.com/godsoft2016/egovframe-common-components
    - https://github.com/godsoft2016/egovframe-development
    - 개발환경
        - [2022 전자정부 표준프레임워크 컨트리뷰션 참가-CRUD 프로그램 자동 생성 기능](https://github.com/eGovFramework/egovframe-development/pull/34)
        - [CRUD 프로그램 자동 생성 기능 템플릿 수정](https://github.com/eGovFramework/egovframe-development/pull/35)
    - 공통컴포넌트
        - [2022 전자정부 표준프레임워크 컨트리뷰션 참가-CRUD 프로그램 자동 생성 기능 추가](https://github.com/eGovFramework/egovframe-common-components/pull/49)
        - [EgovComAbstractDAO 를 EgovComAbstractMapper 로 클래스명을 수정](https://github.com/eGovFramework/egovframe-common-components/pull/50)
- [코드생성(god.codegen)](https://github.com/LeeBaekHaeng/god.codegen)
    - [CRUD 프로그램 자동 생성 기능](https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev2:imp:codegen:template:crud#crud_%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8_%EC%9E%90%EB%8F%99_%EC%83%9D%EC%84%B1_%EA%B8%B0%EB%8A%A5)
        - mapper v3.8.0 이상
        - sqlmap v3.7.3 이하(ibatis-sqlmap-2.3.4.726.jar)
- [공통컴포넌트 3.10.0 단위 테스트](todo/todo.md)
    - 전자정부 표준프레임워크 3.10.0
- [셀레늄(Selenium) 사용법](https://www.selenium.dev/)
    - 셀레늄은 웹 애플리케이션 테스트를 위한 포터블 프레임워크이다.

## 2022-06-02
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - DATA_TYPE decimal 을 int 로
            - https://github.com/LeeBaekHaeng/god.codegen/commit/235576201b63cd2a297f04b819ef5b1e354050f7

## 2022-06-01
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - setAttributes, setPrimaryKeys
            - https://github.com/LeeBaekHaeng/god.codegen/commit/e1186556715c33a9350644de54e3aac5808fa447

## 2022-05-31
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - 패키지 aaa_sample2 를 aaasample2 로 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/55e7833570cb1a52e714a63efae7b5d6fcf3e448

## 2022-05-28
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - '3.2.4 java method' 별로 프로그램정보 엑셀 생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/351b6aec68fa28b076f24dda729ff52131b22b89
        - CRUD_프로그램_자동_생성_기능 생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/f28ece8549d9dda9eddb67e629cc64ea89a81c2d

## 2022-05-27
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - INFORMATION_SCHEMA.COLUMNS 로 엑셀 생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/e13d8ce143be682f72ab00dba1bc54fc13c84272
        - 메뉴관리
            - https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.0:sym:%EB%A9%94%EB%89%B4%EA%B4%80%EB%A6%AC
            - 메뉴일괄 엑셀양식	
                - https://www.egovframe.go.kr/wiki/lib/exe/fetch.php?media=egovframework:com:v2:sym:batchmenubind_%EB%A9%94%EB%89%B4%EC%83%98%ED%94%8C.xls
        - 프로그램관리
            - https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.0:sym:%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8%EA%B4%80%EB%A6%AC
        - batchmenubind_메뉴샘플.xls
            - https://github.com/LeeBaekHaeng/god.codegen/commit/983ac1dc1b4906c30d09bb30e39a3764251f93f1

INFORMATION_SCHEMA.COLUMNS 로 엑셀 생성
```java
			try (

					Statement stmt = con.createStatement();

					ResultSet columns = stmt
							.executeQuery("SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'COM'");

			) {

				ResultSetMetaData rsmd = columns.getMetaData();
				int columnCount = rsmd.getColumnCount();
				egovLogger.debug("columnCount={}", columnCount);
				StringBuffer sb = new StringBuffer();
				StringBuffer sb2 = new StringBuffer();
				StringBuffer sb3 = new StringBuffer();
				StringBuffer sb4 = new StringBuffer();
				int column2 = 0;
				for (int column = 1; column <= columnCount; column++) {
					String columnLabel = rsmd.getColumnLabel(column);
					String columnTypeName = rsmd.getColumnTypeName(column);
					String columnLabelCcName = NamingUtils.convertUnderscoreNameToCamelcase(columnLabel);

					egovLogger.debug("columnLabel={}", columnLabel);
					egovLogger.debug("getColumnName={}", rsmd.getColumnName(column));
					egovLogger.debug("getColumnType={}", rsmd.getColumnType(column));
					egovLogger.debug("columnTypeName={}", columnTypeName);
					egovLogger.debug("");

					if ("VARCHAR".equals(columnTypeName)) {
						sb.append("String " + columnLabelCcName + " = columns.getString(\"" + columnLabel + "\");");
					} else if ("DATETIME".equals(columnTypeName)) {
						sb.append("String " + columnLabelCcName + " = columns.getString(\"" + columnLabel + "\");");
					} else {
						sb.append("int " + columnLabelCcName + " = columns.getInt(\"" + columnLabel + "\");");
					}
					sb.append("\n");

					sb2.append("egovLogger.debug(\"" + columnLabelCcName + "={}\", " + columnLabelCcName + ");");
					sb2.append("\n");

					char abc = (char) (65 + column2);
					sb3.append("Cell cell" + abc + " = row.createCell(" + column2 + ");\n");
					sb3.append("cell" + abc + ".setCellValue(\"" + columnLabel + "\");\n\n");

					sb4.append("cell" + abc + " = row.createCell(" + column2 + ");\n");
					sb4.append("cell" + abc + ".setCellValue(" + columnLabelCcName + "); // " + columnLabel + "\n\n");

					column2++;
				}
				System.out.println(sb);
				System.out.println(sb2);
				System.out.println(sb3);
				System.out.println(sb4);
```

## 2022-05-26
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - getColumnTypeName으로 분기처리
            - https://github.com/LeeBaekHaeng/god.codegen/commit/842ff375121a5552130a607d09e46eae8ec08dbe

```java
					Statement stmt = con.createStatement();

					ResultSet tables = stmt
							.executeQuery("SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'COM'");

			) {

				ResultSetMetaData rsmd = tables.getMetaData();
				int columnCount = rsmd.getColumnCount();
				egovLogger.debug("columnCount={}", columnCount);
				StringBuffer sb = new StringBuffer();
				StringBuffer sb2 = new StringBuffer();
				for (int column = 1; column <= columnCount; column++) {
					String columnLabel = rsmd.getColumnLabel(column);
					String columnTypeName = rsmd.getColumnTypeName(column);
					String columnLabelCcName = NamingUtils.convertUnderscoreNameToCamelcase(columnLabel);

					egovLogger.debug("columnLabel={}", columnLabel);
					egovLogger.debug("getColumnName={}", rsmd.getColumnName(column));
					egovLogger.debug("getColumnType={}", rsmd.getColumnType(column));
					egovLogger.debug("columnTypeName={}", columnTypeName);
					egovLogger.debug("");

					if ("VARCHAR".equals(columnTypeName)) {
						sb.append("String " + columnLabelCcName + " = tables.getString(\"" + columnLabel + "\");");
					} else if ("DATETIME".equals(columnTypeName)) {
						sb.append("String " + columnLabelCcName + " = tables.getString(\"" + columnLabel + "\");");
					} else {
						sb.append("int " + columnLabelCcName + " = tables.getInt(\"" + columnLabel + "\");");
					}
					sb.append("\n");

					sb2.append("egovLogger.debug(\"" + columnLabelCcName + "={}\", " + columnLabelCcName + ");");
					sb2.append("\n");
				}
				System.out.println(sb);
				System.out.println(sb2);
```

## 2022-05-25
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - DatabaseMetaData.getColumns 로 엑셀 파일 생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/ff432ea2615b3223df6e7146b0dd533859611259
        - ResultSetMetaData rsmd = tables.getMetaData();
            - https://github.com/LeeBaekHaeng/god.codegen/commit/a5753fea9135bf85c5543ddb40a9551cf9a50e00
```java
ResultSetMetaData rsmd = tables.getMetaData();
int columnCount = rsmd.getColumnCount();
egovLogger.debug("columnCount={}", columnCount);
for (int column = 1; column <= columnCount; column++) {
    egovLogger.debug("getColumnLabel={}", rsmd.getColumnLabel(column));
    egovLogger.debug("getColumnName={}", rsmd.getColumnName(column));
    egovLogger.debug("getColumnType={}", rsmd.getColumnType(column));
    egovLogger.debug("getColumnTypeName={}", rsmd.getColumnTypeName(column));
    egovLogger.debug("");
}
```

## 2022-05-24
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - DatabaseMetaData.getTables 로 엑셀 파일 생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/45bcba8d069aaedeee360066951610433d32c75e

## 2022-05-21
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - 단위 테스트 메서드명 순서대로 수정 C(a1), R(b1), U(c1), D(d1)
            - https://github.com/LeeBaekHaeng/god.codegen/commit/32b444b11de708e6e8d8da5716b2499675941eed
            - https://github.com/godsoft2016/egovframe-development/commit/99d9b628531b1178c56df9d1b19b5ff9f3ced4f7

## 2022-05-14
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - EgovSample2ControllerTest.vm today 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/094fc3be3dba38fa87aa6149304fd497018319da
            - https://github.com/godsoft2016/egovframe-development/commit/99d9b628531b1178c56df9d1b19b5ff9f3ced4f7

## 2022-05-13
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - EgovSample2ControllerTest.vm 추가
            - @FixMethodOrder(MethodSorters.NAME_ASCENDING)
                - a1_insertSample2View
                - b1_insertSample2
            - https://github.com/LeeBaekHaeng/god.codegen/commit/46ac8176b9e3ca8ae3aaaf65481331785cea85d0
            - https://github.com/godsoft2016/egovframe-development/commit/e1c8b58ffcf587b0762718f080ef483dece39660
        - pk 파라미터 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/451d9b3a98d30575f743529e0f6a282d285f5717
            - https://github.com/godsoft2016/egovframe-development/commit/8f347f17f3ee45e6c4d72933b0ab349b366a7857

## 2022-05-12
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - Sample2DAOTest.vm Autowired 를 Resource 로 수정
        - Sample2MapperTest.vm, EgovSample2ServiceImplTest.vm 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/912eba14e3d257893e2c0da7bdbb53a50f218d78
            - https://github.com/godsoft2016/egovframe-development/commit/c198d3059137254e132b446fa0f5d38873983579
        - MockMvc Sample2ControllerTest 추가
            - https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev2:tst:mvc_test
            - https://github.com/LeeBaekHaeng/god.codegen/commit/e51495ab1224f19f9fe647c17abb5f29a3ecb4c5

## 2022-05-11
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - Sample2DAOTest.vm ComDefaultVO 조건 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/f760eef7442759a92fe2d31a0fb615e650affc15
            - https://github.com/godsoft2016/egovframe-development/commit/6597a9d31b97a3086f529b0cf067cdedf416464f

## 2022-05-10
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - Sample2DAOTest.vm isPrimaryKey 처리
            - https://github.com/LeeBaekHaeng/god.codegen/commit/f11ba35468191e1cc3250ca95038d7f3b3be086e
            - https://github.com/godsoft2016/egovframe-development/commit/e3ffe7d8eef1fa0587783ae88d17491d80b435f4

## 2022-05-09
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - Sample2DAO.vm insert 를 update 로 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/735eafbe005da749af0239a43293adf8935a65e5
            - https://github.com/godsoft2016/egovframe-development/commit/7674a9eb19180ea77670683e01711b94a810980b

## 2022-05-07
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - Maven > Update Project 후 커밋
            - https://github.com/godsoft2016/egovframe-development/commit/a3cf44e7a8b290241e929b0bf55b1ced3c17f091
        - crud-com Sample2DAOTest.vm 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/da732b6250c9360cb8ec2f1e7e03e0c1e75afa5e
            - https://github.com/godsoft2016/egovframe-development/commit/f1459937a7768f6b89d173a9dc752ef1c022a941

## 2022-05-06
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - testServiceImpl 수정 egovLogger, EgovAbstractServiceImpl, EgovMap 등 수정
            - https://github.com/godsoft2016/egovframe-development/commit/3ed97620c1687a258a6ddff5a83d4227c9d77323
        - egovframework.dev.imp.templates .classpath 에서 lib 를 제거
        - pom.xml 수정
        - ResourceUtils, TemplateUtil, TemplatesPlugin 주석
            - https://github.com/godsoft2016/egovframe-development/commit/11df7f2f4eb7532940896d74be9a9ece5bbcbf55

```xml
	<classpathentry kind="lib" path="lib/java-diff-1.1.0.jar"/>
	<classpathentry kind="lib" path="lib/commons-collections-3.2.1.jar"/>
	<classpathentry kind="lib" path="lib/commons-lang-2.4.jar"/>
	<classpathentry kind="lib" path="lib/oro-2.0.8.jar"/>
	<classpathentry kind="lib" path="lib/velocity-1.6.2.jar"/>
```

## 2022-05-05
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - egovframework.dev.imp.codegen.template
            - https://github.com/eGovFramework/egovframe-development/tree/master/egovframework.dev.imp.codegen.template
                - CodeGenTableWizardPage
                    - https://github.com/eGovFramework/egovframe-development/blob/master/egovframework.dev.imp.codegen.template/src/egovframework/dev/imp/codegen/template/wizards/CodeGenTableWizardPage.java
                        - putValuesToVelocityContext
                        - Velocity Context에 값 삽입
        - egovframework.dev.imp.codegen.template.templates
            - https://github.com/eGovFramework/egovframe-development/tree/master/egovframework.dev.imp.codegen.template.templates
                - https://github.com/eGovFramework/egovframe-development/tree/master/egovframework.dev.imp.codegen.template.templates/eGovFrameTemplates/crud
        - egovframework.dev.imp.templates
            - https://github.com/eGovFramework/egovframe-development/tree/master/egovframework.dev.imp.templates
                - https://github.com/eGovFramework/egovframe-development/blob/master/egovframework.dev.imp.templates/src/test/java/test/CrudCodeGenTest.java
        - egovframework.dev.imp.templates target 제거
            - https://github.com/godsoft2016/egovframe-development/commit/edd981f9cd8a88a275cbceb3976104005ddda06d

- egovframework.dev.imp.templates testDAO EgovMap 추가
    - https://github.com/godsoft2016/egovframe-development/commit/992a76744aa9a6cfd2825adc048d7b0a3d08d8f5
```java
77c77
<     public List<?> selectSample2List(SampleDefaultVO searchVO) throws Exception {
---
>     public List selectSample2List(SampleDefaultVO searchVO) throws Exception {
```

- egovframework.dev.imp.templates testController EgovMap 추가
    - https://github.com/godsoft2016/egovframe-development/commit/68f5dc677f0aed20b1fa31f0036053fa7d04a090

```java
75c75
<         List<?> sample2List = sample2Service.selectSample2List(searchVO);
---
>         List sample2List = sample2Service.selectSample2List(searchVO);
```

- egovframework.dev.imp.templates testServiceImpl EgovMap 추가
    - 
```java
9,11d8
< import org.slf4j.Logger;
< import org.slf4j.LoggerFactory;
< 
13c10
< import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
---
> import egovframework.rte.fdl.cmmn.AbstractServiceImpl;
37c34
< public class EgovSample2ServiceImpl extends EgovAbstractServiceImpl implements
---
> public class EgovSample2ServiceImpl extends AbstractServiceImpl implements
39,40d35
<         
<     private static final Logger LOGGER = LoggerFactory.getLogger(EgovSample2ServiceImpl.class);
56c51
<     	LOGGER.debug(vo.toString());
---
>     	log.debug(vo.toString());
61c56
<     	LOGGER.debug(vo.toString());
---
>     	log.debug(vo.toString());
106c101
<     public List<?> selectSample2List(SampleDefaultVO searchVO) throws Exception {
---
>     public List selectSample2List(SampleDefaultVO searchVO) throws Exception {
```

## 2022-05-04
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - 페이징 처리를 위한 EgovComAbstractController 추가
            - https://github.com/godsoft2016/egovframe-common-components/commit/09551c30d5a253a2c235cc6f83e25a6f14464b7f
            - https://github.com/LeeBaekHaeng/god.codegen/commit/683fe7d54686a1c1c5c6e901d8e161f19f424c67

## 2022-05-03
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - crud-com Sample2VOTest.vm 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/d68f20795f87271a2962e65d0903891a52dd4375
            - https://github.com/godsoft2016/egovframe-development/commit/4990a58663d667a78384ade16c8fed4e4aaeabb1

## 2022-05-02
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - crud-com EgovSample2Controller.vm 에서 주석 수정
        - 개발표준가이드_v1.0.pdf 에서 3.2.4 java method 동사(prefix) 로 수정
        - 등록/수정(merge), 등록/수정/삭제(multi) 추가
        - https://github.com/LeeBaekHaeng/god.codegen/commit/4b4e03e0d1d8b53f790866127cd5f4cd96c16d26
        - https://github.com/godsoft2016/egovframe-development/commit/82c5d6df186c8425778eb265d3f663776dd8c836

## 2022-05-01
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - crud-com EgovSample2Controller.vm @RequestMapping 을 @GetMapping, @PostMapping 로 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/80ae5e58fe597b675a9de4933e952435485403a6
            - https://github.com/godsoft2016/egovframe-development/commit/dd7f232f12630409feac40126dcb60199e4ff6cf
        - crud-com egovSample2Detail.vm 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/8952792f8f5656076d22f174e5808852051f4a93
            - https://github.com/godsoft2016/egovframe-development/commit/33bad14fce6e48ee7cfb4d4f6f623bacbb6bc147

## 2022-04-30
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - egovPackageName1 을 topLevelPackage 로 수정
        - crud-com EgovSample_Sample2_MAPPER.vm selectList 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/215870711854ea6756c6178ad106490589c74a07
            - https://github.com/godsoft2016/egovframe-development/commit/1d9597f9c33d39ae28e2cf45b2ef759284b2e536
        - crud-com Sample2Mapper.vm 수정
            - https://github.com/godsoft2016/egovframe-development/commit/52531325f8ff217adc058a3f893f0a0a514a8a6e
            - https://github.com/eGovFramework/egovframe-development/pull/35/commits/52531325f8ff217adc058a3f893f0a0a514a8a6e
        - crud-com Sample2DAO.vm 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/e5703020a9d0fcfe4d19fbb0aeaf4a0b94f0dc65
            - https://github.com/godsoft2016/egovframe-development/commit/a52204a3d0d2207b361b0f07d8d5acc2899bbffb
        - crud-com EgovSample2Service.vm 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/7d81f5e1f8b8de8a2124ae414f6ec48db3fce128
            - https://github.com/godsoft2016/egovframe-development/commit/951a2f0b50fd9e4500a6162e59a58e6d2d99f76f
        - crud-com EgovSample2ServiceImpl.vm 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/6900a10e9593905cbc98a707114471a25758a925
            - https://github.com/godsoft2016/egovframe-development/commit/3c9062537b90b3755d1821467a4afd324be8cbdf
        - crud-com EgovSample2Controller.vm 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/fd627773099bfba1fd504490b0f316d7619fcd88
            - https://github.com/godsoft2016/egovframe-development/commit/3a78e399d2fd4f7dc59dbfd38dacc5a38db6e026

## 2022-04-29
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - crud-com EgovSample_Sample2_MAPPER.vm insert, update 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/377e8a3565dedd584c8c68ae0fb8ae733324a67a
            - https://github.com/godsoft2016/egovframe-development/commit/08e24ed4a31aaec70f80aff09e459d75d7dbd465
        - crud-com EgovSample_Sample2_MAPPER.vm select 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/5d245638bb7e18a71fa4e9321acffd93606e5f63
            - https://github.com/godsoft2016/egovframe-development/commit/e926e59c63103628967f437d057ea58a504ca432

## 2022-04-28
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - crud-com EgovSample_Sample2_SQL.vm DOCTYPE, insert 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/fe2b713037d5a9ac43ac309ad3c61345623a2561
            - https://github.com/LeeBaekHaeng/god.codegen/commit/75e41932cff49caf4d7a7be946b5ad820621fd40
            - https://github.com/godsoft2016/egovframe-development/commit/119e038be6c5522c2ee27f110342ed92a4e6f0f9
        - crud-com EgovSample_Sample2_SQL.vm sql 추가
            - https://github.com/LeeBaekHaeng/god.codegen/commit/2371ea36ff8d193a6343e5849e7398dee1d57d76
            - https://github.com/godsoft2016/egovframe-development/commit/86ca32728f344b5dfa7e0398db78b1c4ec1ce760

### '-//iBATIS.com//DTD SQL Map Config 2.0//EN' 를 '-//ibatis.apache.org//DTD SQL Map Config 2.0//EN' 로 수정
https://github.com/LeeBaekHaeng/god.codegen/blob/develop-4.0.0/god.codegen/src/main/resources/egovframework/sqlmap/config/mysql/sql-map-config-mysql-codegen.xml
```xml
<!DOCTYPE sqlMapConfig PUBLIC "-//ibatis.apache.org//DTD SQL Map Config 2.0//EN" "http://ibatis.apache.org/dtd/sql-map-config-2.dtd">
```

### '-//iBATIS.com//DTD SQL Map 2.0//EN' 를 '-//ibatis.apache.org//DTD SQL Map 2.0//EN' 로 수정
https://github.com/LeeBaekHaeng/god.codegen/blob/develop-4.0.0/god.codegen/src/main/resources/egovframework/sqlmap/com/codegen/sample2/Sample2_SQL_mysql.xml
```xml
<!DOCTYPE sqlMap PUBLIC "-//ibatis.apache.org//DTD SQL Map 2.0//EN" "http://ibatis.apache.org/dtd/sql-map-2.dtd">
```

## 2022-04-27
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - crud-com EgovSample_Sample2_SQL.vm update 수정
            - https://github.com/LeeBaekHaeng/god.codegen/commit/5bf2fc2270477f22ad3e74d86290f47e865a68c7
            - https://github.com/godsoft2016/egovframe-development/commit/322c88b99528c447a91a7f5e05d5b1b0f5f8b40f

## 2022-04-26
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - [crud-com Sample2DefaultVO.vm 수정](2022/04/26/1.md)

## 2022-04-25
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - [Sample2DAO.vm 에서 EgovAbstractDAO 를 EgovComAbstractDAO 로 수정](2022/04/25/1.md)

## 2022-04-24
- 코드 생성
    - [ServiceImpl 코드 생성](2022/04/24/1.md)
    - [sqlmap 코드 생성](2022/04/24/2.md)
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - CRUD 프로그램 자동 생성 기능
        - [eGovFrameTemplates 에 crud-com 을 추가](2022/04/24/3.md)
        - [eGovFrameTemplates/crud 비교](2022/04/24/4.md)

## 2022-04-23
- 2022 전자정부 표준프레임워크 컨트리뷰션 참가
    - [import egovframework.rte 를 org.egovframe.rte 로 수정 등](2022/04/23/1.md)
    - [context-idgn-Test.xml 에서 egovframework.rte 를 org.egovframe.rte 로 수정](2022/04/23/2.md)
    - [EgovDataCryptoTest 단위 테스트 실행](2022/04/23/3.md)

## 2022-04-22
- 코드 생성
    - [eGovFrameTemplates/crud2](2022/04/22/1.md)

## 2022-01-17
- 공통컴포넌트 3.10.0 단위 테스트
    - [문자메시지 조회(멀티건) 단위 테스트](2022/01/17/1.md)
        - SmsBasicDAO.selectSmsInfs
        - 개선필요부분
            - #searchWrd# 를 ? 로 수정

## 2022-01-15
- 공통컴포넌트 3.10.0 단위 테스트
    - [문자메시지 수신 저장 단위 테스트](2022/01/15/1.md)
        - SmsBasicDAO.insertSmsRecptnInf

## 2022-01-13
- 공통컴포넌트 3.10.0 단위 테스트
    - [문자메시지 저장 단위 테스트](2022/01/13/1.md)
        - SmsBasicDAO.insertSmsInf
        - 개선필요부분
            - SmsBasicDAO 보단 SmsDAO를 사용
            - SmsBasicDBUtil
                - Class.forName("org.apache.commons.dbcp2.PoolingDriver");
                - PoolingDriver driver = (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:" + alias);
                - driver.registerPool(alias, connectionPool);

## 2022-01-11
- 공통컴포넌트 3.10.0 단위 테스트
    - [스크랩 삭제 단위 테스트](2022/01/11/1.md)
        - EgovArticleScrapDAO.deleteArticleScrap

## 2022-01-10
- 공통컴포넌트 3.10.0 단위 테스트
    - [스크랩 수정 단위 테스트](2022/01/10/1.md)
        - EgovArticleScrapDAO.updateArticleScrap

## 2022-01-08
- 공통컴포넌트 3.10.0 단위 테스트
    - [스크랩 조회(단건) 단위 테스트](2022/01/08/1.md)
        - EgovArticleScrapDAO.selectArticleScrapDetail
        - 개선필요부분
            - (ScrapVO) 제거함

## 2022-01-06
- 공통컴포넌트 3.10.0 단위 테스트
    - [스크랩 조회(멀티건) 단위 테스트](2022/01/06/1.md)
        - EgovArticleScrapDAO.selectArticleScrapList
        - 개선필요부분
            - List&lt;ScrapVO&gt;로 수정
            - selectList로 수정
            - if test="@egovframework.com.cmm.util.EgovMybaitsUtil@isEquals(searchCnd, '0')"

## 2022-01-05
- 공통컴포넌트 3.10.0 단위 테스트
    - [스크랩 조회(멀티건) 카운트 단위 테스트](2022/01/05/1.md)
        - EgovArticleScrapDAO.selectArticleScrapListCnt
        - 개선필요부분
            - (Integer) 제거
            - if test="@egovframework.com.cmm.util.EgovMybaitsUtil@isEquals(searchCnd, '0')"

## 2022-01-04
- 공통컴포넌트 3.10.0 단위 테스트
    - [스크랩 등록 단위 테스트](2022/01/04/1.md)
        - EgovArticleScrapDAO.insertArticleScrap

## 2022-01-03
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 정보 삭제 단위 테스트](2022/01/03/1.md)
        - NcrdManageDAO.deleteNcrdItem
        - 개선필요부분
            - 탭
            - update를 delete로 수정

## 2022-01-01
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 정보 사용자 삭제 단위 테스트](2022/01/01/1.md)
        - NcrdManageDAO.deleteNcrdItemUser
        - 개선필요부분
            - 탭
            - 명함사용자 정보를 삭제한다.
            - @param nameCardVO
            - delete("NcrdManageDAO.deleteNcrdItemUser", nameCardVO);

## 2021-12-31
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 사용자 정보 수정 단위 테스트](2021/12/31/1.md)
        - NcrdManageDAO.updateNcrdUseInf
        - 개선필요부분
            - 탭
            - updateNcrdUseInf mapper에 없음
            - @Deprecated 추가
            - 사용하지 않는 것 같음
            - Mapped Statements collection does not contain value for NcrdManageDAO.updateNcrdUseInf

## 2021-12-30
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 정보 수정 단위 테스트](2021/12/30/1.md)
        - NcrdManageDAO.updateNcrdItem
        - 개선필요부분
            - 탭, 줄바꿈

## 2021-12-28
- 공통컴포넌트 3.10.0 단위 테스트
    - [내 명함 정보 조회(멀티건) 카운트 단위 테스트](2021/12/28/1.md)
        - NcrdManageDAO.selectMyNcrdItemListCnt
        - 개선필요부분
            - (Integer) 제거

## 2021-12-27
- 공통컴포넌트 3.10.0 단위 테스트
    - [내 명함 정보 조회(멀티건) 단위 테스트](2021/12/27/1.md)
        - NcrdManageDAO.selectMyNcrdItemList
        - 개선필요부분
            - OTHBC_AT에 , 추가

## 2021-12-25
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 사용자 정보 조회(멀티건) 단위 테스트](2021/12/25/1.md)
        - NcrdManageDAO.selectNcrdUseInfs
        - 개선필요부분
            - (Integer) 제거

## 2021-12-24
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 사용자 정보 조회(멀티건) 단위 테스트](2021/12/24/1.md)
        - NcrdManageDAO.selectNcrdUseInfs
        - 개선필요부분
            - '명함사용자 정보에 대한 목록을 조회한다.'로 수정

## 2021-12-23
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 상세 조회(멀티건) 카운트 단위 테스트](2021/12/23/1.md)
        - NcrdManageDAO.selectNcrdItemListCnt
        - 개선필요부분
            - searchCnd == 0 를 @egovframework.com.cmm.util.EgovMybaitsUtil@isEquals(searchCnd, '0') 로 수정
            - (Integer)selectOne 에서 (Integer) 를 제거
            - 주석에 '명함 정보에 대한 목록 전체 건수를 조회한다.'를 추가
            - AND NCRD_ID NOT IN 제거

## 2021-12-22
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 상세 조회(멀티건) 단위 테스트](2021/12/22/1.md)
        - NcrdManageDAO.selectNcrdItemList
        - 개선필요부분
            - @egovframework.com.cmm.util.EgovMybaitsUtil@isEquals(searchCnd, '0')

## 2021-12-21
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 상세 조회(단건) 단위 테스트](2021/12/21/1.md)
        - NcrdManageDAO.selectNcrdItem
        - 개선필요부분
            - (NameCardVO) 를 제거하고 바로 리턴

## 2021-12-20
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 사용자 정보 등록 단위 테스트](2021/12/20/1.md)
        - NcrdManageDAO.insertNcrdUseInf

## 2021-12-18
- 공통컴포넌트 3.10.0 단위 테스트
    - [명함 정보 등록 단위 테스트](2021/12/18/1.md)
        - NcrdManageDAO.insertNcrdItem
        - 개선필요부분
            - ComDefaultVO 에 enum 여부(Y, N)를 사용하고 싶음
- 코드생성(god.codegen)
    - CRUD 프로그램 자동 생성 기능
        - 테이블, 컬럼 가져오기
        - https://github.com/LeeBaekHaeng/god.codegen/commit/8a6e142386e1589f41b2b6b3d1ba4cf52067a3e8

## 2021-12-17
- 공통컴포넌트 3.10.0 단위 테스트
    - [발송 메일 수정 단위 테스트](2021/12/17/1.md)
        - SndngMailRegistDAO.updateSndngMail
        - 개선필요부분
            - return new SndngMailVO(); 를 return vo; 로 수정

## 2021-12-16
- 공통컴포넌트 3.10.0 단위 테스트
    - [첨부 파일 조회(멀티건) 단위 테스트](2021/12/16/1.md)
        - SndngMailRegistDAO.selectAtchmnFileList
        - 개선필요부분
            - List&lt;?&gt; 를 List&lt;AtchmnFileVO&gt; 로 수정

## 2021-12-15
- 공통컴포넌트 3.10.0 단위 테스트
    - [발송 메일 등록 단위 테스트](2021/12/15/1.md)
        - SndngMailRegistDAO.insertSndngMail
        - 개선필요부분
            - return 에서 result.setMssageId(vo.getMssageId()); 추가

```java
	@Resource(name = "propertiesService")
	private EgovPropertyService propertiesService;

		int pageUnit = propertiesService.getInt("pageUnit");
		int pageSize = propertiesService.getInt("pageSize");
		log.debug("pageUnit={}", pageUnit);
		log.debug("pageSize={}", pageSize);
```
- 코드생성(god.codegen)
    - CRUD 프로그램 자동 생성 기능
        - https://github.com/LeeBaekHaeng/god.codegen/commit/b1d5db1ea32939192f092250838af25e93a4dd70
        - https://youtu.be/KNtJJb2sjrA
        - https://velocity.apache.org/download.cgi#inclusion-as-a-maven-dependency
            - https://mvnrepository.com/artifact/org.apache.velocity/velocity-engine-core/2.3
        - https://velocity.apache.org/engine/2.3/developer-guide.html#the-fundamental-pattern
        - https://velocity.apache.org/engine/2.3/developer-guide.html#miscellaneous-details

```xml
<!-- https://mvnrepository.com/artifact/org.apache.velocity/velocity-engine-core -->
<dependency>
    <groupId>org.apache.velocity</groupId>
    <artifactId>velocity-engine-core</artifactId>
    <version>2.3</version>
</dependency>
```

```java
VelocityContext context = new VelocityContext();
template = Velocity.getTemplate("mytemplate.vm");
template.merge( context, sw );
```

```java
    Properties p = new Properties();
    p.setProperty("resource.loader.file.path", "/opt/templates");
    Velocity.init( p );
```

## 2021-12-14
- 공통컴포넌트 3.10.0 단위 테스트
    - [발송 메일 조회(멀티건) 총 합계 단위테스트](2021/12/14/1.md)
        - SndngMailDtlsDAO.selectSndngMailListTotCnt
        - 개선필요부분
            - @return 에 int sndngMailsTotCnt = sndngMailDtlsDAO.selectSndngMailListTotCnt(vo); 를 추가
            - (Integer) 제거함


## 2021-12-13
- 공통컴포넌트 3.10.0 단위 테스트
    - [발송 메일 조회(멀티건) 단위테스트](2021/12/13/1.md)
        - SndngMailDtlsDAO.selectSndngMailList
        - 개선필요부분
            - @return 에 List&lt;SndngMailVO&gt; sndngMails = sndngMailDtlsDAO.selectSndngMailList(vo); 를 추가
            - list 를 selectList 로 수정
            - &lt;if test="searchCondition == 1"&gt;AND 를 &lt;if test="@egovframework.com.cmm.util.EgovMybaitsUtil@isEquals(searchCondition, '1')"&gt;AND 로 수정
            - SndngMailVO extends ComDefaultVO 로 고치고 싶음

## 2021-12-11
- 공통컴포넌트 3.10.0 단위 테스트
    - [발송 메일 삭제 단위테스트](2021/12/11/1.md)
        - SndngMailDetailDAO.deleteSndngMail
- 코드생성(god.codegen)
    - CRUD 프로그램 자동 생성 기능
        - JSP 코드생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/a1ab2c7f37f05523256d3dcdf5bccf654a6cf59f
            - https://github.com/LeeBaekHaeng/god.codegen/commit/2ab67fcc279e58e2d2025921878e80205c013951
            - https://github.com/LeeBaekHaeng/god.codegen/commit/75e394c68e4447fd56c13db5bf1b1930fbec7958
            - https://youtu.be/oOql6UCRGEg

## 2021-12-10

- 공통컴포넌트 3.10.0 단위 테스트
    - [발송 메일 조회(단건) 단위테스트](2021/12/10/1.md)
        - SndngMailDetailDAO.selectSndngMail
- 코드생성(god.codegen)
    - CRUD 프로그램 자동 생성 기능
        - Mapper 코드생성
            - https://github.com/LeeBaekHaeng/god.codegen/commit/1eace6f61d073a74e792df4c2c072dd4d1a69fad
            - https://youtu.be/wdt5NzFN4W0

## 2021-12-09

### 공통컴포넌트 3.10.0 단위 테스트
- [발송 메일 조회(단건) 단위테스트](2021/12/09/1.md)
    - SndngMailDetailDAO.selectSndngMail
    - 개선필요부분
        - import java.util.List; 제거함
        - selectSndngMail 에서 (SndngMailVO) 제거함

### 코드생성(god.codegen)
- CRUD 프로그램 자동 생성 기능
    - mapper 코드생성
        - https://github.com/LeeBaekHaeng/god.codegen/commit/2752e487653daa0aaa54bc3b11eaf76572a744b6
        - https://youtu.be/J2o5EGgaang

## 2021-12-08
### 공통컴포넌트 3.10.0 단위 테스트
- [모든 커뮤니티 사용자 조회(멀티건) 단위테스트](2021/12/08/1.md)
    - EgovUserInfManageDAO.selectAllCmmntyUser
    - 개선필요부분
        - @return 에 List&lt;UserInfVO&gt; allCmmntyUsers = egovUserInfManageDAO.selectAllCmmntyUser(userVO); 를 추가함
        - 페이징 필요함
### 코드생성(god.codegen)
- CRUD 프로그램 자동 생성 기능
    - DefaultVO, VO 코드생성
        - https://github.com/LeeBaekHaeng/god.codegen/commit/1eecd79f4337b2cd5e944be49b6828b5f3625c14
        - https://youtu.be/Yc6o0aLMSCI

## 2021-12-07
- 공통컴포넌트 3.10.0 단위 테스트
    - [모든 클럽 사용자 조회(멀티건) 단위테스트](2021/12/07/1.md)
        - EgovUserInfManageDAO.selectAllClubUser
        - 개선필요부분
            - @return 에 List<UserInfVO> allClubUsers = egovUserInfManageDAO.selectAllClubUser(userVO); 를 추가함
            - 페이징 필요함
- 코드생성(god.codegen)
    - CRUD 프로그램 자동 생성 기능
        - CrudModel
            - https://github.com/LeeBaekHaeng/god.codegen/commit/f13c93d673b080f9776449b7d895f6fb610b1707
            - https://youtu.be/xppwCZCc9CU

## 2021-12-06
- 공통컴포넌트 3.10.0 단위 테스트
    - [클럽 운영자 조회(멀티건) 카운트 단위테스트](2021/12/06/1.md)
        - EgovUserInfManageDAO.selectClubOprtrListCnt
        - 개선필요부분
            - @return 에 int clubOprtrsCnt = egovUserInfManageDAO.selectClubOprtrListCnt(userVO); 를 추가함
            - selectClubOprtrListCnt 에서 (Integer)를 제거함

## 2021-12-04
- 공통컴포넌트 3.10.0 단위 테스트
    - [클럽 운영자 조회(멀티건) 단위테스트](2021/12/04/1.md)
        - EgovUserInfManageDAO.selectClubOprtrList
        - 개선필요부분
            - @return에 clubOprtrs 를 추가함
- 코드생성(god.codegen)
    - CRUD 프로그램 자동 생성 기능
        - DatabaseMetaData.getTables
            - https://youtu.be/wRMBrCKgqck
        - DatabaseMetaData.getPrimaryKeys
            - https://youtu.be/81gOW8bTf44
        - eGovFrameTemplates
            - https://youtu.be/iUA6z-TD8QM

## 2021-12-03
- 공통컴포넌트 3.10.0 단위 테스트
    - [클럽 사용자 조회(멀티건) 카운트 단위테스트](2021/12/03/1.md)
        - EgovUserInfManageDAO.selectClubUserListCnt
        - 개선필요부분
            - @return에 clubUsersCnt 를 추가함
            - selectClubUserListCnt 에서 (Integer)를 제거함
- 코드생성(god.codegen)
    - DriverManager, DatabaseMetaData, ResultSetMetaData 테스트
    - https://youtu.be/tgkyee5khWw

## 2021-12-02
- 공통컴포넌트 3.10.0 단위 테스트
    - [클럽 사용자 조회(멀티건) 단위테스트](2021/12/02/1.md)
        - EgovUserInfManageDAO.selectClubUserList

## 2021-12-01
- 공통컴포넌트 3.10.0 단위 테스트
    - [클럽 사용자 조회(멀티건) 단위테스트](2021/12/01/1.md)
        - EgovUserInfManageDAO.selectClubUserList
        - 사용하지 않는 코드 같아 단위테스트 안 함
        - 개선필요부분
            - @return에 clubUsers를 추가함
            - 컨트롤러에서 사용하지 않아 @Deprecated 함
                - 사용하지 않는 코드 인지 확인 필요함

## 2021-11-30
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 관리자 조회(멀티건) 카운트 단위테스트](2021/11/30/1.md)
        - EgovUserInfManageDAO.selectCmmntyMngrListCnt
        - 개선필요부분
            - selectCmmntyMngrListCnt에서 (Integer)를 제거함
            - @return에 cmmntyMngrsCnt를 추가함

## 2021-11-29
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 관리자 조회(멀티건) 단위테스트](2021/11/29/1.md)
        - EgovUserInfManageDAO.selectCmmntyMngrList

## 2021-11-27
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 사용자 조회(멀티건) 카운트 단위테스트](2021/11/27/1.md)
        - EgovUserInfManageDAO.selectCmmntyUserListCnt
        - 개선필요부분
            - selectCmmntyUserListCnt에서 (Integer)를 제거함
- [트랜잭션 테스트](2021/11/27/2.md)
    - 부모는 try catch 하고 자식은 throws 한다.
    - 07-4 예외처리 (Exception) - 점프 투 자바 https://wikidocs.net/229
        - 자식1, 자식2, 자식3 메서드에서는 예외를 throws하고 부모 메서드에서 throws된 예외를 처리하여 모두 취소하는 것이 완벽한 트랜잭션 처리 방법이다.
        - 트랜잭션관리를 잘못하여 고생하는 경우를 많이 보았는데 이것은 일종의 재앙에 가깝다.

## 2021-11-26
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 사용자 조회(멀티건) 단위테스트](2021/11/26/1.md)
        - EgovUserInfManageDAO.selectCmmntyUserList
        - junit exclude test annotation
            - Junit 제외 테스트 주석
            -  @Ignore

## 2021-11-25
- 공통컴포넌트 3.10.0 단위 테스트
    - [사용자 조회(멀티건) 카운트 단위테스트](2021/11/25/1.md)
        - EgovUserInfManageDAO.selectUserListCnt
        - selectUserListCnt 메서드에서 (Integer) 제거함
- [트랜잭션 테스트](2021/11/25/2.md)
    - transaction rolled back because it has been marked as rollback-only
    - 롤백 전용으로 표시되었기 때문에 트랜잭션이 롤백되었습니다.
    - 서비스에서 Exception 발생하면 하위로는 모두 롤백됨

## 2021-11-24
- 공통컴포넌트 3.10.0 단위 테스트
    - [사용자 조회(멀티건) 단위테스트](2021/11/24/1.md)
        - EgovUserInfManageDAO.selectUserList
        - testData_insertMber 추가함

## 2021-11-23
- 공통컴포넌트 3.10.0 단위 테스트
    - [사용자 조회(멀티건) 단위테스트](2021/11/23/1.md)
        - EgovUserInfManageDAO.selectUserListCnt

## 2021-11-22
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 마스터 삭제 단위테스트](2021/11/22/1.md)
        - EgovCommuMasterDAO.deleteCommuMaster
- [트랜잭션 테스트](2021/11/22/2.md)
    - transaction rolled back because it has been marked as rollback-only

## 2021-11-20
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 마스터 수정 단위테스트](2021/11/20/1.test.md)
        - EgovCommuMasterDAO.updateCommuMaster
- [깃허브 클론 테스트](2021/11/20/2.md)
- [트랜잭션 테스트](2021/11/20/3.md)
    - transaction rolled back because it has been marked as rollback-only

## 2021-11-19
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 마스터 조회(멀티건) 포틀릿 단위테스트](2021/11/19/1.test.md)
        - EgovCommuMasterDAO.selectCommuMasterListPortlet

## 2021-11-18
- 공통컴포넌트 3.10.0 단위 테스트
    - [커뮤니티 마스터 상세 조회(단건) 단위테스트](2021/11/18/1.test.md)
        - EgovCommuMasterDAO.selectCommuMasterDetail

## 2021-11-17
- [커뮤니티 마스터 조회(멀티건) 카운트 단위테스트](2021/11/17/1.test.md)
    - EgovCommuMasterDAO.selectCommuMasterListCnt

## 2021-11-16
- [커뮤니티 마스터 등록 단위테스트](2021/11/16/1.test.md)
    - EgovCommuMasterDAO.insertCommuMaster

## 2021-11-15
- [커뮤니티 사용자 관리자 삭제 단위테스트](2021/11/15/1.test.md)
    - EgovCommuManageDAO.deleteCommuUserAdmin

## 2021-11-13
- [커뮤니티 사용자 삭제 단위테스트](2021/11/13/1.test.md)
    - EgovCommuManageDAO.deleteCommuUser

## 2021-11-12
- [기존 사용자 조건확인 단위테스트](2021/11/12/1.test.md)
    - EgovCommuManageDAO.checkExistUser

## 2021-11-11
- [커뮤니티 사용자 조회(멀티건) 카운트 단위테스트](2021/11/11/1.test.md)

## 2021-11-10
- [커뮤니티 사용자 조회(멀티건) 단위테스트](2021/11/10/1.test.md)

## 2021-11-09
- [커뮤니티 관리자 조회(멀티건) 단위테스트](2021/11/09/1.test.md)

## 2021-11-08
- [커뮤니티 사용자 관리자 등록 단위테스트](2021/11/08/1.test.md)

## 2021-11-06
- [커뮤니티 사용자 등록 단위테스트](2021/11/06/1.test.md)

## 2021-11-05
- [커뮤니티 게시판 마스터 목록 메인 조회(멀티건) 단위 테스트](2021/11/05/1.test.md)

## 2021-11-04
- [커뮤니티 회원관리 insertCommuUserRqst 단위 테스트](2021/11/04/1.test.md)

## 2021-11-03
- [EgovCommuBBSMasterDAOTest_selectCommuBBSMasterListMain 단위 테스트](2021/11/03/1.test.md)
- [EgovCommuBBSMaster_SQL_mysql.xml 개선필요부분 - BBS_TY_CODE_NM, TMPLAT_ID, USE_AT, FRST_REGIST_PNTTM 컬럼 추가](2021/11/03/2.test.md)

## 2021-11-02
- [EgovCommuBBSMasterDAOTest_selectCommuBBSMasterListMain 단위 테스트](2021/11/02/1.test.md)

## 2021-11-01
- [EgovCommuBBSMasterDAOTest_selectCommuBBSMasterListMain 단위 테스트](2021/11/01/1.test.md)

## 2021-10-30
- [EgovArticleCommentServiceImplTest_deleteArticleComment 단위 테스트](2021/10/30/1.test.md)

## 2021-10-29
- [EgovArticleCommentServiceImplTest_updateArticleComment 단위 테스트](2021/10/29/1.test.md)

## 2021-10-28
- [EgovArticleCommentServiceImplTest_canUseComment 단위 테스트](2021/10/28/1.test.md)

## 2021-10-27
- [EgovArticleCommentServiceImplTest_selectArticleCommentDetail 단위 테스트](2021/10/27/1.test.md)
- [MyBatisTest_getResultMappings - Could not resolve type alias](2021/10/27/2.test.md)

## 2021-10-26
- [EgovArticleCommentServiceImplTest_insertArticleComment 단위 테스트](2021/10/26/1.test.md)
- [EgovArticleCommentServiceImplTest_selectArticleCommentList 단위 테스트](2021/10/26/2.test.md)
- [MyBatisTest_getResultMappings getResultMapNames](2021/10/26/3.test.md)

## 2021-10-25
- [EgovArticleCommentServiceImplTest_insertArticleComment 단위 테스트](2021/10/25/1.test.md)

## 2021-10-23
- [MyBatisTest_getParameterMappings EgovArticleComment_SQL_mysql.xml](2021/10/23/1.test.md)
- [MyBatisTest_getResultMappings writeStringToFile](2021/10/23/2.test.md)

## 2021-10-22
- [JavaParserTest_getMethods EgovArticleCommentServiceImpl.class](2021/10/22/1.test.md)
- [JavaParserTest_getMethods getClassByName getInterfaceByName](2021/10/22/2.test.md)

## 2021-10-21
- [EgovArticleCommentDAOTest_deleteArticleComment 단위 테스트](2021/10/21/1.test.md)

## 2021-10-20
- [EgovArticleCommentDAOTest_updateArticleComment 단위 테스트](2021/10/20/1.test.md)

## 2021-10-19
- [EgovArticleCommentDAOTest_selectArticleCommentDetail 단위 테스트](2021/10/19/1.test.md)
- [EgovArticleCommentDAO 개선필요부분](2021/10/19/2.test.md)

## 2021-10-18
- [EgovArticleCommentDAOTest_selectArticleCommentListCnt 단위 테스트](2021/10/18/1.test.md)

## 2021-10-16
- [EgovArticleCommentDAO, EgovArticleCommentServiceImpl 오타 수정](2021/10/16/1.test.md)

## 2021-10-15
- [EgovArticleCommentDAOTest_selectArticleCommentList 단위 테스트](2021/10/15/1.test.md)

## 2021-10-14
- [EgovArticleCommentDAOTest_insertArticleComment 단위 테스트](2021/10/14/1.test.md)

## 2021-10-13
- [EgovArticleCommentDAOTest_insertArticleComment 단위 테스트](2021/10/13/1.test.md)

## 2021-10-12
- [JavaParserTest_getMethods EgovArticleCommentDAO](2021/10/12/1.test.md)

## 2021-10-09
- [EgovBBSMasterServiceImplTest_deleteBBSMasterInf 단위 테스트](2021/10/09/1.test.md)

## 2021-10-08
- [EgovBBSMasterServiceImplTest_updateBBSMasterInf 단위 테스트](2021/10/08/1.test.md)

## 2021-10-07
- [EgovBBSMasterServiceImplTest_checkBlogUser2 단위 테스트](2021/10/07/1.test.md)

## 2021-10-06
- [EgovBBSMasterServiceImplTest_checkBlogUser 단위 테스트](2021/10/06/1.test.md)

## 2021-10-05
- [EgovBBSMasterServiceImplTest_selectBBSListPortlet 단위 테스트](2021/10/05/1.test.md)

## 2021-10-04
- [EgovBBSMasterServiceImplTest_selectBlogListPortlet 단위 테스트](2021/10/04/1.test.md)

## 2021-10-02
- [EgovBBSMasterServiceImplTest_selectBlogDetail 단위 테스트](2021/10/02/1.test.md)

## 2021-10-01
- [EgovBBSMasterServiceImplTest_selectBlogMasterInfs 단위 테스트](2021/10/01/1.test.md)

## 2021-09-30
- [EgovBBSMasterServiceImplTest_selectBBSMasterInfs 단위 테스트](2021/09/30/1.test.md)

## 2021-09-29
- [EgovBBSMasterServiceImplTest_selectBBSMasterInf 단위 테스트](2021/09/29/1.test.md)

## 2021-09-28
- [EgovBBSMasterServiceImplTest_selectBBSMasterInf 단위 테스트](2021/09/28/1.test.md)

## 2021-09-27
- [EgovBBSMasterServiceImplTest_selectBBSMasterInf 단위 테스트](2021/09/27/1.test.md)

## 2021-09-25
- [EgovBBSMasterServiceImplTest_selectBBSMasterInf 단위 테스트](2021/09/25/1.test.md)

## 2021-09-24
- [EgovBBSMasterServiceImplTest_selectBBSMasterInf 단위 테스트](2021/09/24/1.test.md)

## 2021-09-23
- [EgovBBSMasterServiceImplTest_selectBBSMasterInf 단위 테스트](2021/09/23/1.test.md)

## 2021-09-18 ~ 2021-09-22
- 추석

## 2021-09-17
- [EgovBBSMasterServiceImplTest_selectNotUsedBdMstrList 단위 테스트](2021/09/17/1.test.md)
- [EgovBBSMasterService.selectNotUsedBdMstrList 버그 수정](2021/09/17/2.bug.md)

## 2021-09-16
- [EgovBBSMasterServiceImplTest_insertBlogMaster 단위 테스트](2021/09/16/1.test.md)

## 2021-09-15
- [EgovBBSMasterServiceImplTest_insertBoardBlogUserRqst 단위 테스트](2021/09/15/1.test.md)

## 2021-09-14
- [EgovBBSMasterServiceImplTest_insertBoardBlogUserRqst 단위 테스트](2021/09/14/1.test.md)

## 2021-09-13
- [EgovBBSMasterServiceImplTest_AAA_JavaParser 단위 테스트](2021/09/13/1.test.md)

## 2021-09-11
- [EgovBBSMasterServiceImplTest_insertBBSMasterInf 단위 테스트](2021/09/11/1.test.md)

## 2021-09-10
- [EgovBBSMasterDAOTest_deleteBBSMaster 단위 테스트](2021/09/10/1.test.md)

## 2021-09-09
- [EgovBBSMasterDAOTest_updateBBSMaster 단위 테스트](2021/09/09/1.test.md)

## 2021-09-08
- [EgovBBSMasterDAO.checkExistUser2 TooManyResultsException 버그 수정](2021/09/08/1.test.md)

## 2021-09-07
- [EgovBBSMasterDAOTest_checkExistUser2 단위 테스트](2021/09/07/1.test.md)

## 2021-09-06
- [EgovBBSMasterDAOTest_checkExistUser 단위 테스트](2021/09/06/1.test.md)

## 2021-09-04
- [EgovBBSMasterDAO 오타 수정](2021/09/04/1.test.md)

## 2021-09-03
- [EgovBBSMasterDAOTest_selectBBSListPortlet 단위 테스트](2021/09/03/1.test.md)

## 2021-09-02
- [EgovBBSMasterDAOTest_selectBlogListPortlet 단위 테스트](2021/09/02/1.test.md)

## 2021-08-31
- [EgovBBSMasterDAOTest_selectBlogDetail 단위 테스트](2021/08/31/1.test.md)

## 2021-08-28
- [EgovBBSMasterDAOTest_selectBlogMasterInfsCnt 단위 테스트](2021/08/28/1.test.md)

## 2021-08-27
- [EgovBBSMasterDAOTest_insertBlogMaster 단위 테스트](2021/08/27/1.test.md)

## 2021-08-26
- [EgovBBSMasterDAOTest_insertBoardBlogUserRqst 단위 테스트](2021/08/26/1.test.md)

## 2021-08-25
- [EgovBBSMasterDAOTest_selectBlogMasterInfs 단위 테스트](2021/08/25/1.test.md)

## 2021-08-23
- [EgovBBSMasterDAOTest_selectBlogMasterInfs 단위 테스트](2021/08/23/1.test.md)

## 2021-08-20
- [EgovBBSMasterDAOTest_selectBlogMasterInfs 단위 테스트](2021/08/20/1.test.md)

## 2021-08-12
- [spring ContentNegotiatingViewResolver](2021/08/12/1.spring.md)

## 2021-08-12 ~ 2021-08-16 여름휴가

## 2021-08-11
- [EgovBBSMasterDAOTest_selectBBSMasterDetail 단위 테스트](2021/08/11/1.test.md)
- [spring ContentNegotiatingViewResolver](2021/08/11/2.spring.md)

## 2021-08-10
- [EgovBBSMasterDAOTest_selectBBSMasterDetail 단위 테스트](2021/08/10/1.test.md)

## 2021-08-09
- [EgovBBSMasterDAOTest_selectBBSMasterDetail 단위 테스트](2021/08/09/1.test.md)

## 2021-08-07
- [spring contentNegotiation](2021/08/07/1.test.md)

## 2021-08-06
- [EgovBBSMasterDAO selectBBSMasterInfsCnt 단위 테스트](2021/08/06/1.test.md)

## 2021-08-05
- [XMLMapperBuilder getParameterMappings, getResultMappings](2021/08/05/1.test.md)

## 2021-08-02
- [EgovBBSMasterDAO insertBBSMasterInf 단위 테스트](2021/08/02/1.test.md)

## 2021-07-31
- [리소스 디렉토리 지정 - maven](2021/07/31/1.maven.md)

## 2021-07-30
- [EgovBBSMasterDAO insertBBSMasterInf 단위 테스트](2021/07/30/1.test.md)

## 2021-07-29
- [EgovBBSMasterDAO insertBBSMasterInf 단위 테스트](2021/07/29/1.test.md)

## 2021-07-28
- [EgovArticleServiceImpl selectBlogListManager 단위 테스트](2021/07/28/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getDriverMajorVersion](2021/07/28/2.codegen.md)
- [JavaParser - CompilationUnit.getModule](2021/07/28/3.javaparser.md)

## 2021-07-27
- [EgovArticleServiceImpl selectLoginUser 단위 테스트](2021/07/27/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getDriverVersion](2021/07/27/2.codegen.md)
- [JavaParser - CompilationUnit.getAnnotationDeclarationByName](2021/07/27/3.javaparser.md)

## 2021-07-26
- [EgovArticleServiceImpl selectGuestArticleList 단위 테스트](2021/07/26/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getDriverName](2021/07/26/2.codegen.md)
- [JavaParser - CompilationUnit.getPrimaryType](2021/07/26/3.javaparser.md)

## 2021-07-23
- [EgovArticleServiceImpl selectBlogNmList 단위 테스트](2021/07/23/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getDatabaseProductVersion](2021/07/23/2.codegen.md)
- [JavaParser - CompilationUnit.getPrimaryTypeName](2021/07/23/3.javaparser.md)

## 2021-07-22
- [EgovArticleServiceImpl selectBlogNmList 단위 테스트](2021/07/22/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getDatabaseProductName](2021/07/22/2.codegen.md)
- [JavaParser - CompilationUnit.getEnumByName](2021/07/22/3.javaparser.md)

## 2021-07-21
- [EgovArticleServiceImpl selectNoticeArticleList 단위 테스트](2021/07/21/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.nullsAreSortedAtEnd](2021/07/21/2.codegen.md)
- [JavaParser - CompilationUnit.getInterfaceByName](2021/07/21/3.javaparser.md)

## 2021-07-20
- [EgovArticle_SQL_*.xml deleteArticle BoardVO(Board) 오타 수정](2021/07/20/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.nullsAreSortedAtStart](2021/07/20/2.codegen.md)
- [JavaParser - CompilationUnit.getLocalDeclarationFromClassname](2021/07/20/3.javaparser.md)

## 2021-07-19
- [EgovArticleServiceImpl deleteArticle 단위 테스트](2021/07/19/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.nullsAreSortedLow](2021/07/19/2.codegen.md)
- [JavaParser - CompilationUnit.getClassByName](2021/07/19/3.javaparser.md)

## 2021-07-17
- [mybatis Parameters](2021/07/17/1.mybatis.md)
- [Spring Framework - RequestMappingHandlerMapping.getHandlerMethods](2021/07/17/2.spring.md)

## 2021-07-16
- [EgovArticleServiceImpl updateArticle 단위 테스트](2021/07/16/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.nullsAreSortedHigh](2021/07/16/2.codegen.md)
- [JavaParser - CompilationUnit.getTypes member.isClassOrInterfaceDeclaration](2021/07/16/3.javaparser.md)
- [mybatis getParameterMappings](2021/07/16/4.mybatis.md)

## 2021-07-15
- [EgovArticleServiceImpl selectArticleDetailCn 단위 테스트](2021/07/15/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.isReadOnly](2021/07/15/2.codegen.md)
- [JavaParser - CompilationUnit.getTypes member.asCallableDeclaration().getName().getIdentifier()](2021/07/15/3.javaparser.md)

## 2021-07-14
- [EgovArticleServiceImpl selectArticleDetailDefaultCnt 단위 테스트](2021/07/14/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getUserName](2021/07/14/2.codegen.md)
- [JavaParser - CompilationUnit.getTypes asAnnotationDeclaration](2021/07/14/3.javaparser.md)

## 2021-07-13
- [EgovArticleServiceImpl selectArticleDetailDefault 단위 테스트](2021/07/13/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getURL](2021/07/13/2.codegen.md)
- [JavaParser - CompilationUnit.getTypes](2021/07/13/3.javaparser.md)
- [mybatis interceptor](2021/07/13/4.mybatis.md)

## 2021-07-12
- [EgovArticleServiceImpl selectArticleCnOne 단위 테스트](2021/07/12/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.allTablesAreSelectable MySQL](2021/07/12/2.codegen.md)
- [JavaParser - CompilationUnit.getPackageDeclaration](2021/07/12/3.javaparser.md)

## 2021-07-10
- [EgovArticleServiceImpl selectArticleDetail 단위 테스트](2021/07/10/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.allProceduresAreCallable MySQL](2021/07/10/2.codegen.md)
- [JavaParser - CompilationUnit.getImport](2021/07/10/3.javaparser.md)

## 2021-07-09
- [EgovArticleServiceImpl selectArticleList 단위 테스트](2021/07/09/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns Oracle](2021/07/09/2.codegen.md)
- [JavaParser - CompilationUnit.getImports](2021/07/09/3.javaparser.md)

## 2021-07-08
- [EgovArticleServiceImpl insertArticle 단위 테스트](2021/07/08/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns MySQL](2021/07/08/2.codegen.md)
- [JavaParser - CompilationUnit.getAllComments toJavadocComment](2021/07/08/3.javaparser.md)

## 2021-07-07
- [EgovArticleServiceImpl insertArticle 단위 테스트](2021/07/07/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables Oracle](2021/07/07/2.codegen.md)
- [JavaParser - CompilationUnit.getAllComments asJavadocComment](2021/07/07/3.javaparser.md)

## 2021-07-06
- [EgovArticleServiceImpl @Configuration 단위 테스트](2021/07/06/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables MySQL](2021/07/06/2.codegen.md)
- [JavaParser - CompilationUnit.getAllComments JavadocComment](2021/07/06/3.javaparser.md)

## 2021-07-05
- [EgovArticleServiceImpl @Configuration 단위 테스트](2021/07/05/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns](2021/07/05/2.codegen.md)
- [JavaParser - CompilationUnit.getAllComments](2021/07/05/3.javaparser.md)

## 2021-07-03
- [EgovArticleServiceImpl JavaParser 단위 테스트](2021/07/03/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables](2021/07/03/2.codegen.md)
- [JavaParser - CompilationUnit.getAllComments](2021/07/03/3.javaparser.md)

## 2021-07-02
- [EgovArticleDAO testData selectArticleCnOne 단위 테스트](2021/07/02/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getAttributes 지원되지 않는 기능입니다](2021/07/02/2.codegen.md)
- [JavaParser - VO debug](2021/07/02/3.javaparser.md)

## 2021-07-01
- [EgovArticleDAO testData selectBlogNmList 단위 테스트](2021/07/01/1.test.md)
- [Code Generation 코드 생성 - EgovResourceCloseHelper.closeDBObjects(rs, con);](2021/07/01/2.codegen.md)
- [JavaParser - VO log.debug("vo={}", vo);](2021/07/01/3.javaparser.md)

## 2021-06-30
- [EgovArticleDAO testData selectBlogListManager 단위 테스트](2021/06/30/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getSchemas](2021/06/30/2.codegen.md)
- [JavaParser - VO getFields log.debug](2021/06/30/3.javaparser.md)

## 2021-06-29
- [EgovArticleDAO testData selectBlogListManagerCnt 단위 테스트](2021/06/29/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getCatalogs](2021/06/29/2.codegen.md)
- [JavaParser - VO getFields](2021/06/29/3.javaparser.md)

## 2021-06-28
- [EgovArticleDAO testData EgovArticleDAOTest_selectArticleDetailDefault 단위 테스트](2021/06/28/1.test.md)
- [Code Generation 코드 생성 - getTables](2021/06/28/2.codegen.md)
- [JavaParser - VO vo.set*](2021/06/28/3.javaparser.md)

## 2021-06-26
- [EgovArticleDAO testData selectArticleDetailDefaultCnt 단위 테스트](2021/06/26/1.test.md)
- [Code Generation 코드 생성 - TABLE REMARKS(mysql useInformationSchema=true)](2021/06/26/2.codegen.md)
- [JavaParser - VO getFields](2021/06/26/3.javaparser.md)

## 2021-06-25
- [EgovArticleDAO testData insertArticle 단위 테스트](2021/06/25/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables](2021/06/25/2.codegen.md)
- [JavaParser - java.sql.DriverManager](2021/06/25/3.javaparser.md)

## 2021-06-24
- [EgovArticleDAO testData 단위 테스트](2021/06/24/1.test.md)
- [Code Generation 코드 생성 - java.sql.DriverManager](2021/06/24/2.codegen.md)
- [JavaParser - java.sql.DriverManager](2021/06/24/3.javaparser.md)

## 2021-06-23
- [EgovArticleDAO selectLoginUser 단위 테스트](2021/06/23/1.test.md)
- [Code Generation 코드 생성 - java.sql.Connection](2021/06/23/2.codegen.md)
- [JavaParser - ClassOrInterfaceDeclaration.getMethods](2021/06/23/3.javaparser.md)

## 2021-06-22
- [EgovArticleDAO selectLoginUser 단위 테스트](2021/06/22/1.test.md)
- [Code Generation 코드 생성 - FileUtils.writeStringToFile](2021/06/22/2.codegen.md)
- [JavaParser - parseResult.getCommentsCollection](2021/06/22/3.javaparser.md)

## 2021-06-21
- [EgovArticleDAO selectArticleDetailCn 단위 테스트](2021/06/21/1.test.md)
- [Code Generation 코드 생성 - GodSql.delete](2021/06/21/2.codegen.md)
- [JavaParser - ClassOrInterfaceDeclaration](2021/06/21/3.javaparser.md)

## 2021-06-19
- [EgovArticleDAO selectArticleDetailDefaultCnt 단위 테스트](2021/06/19/1.test.md)
- [Code Generation 코드 생성 - GodSql.select](2021/06/19/2.codegen.md)
- [JavaParser - javaparser get class name](2021/06/19/3.javaparser.md)

## 2021-06-18
- [EgovArticleDAO selectArticleDetailDefault 단위 테스트](2021/06/18/1.test.md)
- [Code Generation 코드 생성 - GodSql.update](2021/06/18/2.codegen.md)
- [JavaParser - 한 번에 전체 프로젝트 분석](2021/06/18/3.javaparser.md)

## 2021-06-17
- [EgovArticleDAO selectBlogListManagerCnt 단위 테스트](2021/06/17/1.test.md)
- [Code Generation 코드 생성 - EgovSample_Sample2_MAPPER_sql.vm delete](2021/06/17/2.codegen.md)
- [JavaParser - java.sql.ResultSetMetaData / createGetter and createSetter](2021/06/17/3.javaparser.md)

## 2021-06-16
- [EgovArticleDAO selectBlogListManager 단위 테스트](2021/06/16/1.test.md)
- [Code Generation 코드 생성 - EgovSample_Sample2_MAPPER_sql.vm update](2021/06/16/2.codegen.md)
- [JavaParser - java.sql.DatabaseMetaData](2021/06/16/3.javaparser.md)

## 2021-06-15
- [EgovArticleDAO selectBlogNmList 단위 테스트](2021/06/15/1.test.md)
- [Code Generation 코드 생성 - EgovSample_Sample2_MAPPER_sql.vm](2021/06/15/2.codegen.md)

## 2021-06-14
- [EgovArticleDAO selectArticleCnOne 단위 테스트](2021/06/14/1.test.md)
- [Code Generation 코드 생성 - Sample2DAO.vm](2021/06/14/2.codegen.md)
- [StaticJavaParser.parse](2021/06/14/3.javaparser.md)

## 2021-06-12
- [EgovArticleDAO selectGuestArticleListCnt 단위 테스트](2021/06/12/1.test.md)
- [Code Generation 코드 생성 - setJavaType(String javaType, int nullable, String databaseProductName)](2021/06/12/2.codegen.md)
- [JavaParser](2021/06/12/3.javaparser.md)

## 2021-06-11
- [EgovArticleDAO selectGuestArticleList 단위 테스트](2021/06/11/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables](2021/06/11/2.codegen.md)

## 2021-06-10
- [EgovArticleDAO selectNoticeArticleList 단위 테스트](2021/06/10/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns](2021/06/10/2.codegen.md)

## 2021-06-09
- [EgovArticleDAO deleteArticle 단위 테스트](2021/06/09/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns](2021/06/09/2.codegen.md)

## 2021-06-08
- [EgovArticleDAO updateArticle 단위 테스트](2021/06/08/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns](2021/06/08/2.codegen.md)

## 2021-06-07
- [EgovArticleDAO insertArticle 단위 테스트](2021/06/07/1.test.md)
- [Code Generation 코드 생성 - setAttribute](2021/06/07/2.codegen.md)

## 2021-06-05
- [EgovArticleDAO replyArticle 단위 테스트](2021/06/05/1.test.md)
- [Code Generation 코드 생성 - setEntity](2021/06/05/2.codegen.md)

## 2021-06-04
- [No bean named 'EgovFileMngService' available](2021/06/04/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getDriverName](2021/06/04/2.codegen.md)

## 2021-06-03
- [EgovArticleDAO replyArticle 단위 테스트](2021/06/03/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData](2021/06/03/2.codegen.md)

## 2021-06-02
- [EgovArticleDAO selectArticleDetail 단위 테스트](2021/06/02/1.test.md)

## 2021-06-01
- [EgovArticleDAO updateInqireCo 단위 테스트](2021/06/01/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData](2021/06/01/2.codegen.md)

## 2021-05-31
- [EgovArticleDAO selectMaxInqireCo 단위 테스트](2021/05/31/1.test.md)
- [Code Generation 코드 생성 - mapper gen delete](2021/05/31/2.codegen.md)

## 2021-05-29
- [EgovArticleDAO selectArticleListCnt 단위 테스트](2021/05/29/1.test.md)
- [Code Generation 코드 생성 - mapper gen update](2021/05/29/2.codegen.md)

## 2021-05-28
- [EgovArticleDAO selectArticleList 단위 테스트](2021/05/28/1.test.md)
- [Code Generation 코드 생성 - mapper gen insert](2021/05/28/2.codegen.md)

## 2021-05-27
- [BBSAddedOptionsDAO '게시판 추가기능 정보를 수정한다.' 단위 테스트](2021/05/27/1.test.md)
- [Code Generation 코드 생성 - mapper gen resultMap](2021/05/27/2.codegen.md)

## 2021-05-26
- [BBSAddedOptionsDAO '게시판 추가기능 정보 한 건을 상세조회 한다.' 단위 테스트](2021/05/26/1.test.md)
- [Code Generation 코드 생성 - mapper gen select](2021/05/26/2.codegen.md)

## 2021-05-25
- [BBSAddedOptionsDAO '신규 게시판 추가기능 정보를 등록한다.' 단위 테스트](2021/05/25/1.test.md)
- [Code Generation 코드 생성 - mapper gen](2021/05/25/2.codegen.md)

## 2021-05-24
- [AddressBookDAO '주소록을 구성할 명함의 정보를 조회한다.' 단위 테스트](2021/05/24/1.test.md)
- [Code Generation 코드 생성 - VO gen](2021/05/24/2.codegen.md)

## 2021-05-22
- [AddressBookDAO '주소록을 구성할 사용자의 정보를 조회한다.' 단위 테스트](2021/05/22/1.test.md)
- [Code Generation 코드 생성 - VO gen](2021/05/22/2.codegen.md)

## 2021-05-21
- [AddressBookDAO '사용자 목록에 대한 전체 건수를 조회한다.' 단위 테스트](2021/05/21/1.test.md)
- [Code Generation 코드 생성 - sql gen update](2021/05/21/2.codegen.md)

## 2021-05-20
- [AddressBookDAO '주소록 목록에 대한 전체 건수를 조회한다.' 단위 테스트](2021/05/20/1.test.md)
- [Code Generation 코드 생성 - sql gen insert](2021/05/20/2.codegen.md)

## 2021-05-19
- [AddressBookDAO '주소록 구성원을 삭제한다.' 단위 테스트](2021/05/19/1.test.md)
- [Code Generation 코드 생성 - sql gen](2021/05/19/2.codegen.md)

## 2021-05-18
- [AddressBookDAO '주소록 정보를 수정한다.' 단위 테스트](2021/05/18/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData, ResultSetMetaData](2021/05/18/2.codegen.md)

## 2021-05-17
- [AddressBookDAO '주소록을 구성하는 구성원을 등록한다.' 단위 테스트](2021/05/17/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables mariadb](2021/05/17/2.codegen.md)

## 2021-05-15
- [AddressBookDAO '주소록 정보를 등록한다.' 단위 테스트](2021/05/15/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables](2021/05/15/2.codegen.md)

## 2021-05-14
- [AddressBookDAO '주어진 조건에 맞는 주소록을 불러온다.' 단위 테스트](2021/05/14/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTables](2021/05/14/2.codegen.md)

## 2021-05-12
- [AddressBookDAO '주어진 조건에 따라 주소록에 기등록된 구성원의 목록을 불러온다.' 단위 테스트](2021/05/12/1.test.md)
- [Code Generation 코드 생성 - getTables to setVO](2021/05/12/2.codegen.md)

## 2021-05-11
- [AddressBookDAO '주어진 조건에 따라 주소록에 추가할 명함목록을 불러온다.' 단위 테스트](2021/05/11/1.test.md)
- [Code Generation 코드 생성 - getTables to setVO](2021/05/11/2.codegen.md)

## 2021-05-10
- [AddressBookDAO '주어진 조건에 따라 주소록에 추가할 사용자목록을 불러온다.' 단위 테스트](2021/05/10/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns](2021/05/10/2.codegen.md)

## 2021-05-06
- [AddressBookDAO '주어진 조건에 따른 주소록목록을 불러온다.' 단위 테스트](2021/05/07/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getColumns](2021/05/07/2.codegen.md)

## 2021-05-06
- [FileManageDAO '이미지 파일에 대한 목록을 조회한다.' 단위 테스트](2021/05/06/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData.getTalbes](2021/05/06/2.codegen.md)

## 2021-05-05
- [FileManageDAO '파일명 검색에 대한 목록 전체 건수를 조회한다.' 단위 테스트](2021/05/05/1.test.md)
- [Code Generation 코드 생성 - getSchemas](2021/05/05/2.codegen.md)

## 2021-05-04
- [FileManageDAO '파일명 검색에 대한 목록을 조회한다.' 단위 테스트](2021/05/04/1.test.md)
- [Code Generation 코드 생성 - DatabaseMetaData](2021/05/04/2.codegen.md)

## 2021-05-03
- [FileManageDAO '전체 파일을 삭제한다.' 단위 테스트](2021/05/03/FileManageDAOTest_deleteAllFileInf.md)
- [Code Generation 코드 생성 - setColumnVO](2021/05/03/codegen.md)

## 2021-05-02
- [Code Generation 코드 생성 - GodTestV1 리팩토링](2021/05/02/codegen.md)

## 2021-05-01
- [FileManageDAO '파일에 대한 상세정보를 조회한다.' 단위 테스트](2021/05/01/FileManageDAOTest_selectFileInf.md)
- [Code Generation 코드 생성 - setColumnVO](2021/05/01/god.codegen.md)

## 2021-04-30
- [FileManageDAO '파일 구분자에 대한 최대값을 구한다.' 단위 테스트](2021/04/30/FileManageDAOTest_getMaxFileSN.md)
- [Code Generation 코드 생성 - setTableVO, setColumnVO](2021/04/30/god.codegen.md)
- [ant - 빌드 파일 예](2021/04/30/ant.md)

## 2021-04-29
- [FileManageDAO '파일에 대한 목록을 조회한다.' 단위 테스트](2021/04/29/FileManageDAOTest_selectFileInfs.md)
- [TableVO, ColumnVO 추가](2021/04/29/god.codegen.md)

## 2021-04-28
- [FileManageDAO '하나의 파일을 삭제한다.' 단위 테스트](2021/04/28/FileManageDAOTest_deleteFileInf.md)
- [AllTablesMapperTest_selectList 리팩토링](2021/04/28/god.codegen.md)
- [JNDI Datasource How-To JNDI 데이터 소스 방법](2021/04/28/jndi-datasource-examples-howto.md)

## 2021-04-27
- [FileManageDAO '여러 개의 파일을 삭제한다.' 단위 테스트](2021/04/27/FileManageDAOTest_deleteFileInfs.md)
- [oracle 11g ALL_CONSTRAINTS, ALL_CONS_COLUMNS PK](2021/04/27/god.codegen.md)

## 2021-04-26
- [FileManageDAO '여러 개의 파일에 대한 정보(속성 및 상세)를 수정한다.' 단위 테스트](2021/04/26/FileManageDAOTest_updateFileInfs.md)
- [Code Generation 코드 생성](2021/04/26/god.codegen.md)

## 2021-04-25
- [Code Generation 코드 생성](2021/04/25/god.codegen.md)

## 2021-04-24
- [FileManageDAO '하나의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트](2021/04/24/FileManageDAOTest_insertFileInf.md)
- [EgovFileMngServiceImpl '여러 개의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트](2021/04/24/EgovFileMngServiceImplTest_insertFileInfs.md)
- [EgovFileMngServiceImpl '하나의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트](2021/04/24/EgovFileMngServiceImplTest_insertFileInf.md)
- [Code Generation 코드 생성](2021/04/24/god.codegen.md)

## 2021-04-23
- [FileManageDAO '여러 개의 파일에 대한 정보(속성 및 상세)를 등록한다.' 단위 테스트](2021/04/23/FileManageDAOTest_insertFileInfs.md)

## 2021-04-22
- '그룹정보를 코드형태로 리턴한다.' 단위 테스트[EgovCmmUseServiceImplTest_selectGroupIdDetail](2021/04/22/EgovCmmUseServiceImplTest_selectGroupIdDetail.md)
- [Code Generation 코드 생성](2021/04/22/god.codegen.md)
- [ALL_TAB_COLS](2021/04/22/sql.md)

## 2021-04-21
- [EgovCmmUseServiceImplTest_selectOgrnztIdDetail](2021/04/21/EgovCmmUseServiceImplTest_selectOgrnztIdDetail.md)
- [Code Generation 코드 생성](2021/04/21/god.codegen.md)

## 2021-04-20
- [EgovCmmUseServiceImplTest_selectCmmCodeDetails](2021/04/20/EgovCmmUseServiceImplTest_selectCmmCodeDetails.md)

## 2021-04-19
- [EgovCmmUseServiceImplTest_selectCmmCodeDetail2](2021/04/19/EgovCmmUseServiceImplTest_selectCmmCodeDetail2.md)

## 2021년 04월 17일
- CmmUseDAO 수정 [링크](2021/04/17/CmmUseDAO.md)
- EgovComponentCheckerTest [링크](2021/04/17/EgovComponentChecker.md)
- ComponentScanTest [링크](2021/04/17/ComponentScanTest.md)

## 2021년 04월 16일
- 전자정부 표준프레임워크 개발환경 3.10.0 설치 [링크](2021/04/16/%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80%20%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC%20%EA%B0%9C%EB%B0%9C%ED%99%98%EA%B2%BD%203.10.0%20%EC%84%A4%EC%B9%98.md)
