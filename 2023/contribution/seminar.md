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
