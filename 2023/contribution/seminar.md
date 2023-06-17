# 표준프레임워크 컨트리뷰션 릴레이 세미나 4차 7.5(수)19시.온라인

표준프레임워크 컨트리뷰션 도전기 및 Tip 공유
- 컨트리뷰션 PR 보내보기 실전(라이브 코딩)
- 전자정부 표준프레임워크 개발환경 4.1.0 설치
- 버그수정 및 Compare & pull request

## 목차
1. [개발환경 다운로드](#1-개발환경-다운로드)
   1. [개발자용 개발환경 64bit(Implementation Tool) Version 4.1.0 다운로드](#11-개발자용-개발환경-64bitimplementation-tool-version-410-다운로드)
   2. [서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0 다운로드](#12-서버용-개발환경development-tool---unixlinuxwin64bit-400-다운로드)
   3. [MariaDB Server 10.11.3 다운로드](#13-mariadb-server-10113-다운로드)
   4. [Sourcetree 다운로드](#14-sourcetree-다운로드)
   5. [DBeaver 다운로드](#15-dbeaver-다운로드)
2. [개발환경 설치](#2-개발환경-설치)
   1. [서버용 개발환경 설치](#21-서버용-개발환경-설치)
   2. [개발자용 개발환경 설치](#22-개발자용-개발환경-설치)
   3. [MariaDB Server 10.11.3 설치](#23-mariadb-server-10113-설치)
   4. [Sourcetree 설치](#24-sourcetree-설치)
   5. [DBeaver 설치](#25-dbeaver-설치)
3. [개발환경 설정](#3-개발환경-설정)
   1. [서버용 개발환경 설정](#31-서버용-개발환경-설정)
   2. [개발자용 개발환경 설정](#32-개발자용-개발환경-설정)
   3. [MariaDB Server 10.11.3 설정](#33-mariadb-server-10113-설정)
4. [개발환경 실행](#4-개발환경-실행)
   1. [개발자용 개발환경 실행](#41-개발자용-개발환경-실행)
   2. [MariaDB Server 10.11.3 실행](#42-mariadb-server-10113-실행)
5. [GitHub 깃허브](#5-github-깃허브)
   1. [Sign up 가입하기](#51-sign-up-가입하기)
   2. [Sign in 로그인](#52-sign-in-로그인)
   3. [Generate new token 새 토큰 생성](#53-generate-new-token-새-토큰-생성)
   4. [egovframe-common-components Fork 포크](#54-egovframe-common-components-fork-포크)
6. [버그수정](#6-버그수정)
   1. [버그찾기](#61-버그찾기)
   2. [Sync fork 동기화 포크](#62-Sync-fork-동기화-포크)
   3. [Pull 당기다](#63-Pull-당기다)
   4. [새 브랜치 생성](#64-새-브랜치-생성)
   5. [제네릭 타입 명시-연계정보목록](#65-제네릭-타입-명시-연계정보목록)
   6. [수동 테스트 Manual testing](#66-수동-테스트-Manual-testing)
   7. [Compare & pull request 비교 및 풀 리퀘스트](#67-Compare-&-pull-request-비교-및-풀-리퀘스트)
   8. [한 번 더! 제네릭 타입 명시-송수신모니터링로그목록](#68-한-번-더-제네릭-타입-명시-송수신모니터링로그목록)

## 1. 개발환경 다운로드

### 1.1 개발자용 개발환경 64bit(Implementation Tool) Version 4.1.0 다운로드

다운로드 URL
```
https://www.egovframe.go.kr/home/sub.do?menuNo=94
```

- 개발자용 개발환경 64bit(Implementation Tool) Version 4.1.0
- 릴리즈 일자 - 2023-05-19
- eGovFrameDev-4.1.0-Win-64bit.zip [1,749,835,776 Byte]

### 1.2 서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0 다운로드

다운로드 URL
```
https://www.egovframe.go.kr/home/ntt/nttList.do?searchKey=&searchValue=&menuNo=94&bbsId=204&pagerOffset=10
```

- 서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0
- 릴리즈 일자 - 2022-03-02
- eGovCI-4.0.0_64bit.exe [589,272,325 Byte]

### 1.3 MariaDB Server 10.11.3 다운로드

다운로드 URL
```
https://mariadb.org/download/?t=mariadb&p=mariadb&r=10.11.3&os=windows&cpu=x86_64&pkg=zip&m=blendbyte
```

- Release date: 2023-05-10
- File name: mariadb-10.11.3-winx64.zip
- File size: 84.2 MB

### 1.4 Sourcetree 다운로드

다운로드 URL
```
https://www.sourcetreeapp.com/
```

- Download for Windows
- SourceTreeSetup-3.4.13.exe

### 1.5 DBeaver 다운로드

다운로드 URL
```
https://dbeaver.io/download/
```

- DBeaver Community 23.1.0
- Windows (installer)
- dbeaver-ce-23.1.0-x86_64-setup.exe

## 2. 개발환경 설치

### 2.1. 서버용 개발환경 설치

eGovCI-4.0.0_64bit.exe 더블 클릭

압축 풀기 경로
```
C:\EGOVFRAME
```

서버용 개발환경 설치 위치
```
C:\EGOVFRAME\eGovCI-4.0.0_64bit
```

### 2.2. 개발자용 개발환경 설치

eGovFrameDev-4.1.0-Win-64bit.zip 압축 풀기

압축 풀기 경로
```
C:\EGOVFRAME
```

개발자용 개발환경 설치 위치
```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit
```

### 2.3. MariaDB Server 10.11.3 설치

mariadb-10.11.3-winx64.zip 압축 풀기

압축 풀기 경로
```
C:\EGOVFRAME
```

MariaDB Server 10.11.3 설치 위치
```
C:\EGOVFRAME\mariadb-10.11.3-winx64
```

mariadb-install-db.exe 더블 클릭
```
C:\EGOVFRAME\mariadb-10.11.3-winx64\bin
```

### 2.4. Sourcetree 설치

SourceTreeSetup-3.4.13.exe 더블 클릭

### 2.5. DBeaver 설치

dbeaver-ce-23.1.0-x86_64-setup.exe 더블 클릭

### 3. 개발환경 설정

### 3.1. 서버용 개발환경 설정

settings.xml 설정
```
C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\apache-maven-3.8.4\conf
```

localRepository 추가
```xml
  <localRepository>/EGOVFRAME/.m2/repository</localRepository>
```

maven-default-http-blocker 주석
```xml
    <!-- <mirror>
      <id>maven-default-http-blocker</id>
      <mirrorOf>external:http:*</mirrorOf>
      <name>Pseudo repository to mirror external repositories initially using HTTP.</name>
      <url>http://0.0.0.0/</url>
      <blocked>true</blocked>
    </mirror> -->
```

### 3.2. 개발자용 개발환경 설정

eclipse.ini 설정
```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\eclipse
```

vm 추가
```ini
-vm
plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_17.0.2.v20220201-1208/jre/bin/server/jvm.dll
```

vm 위치
```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\eclipse\plugins\org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_17.0.2.v20220201-1208\jre\bin\server
```

osgi.instance.area.default 수정
```ini
-Dosgi.instance.area.default=/EGOVFRAME/eGovFrameDev-4.1.0-64bit/workspace
```

워크스페이스 위치
```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\workspace
```

eclipse.ini 설정 최종
```ini
-vm
plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_17.0.2.v20220201-1208/jre/bin/server/jvm.dll
-startup
plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar
--launcher.library
plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.2.400.v20211117-0650
-product
org.eclipse.epp.package.jee.product
-showsplash
org.eclipse.epp.package.common
--launcher.defaultAction
openFile
--launcher.defaultAction
openFile
--launcher.appendVmargs
-vmargs
-Dfile.encoding=UTF-8
-Dosgi.requiredJavaVersion=11
-Dosgi.instance.area.default=/EGOVFRAME/eGovFrameDev-4.1.0-64bit/workspace
-Dsun.java.command=Eclipse
-XX:+UseG1GC
-XX:+UseStringDeduplication
--add-modules=ALL-SYSTEM
-Dosgi.requiredJavaVersion=11
-Dosgi.dataAreaRequiresExplicitInit=true
-Dorg.eclipse.swt.graphics.Resource.reportNonDisposed=true
-Xms256m
-Xmx2048m
--add-modules=ALL-SYSTEM
-javaagent:plugins/org.projectlombok.agent_1.18.24/lombok.jar
--add-opens=java.base/java.io=ALL-UNNAMED
--add-opens=java.base/sun.nio.ch=ALL-UNNAMED
--add-opens=java.base/java.net=ALL-UNNAMED
--add-opens=java.base/sun.security.ssl=ALL-UNNAMED

```

### 3.3. MariaDB Server 10.11.3 설정

my.ini 설정
```
C:\EGOVFRAME\mariadb-10.11.3-winx64\data
```

port, character-set-server 추가
```ini
port=3306
character-set-server=utf8
```

my.ini 설정 최종
```ini
[mysqld]
datadir=C:/EGOVFRAME/mariadb-10.11.3-winx64/data

port=3306
character-set-server=utf8

[client]
plugin-dir=C:\EGOVFRAME\mariadb-10.11.3-winx64/lib/plugin

```

### 4. 개발환경 실행

### 4.1. 개발자용 개발환경 실행

eclipse.exe 더블 클릭
```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\eclipse
```

Window > Preferences > Maven > User Settings
```
C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\apache-maven-3.8.4\conf\settings.xml
```

Window > Preferences > Validation
- Suspend all validators 체크

Window > Preferences > Java > Installed JREs
- JRE home:
```
C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\jdk8u242-b08
```

Window > Preferences > Server > Runtime Environments
- Tomcat installation directory:
```
C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\apache-tomcat-8.5.73-jenkins
```
- JRE: jdk8u242-b08 선택

Window > Preferences > Genenal > Editors > Text Editors
- Insert spaces for tabs 체크
- Show whitespace characters 체크

Window > Preferences > Java > Code Style > Formatter
- New 버튼 클릭
- Profile name: egov
- Indentation > Tab Policy: Spaces only

### 4.2. MariaDB Server 10.11.3 실행

mysqld.exe 더블 클릭
```
C:\EGOVFRAME\mariadb-10.11.3-winx64\bin
```

DBeaver 실행

### 5. GitHub 깃허브

https://github.com/

### 5.1. Sign up 가입하기

Enter your email*
- 이메일을 입력하세요*
```
godsoft23@gmail.com
```

Create a password*
- 비밀번호 만들기*

Enter a username*
- 사용자 이름을 입력하세요*
```
godsoft230606
```

Would you like to receive product updates and announcements via email?
- 이메일을 통해 제품 업데이트 및 공지 사항을 수신하시겠습니까?
- Type "y" for yes or "n" for no
- 예인 경우 "y"를 입력하고 아니요인 경우 "n"을 입력합니다.
```
n
```

Verify your account
- 계정 확인

Create account
- 계정 만들기

### 5.2. Sign in 로그인

Username or email address 
- 아이디 또는 이메일 주소

Password
- 비밀번호

### 5.3 Generate new token 새 토큰 생성

https://github.com/settings/tokens

Settings > Developer settings > Personal access tokens > Tokens (classic)
- Generate new token 버튼 클릭
  - 새 토큰 생성
- Generate new token (classic) 버튼 클릭
  - 새 토큰 생성(클래식)

Note 메모
- godsoft23

Expiration 만료
- 30 days
  - 30 일
- No expiration
  - 유효 기간 없음

repo 선택

Generate token 버튼 클릭
- 토큰 생성

Make sure to copy your personal access token now. You won’t be able to see it again!
- 지금 개인 액세스 토큰을 복사해야 합니다. 다시 볼 수 없게 됩니다!

### 5.4 egovframe-common-components Fork 포크

https://github.com/eGovFramework/egovframe-common-components

Fork 버튼 클릭
- 포크

Create fork 버튼 클릭
- 포크 만들기

Sourcetree 실행

Clone
- 클론

소스 경로 / URL:
```
https://github.com/GSITM2023/egovframe-common-components.git
```

목적지 경로:
```
C:\EGOVFRAME\eGovFrameDev-4.1.0-64bit\workspace\egovframe-common-components
```

이름:
- egovframe-common-components

## 6. 버그수정

***제로버그를 위하여! 일일 버그수정!***

### 6.1 버그찾기

제네릭 타입 명시 안 된 버그찾기

```
List<?>
```

버그수정 할 것들
- `Map<?, ?>`
- @SuppressWarnings
- System.out.println
- Constructor-based Dependency Injection 생성자 기반 종속성 주입
  - https://docs.spring.io/spring-framework/docs/5.3.28/reference/html/core.html#beans-constructor-injection
- Map 파라미터를 VO(컬럼), DefaultVO(컬럼외)로
- Controller에 Dto 추가해서 요청/응답을 명시적으로 명세화
- DAO, ServiceImpl, Controller 등 throws Exception 제거하기

### 6.2 Sync fork 동기화 포크

### 6.3 Pull 당기다

### 6.4 새 브랜치 생성

### 6.5 제네릭 타입 명시-연계정보목록

```
trm
service
impl
TrsmrcvMntrngDao.java (3 matches)
144: public List<?> selectCntcList(CntcVO searchVO) throws Exception {  
```
#### TrsmrcvMntrngDao.java

List<?>
```java
List<CntcVO>
```

#### EgovTrsmrcvMntrngServiceImpl.java

- @SuppressWarnings("unchecked") 제거
- (List<CntcVO>) 제거

#### EgovTrsmrcvMntrngController.java

- @SuppressWarnings("unused") 제거
- @ModelAttribute("searchVO") 제거
- LoginVO user = (LoginVO)EgovUserDetailsHelper.getAuthenticatedUser(); 제거
- searchVO 를 cntcVO 로 수정

#### EgovCntcListPopup.jsp

```jsp
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
```

```jsp
<form:form modelAttribute="cntcVO" name="frm" id="frm" action="${pageContext.request.contextPath}/utl/sys/trm/getCntcList.do" method="get">
```

- searchVO 를 cntcVO 로 수정

### 6.6 수동 테스트 Manual testing

톰캣 실행

로그인
- http://localhost:8080/egovframework-all-in-one/

ID
```
TEST1
```

PW
```
rhdxhd12
```

ID/PW

구분|ID|PW|비고
-|-|-|-
업무사용자|TEST1|rhdxhd12|영문으로 공통12
||webmaster|rhdxhd12|영문으로 공통12
일반사용자|USER|rhdxhd12|영문으로 공통12
기업사용자|ENTERPRISE|rhdxhd12|영문으로 공통12

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.1:init_table#%ED%85%8C%EC%9D%B4%EB%B8%94_%EC%B4%88%EA%B8%B0%EB%8D%B0%EC%9D%B4%ED%84%B0_%EC%83%9D%EC%84%B1_%EC%8A%A4%ED%81%AC%EB%A6%BD%ED%8A%B8

연계 조회 목록
```
http://localhost:8080/egovframework-all-in-one/utl/sys/trm/getCntcList.do
```

### 6.7 Compare & pull request 비교 및 풀 리퀘스트

### 6.8 한 번 더! 제네릭 타입 명시-송수신모니터링로그목록

```
trm
service
impl
TrsmrcvMntrngDao.java (3 matches)
112: public List<?> selectTrsmrcvMntrngLogList(TrsmrcvMntrngLog searchVO) throws Exception {
```

송수신모니터링로그 목록
```
http://localhost:8080/egovframework-all-in-one/utl/sys/trm/getTrsmrcvMntrngLogList.do
```
