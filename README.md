# 개발일기

[할 일(To Do)](todo/2022.md)

[2023 전자정부 표준프레임워크 컨트리뷰션 참가](2023/2023%20%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80%20%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC%20%EC%BB%A8%ED%8A%B8%EB%A6%AC%EB%B7%B0%EC%85%98%20%EC%B0%B8%EA%B0%80/2023%20%EC%A0%84%EC%9E%90%EC%A0%95%EB%B6%80%20%ED%91%9C%EC%A4%80%ED%94%84%EB%A0%88%EC%9E%84%EC%9B%8C%ED%81%AC%20%EC%BB%A8%ED%8A%B8%EB%A6%AC%EB%B7%B0%EC%85%98%20%EC%B0%B8%EA%B0%80.md)

## 2023-05-01

새길말씀(고린도전서 12:7)

각 사람에게 성령을 나타내심은 유익하게 하려 하심이라

### lineIterator-java.io.File-

```java
public static LineIterator lineIterator(File file)
                                 throws IOException
```

Returns an Iterator for the lines in a File using the default encoding for the VM.

VM의 기본 인코딩을 사용하여 File의 행에 대한 Iterator를 반환합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#lineIterator-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.2017

### mariadb 권한 부여

Oracle VM VirtualBox NAT

```
CREATE USER 'root'@'_gateway' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'_gateway' WITH GRANT OPTION;
```

Oracle VM VirtualBox 네트워크 어댑터에 브리지

```
CREATE USER 'root'@'192.168.0.254' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.0.254' WITH GRANT OPTION;
```

### 톰캣 캐시의 최대 크기를 증가

E:\EGOVFRAME2\eGovFrameDev-4.1.0-64bit\workspace\Servers\egovframe-common-components-config\context.xml

```xml
    <!-- 캐시의 최대 크기를 증가시키는 것을 고려해 보십시오. -->
    <!-- 10240 10MB 에서 102400 100MB 로 수정 -->
    <Resources cacheMaxSize="10240"></Resources>
```

## 2023-04-30

새길말씀(로마서 15:13)

소망의 하나님이 모든 기쁨과 평강을 믿음 안에서 너희에게 충만하게 하사 성령의 능력으로 소망이 넘치게 하시기를 원하노라

### lastModifiedUnchecked-java.io.File-

```java
public static long lastModifiedUnchecked(File file)
```

Returns the last modification time in milliseconds via Files.getLastModifiedTime(Path, LinkOption...).

Files.getLastModifiedTime(Path, LinkOption...)을 통해 마지막 수정 시간을 밀리초 단위로 반환합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#lastModifiedUnchecked-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1994

### mariadb-10.11 yum 설치

```
MariaDB Package Repository Setup and Usage

su - root

curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version="mariadb-10.11"

yum install MariaDB-server MariaDB-client MariaDB-backup -y

시스템 서비스 상태 표시
systemctl status mariadb

시스템 서비스 시작
systemctl start mariadb

시스템 서비스 중지
systemctl stop mariadb

시스템 서비스 다시 시작
systemctl restart mariadb

시스템 서비스 활성화
systemctl enable mariadb

시스템 서비스 비활성화
systemctl disable mariadb

mysql

create user 'root'@'_gateway' identified by '';
grant all on *.* to 'root'@'_gateway';
```

su - root

MariaDB 10.11의 리포지토리에서 설치하도록 시스템을 구성

```sh
curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version="mariadb-10.11"
```

MariaDB-server MariaDB-client MariaDB-backup 설치

```sh
yum install MariaDB-server MariaDB-client MariaDB-backup -y
```

mariadb 시스템 서비스 활성화

```sh
systemctl enable mariadb
```

mariadb 시스템 서비스 시작

```sh
systemctl start mariadb
```

mysql 실행

```sh
mysql
```

root@_gateway 사용자 생성/권한 모두 부여

```
create user 'root'@'_gateway' identified by '';
grant all on *.* to 'root'@'_gateway';
```

/etc/my.cnf.d

server.cnf

```cnf
[mysqld]

port=3306
character-set-server=utf8
```

client.cnf

```cnf
[client]

port=3306
```

## 2023-04-29

새길말씀(로마서 7:6)

이제는 우리가 얽매였던 것에 대하여 죽었으므로 율법에서 벗어났으니 이러므로 우리가 영의 새로운 것으로 섬길 것이요 율법 조문의 묵은 것으로 아니할지니라

### lastModified-java.io.File-

```java
public static long lastModified(File file)
                         throws IOException
```

Returns the last modification time in milliseconds via Files.getLastModifiedTime(Path, LinkOption...).

Files.getLastModifiedTime(Path, LinkOption...)을 통해 마지막 수정 시간을 밀리초 단위로 반환합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#lastModified-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1973

## 2023-04-28

새길말씀(로마서 6:8)

만일 우리가 그리스도와 함께 죽었으면 또한 그와 함께 살 줄을 믿노니

### iterateFilesAndDirs-java.io.File-org.apache.commons.io.filefilter.IOFileFilter-org.apache.commons.io.filefilter.IOFileFilter-

```java
public static Iterator<File> iterateFilesAndDirs(File directory,
                                                 IOFileFilter fileFilter,
                                                 IOFileFilter dirFilter)
```

Iterates over the files in given directory (and optionally its subdirectories).

지정된 디렉터리(및 선택적으로 해당 하위 디렉터리)의 파일을 반복합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#iterateFilesAndDirs-java.io.File-org.apache.commons.io.filefilter.IOFileFilter-org.apache.commons.io.filefilter.IOFileFilter-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1954

### Rocky-8.7-x86_64-minimal.iso httpd-2.4.57.tar.gz 설치

#### apr-util-devel gcc pcre2-devel make redhat-rpm-config 설치

su - root

```sh
cd ~
yum -y install apr-util-devel gcc pcre2-devel make redhat-rpm-config
mkdir -p /GOD
chown god:god /GOD
```

```sh
systemctl status firewalld
```

```sh
systemctl stop firewalld
```

```sh
systemctl disable firewalld
```

#### httpd-2.4.57.tar.gz 설치

su - god

```sh
cd ~
tar xvf httpd-2.4.57.tar.gz
cd httpd-2.4.57/
./configure --prefix=/GOD/httpd-2.4.57
make
make install
```

```
/GOD/httpd-2.4.57/conf/
```

```
httpd.conf
```

```
ServerName www.example.com:80
```

su - root

```sh
chown root:god /GOD/httpd-2.4.57/bin/httpd
chmod +s /GOD/httpd-2.4.57/bin/httpd
```

### mariadb-10.11 설치

```
https://mariadb.com/kb/en/mariadb-package-repository-setup-and-usage/

curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version="mariadb-10.6"

curl -LsS https://r.mariadb.com/downloads/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version="mariadb-10.11"

yum install MariaDB-server MariaDB-client MariaDB-backup -y

yum remove MariaDB-server MariaDB-client MariaDB-backup -y

systemctl status mariadb
systemctl enable mariadb
systemctl start mariadb
systemctl stop mariadb

mysql

CREATE USER 'root'@'_gateway' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'_gateway' IDENTIFIED BY '';
```

## 2023-04-27

새길말씀(로마서 5:8)

우리가 아직 죄인 되었을 때에 그리스도께서 우리를 위하여 죽으심으로 하나님께서 우리에 대한 자기의 사랑을 확증하셨느니라

### iterateFiles-java.io.File-java.lang.String:A-boolean-

```java
public static Iterator<File> iterateFiles(File directory,
                                          String[] extensions,
                                          boolean recursive)
```

Iterates over the files in a given directory (and optionally its subdirectories) which match an array of extensions.

확장 배열과 일치하는 지정된 디렉토리(및 선택적으로 해당 하위 디렉토리)의 파일을 반복합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#iterateFiles-java.io.File-java.lang.String:A-boolean-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1922

### Rocky-8.7-x86_64-minimal.iso httpd-2.4.57.tar.gz 설치

su - root

```sh
yum -y install apr-util-devel gcc pcre2-devel make redhat-rpm-config
mkdir -p /NIRS
chown god:god /NIRS
chown root:god /NIRS/httpd-2.4.57/bin/httpd
chmod +s /NIRS/httpd-2.4.57/bin/httpd
systemctl status firewalld
systemctl stop firewalld
systemctl disable firewalld
```

su - god

```sh
tar xvf httpd-2.4.57.tar.gz
cd httpd-2.4.57/
./configure --prefix=/NIRS/httpd-2.4.57
make
make install
chmod +x /NIRS/httpd-2.4.57/bin/apachectl
```

```
/NIRS/httpd-2.4.57/conf/
```

```
httpd.conf
```

```
ServerName www.example.com:80
```

```sh
/NIRS/httpd-2.4.57/bin/apachectl start
```

```sh
/NIRS/httpd-2.4.57/bin/apachectl stop
```

```sh
ps -ef | grep httpd
```

## 2023-04-26

새길말씀(로마서 4:25)

예수는 우리가 범죄한 것 때문에 내줌이 되고 또한 우리를 의롭다 하시기 위하여 살아나셨느니라

### iterateFiles-java.io.File-org.apache.commons.io.filefilter.IOFileFilter-org.apache.commons.io.filefilter.IOFileFilter-

```java
public static Iterator<File> iterateFiles(File directory,
                                          IOFileFilter fileFilter,
                                          IOFileFilter dirFilter)
```

Iterates over the files in given directory (and optionally its subdirectories).

지정된 디렉터리(및 선택적으로 해당 하위 디렉터리)의 파일을 반복합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#iterateFiles-java.io.File-org.apache.commons.io.filefilter.IOFileFilter-org.apache.commons.io.filefilter.IOFileFilter-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1902

## 2023-04-25

새길말씀(로마서 3:24)

그리스도 예수 안에 있는 속량으로 말미암아 하나님의 은혜로 값 없이 의롭다 하심을 얻은 자 되었느니라

### isSymlink-java.io.File-

```java
public static boolean isSymlink(File file)
```

Tests whether the specified file is a symbolic link rather than an actual file.

지정된 파일이 실제 파일이 아닌 심볼릭 링크인지 여부를 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isSymlink-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1878

## 2023-04-24

새길말씀(로마서 1:17)

복음에는 하나님의 의가 나타나서 믿음으로 믿음에 이르게 하나니 기록된 바 오직 의인은 믿음으로 말미암아 살리라 함과 같으니라

### isRegularFile-java.io.File-java.nio.file.LinkOption...-

```java
public static boolean isRegularFile(File file,
                                    LinkOption... options)
```

Tests whether the specified File is a regular file or not. Implemented as a null-safe delegate to Files.isRegularFile(Path path, LinkOption... options).

지정된 파일이 일반 파일인지 여부를 테스트합니다. Files.isRegularFile(경로 경로, LinkOption... 옵션)에 대한 null 안전 위임으로 구현되었습니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isRegularFile-java.io.File-java.nio.file.LinkOption...-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1863

## 2023-04-23

새길말씀(요한계시록 22:14)

자기 두루마기를 빠는 자들은 복이 있으니 이는 그들이 생명나무에 나아가며 문들을 통하여 성에 들어갈 권세를 받으려 함이로다

### isFileOlder-java.io.File-long-

```java
public static boolean isFileOlder(File file,
                                  long timeMillis)
```

Tests if the specified File is older than the specified time reference.

지정된 파일이 지정된 시간 참조보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-long-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1844

## 2023-04-22

새길말씀(요한계시록 21:7)

이기는 자는 이것들을 상속으로 받으리라 나는 그의 하나님이 되고 그는 내 아들이 되리라

### isFileOlder-java.io.File-java.time.Instant-

```java
public static boolean isFileOlder(File file,
                                  Instant instant)
```

Tests if the specified File is older than the specified Instant.

지정된 File이 지정된 Instant보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.time.Instant-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1830

## 2023-04-21

새길말씀(요한계시록 5:12)

큰 음성으로 이르되 죽임을 당하신 어린 양은 능력과 부와 지혜와 힘과 존귀와 영광과 찬송을 받으시기에 합당하도다 하더라

### isFileOlder-java.io.File-java.io.File-

```java
public static boolean isFileOlder(File file,
                                  File reference)
```

Tests if the specified File is older than the reference File.

지정된 파일이 참조 파일보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1816

## 2023-04-19

새길말씀(베드로후서 3:13)

우리는 그의 약속대로 의가 있는 곳인 새 하늘과 새 땅을 바라보도다

### isFileOlder-java.io.File-java.util.Date-

```java
public static boolean isFileOlder(File file,
                                  Date date)
```

Tests if the specified File is older than the specified Date.

지정된 파일이 지정된 날짜보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.util.Date-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1802

## 2023-04-18

새길말씀(베드로후서 2:9)

주께서 경건한 자는 시험에서 건지실 줄 아시고 불의한 자는 형벌 아래에 두어 심판 날까지 지키시며

### isFileOlder-java.io.File-java.time.chrono.ChronoZonedDateTime-

```java
public static boolean isFileOlder(File file,
                                  ChronoZonedDateTime<?> chronoZonedDateTime)
```

Tests if the specified File is older than the specified ChronoZonedDateTime.

지정된 파일이 지정된 ChronoZonedDateTime보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.time.chrono.ChronoZonedDateTime-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1789

## 2023-04-17

새길말씀(베드로후서 1:3)

그의 신기한 능력으로 생명과 경건에 속한 모든 것을 우리에게 주셨으니 이는 자기의 영광과 덕으로써 우리를 부르신 이를 앎으로 말미암음이라

### isFileOlder-java.io.File-java.time.chrono.ChronoLocalDateTime-java.time.ZoneId-

```java
public static boolean isFileOlder(File file,
                                  ChronoLocalDateTime<?> chronoLocalDateTime,
                                  ZoneId zoneId)
```

Tests if the specified File is older than the specified ChronoLocalDateTime at the specified ZoneId.

지정된 파일이 지정된 ZoneId에서 지정된 ChronoLocalDateTime보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.time.chrono.ChronoLocalDateTime-java.time.ZoneId-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1772

## 2023-04-16

새길말씀(베드로전서 5:4)

그리하면 목자장이 나타나실 때에 시들지 아니하는 영광의 관을 얻으리라

### isFileOlder-java.io.File-java.time.chrono.ChronoLocalDateTime-

```java
public static boolean isFileOlder(File file,
                                  ChronoLocalDateTime<?> chronoLocalDateTime)
```

Tests if the specified File is older than the specified ChronoLocalDateTime at the system-default time zone.

지정된 파일이 시스템 기본 시간대에서 지정된 ChronoLocalDateTime보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.time.chrono.ChronoLocalDateTime-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1755

## 2023-04-14

새길말씀(베드로전서 3:15-16)

너희 마음에 그리스도를 주로 삼아 거룩하게 하고 너희 속에 있는 소망에 관한 이유를 묻는 자에게는 대답할 것을 항상 준비하되 온유와 두려움으로 하고
선한 양심을 가지라 이는 그리스도 안에 있는 너희의 선행을 욕하는 자들로 그 비방하는 일에 부끄러움을 당하게 하려 함이라

### isFileOlder-java.io.File-java.time.chrono.ChronoLocalDate-java.time.LocalTime-

```java
public static boolean isFileOlder(File file,
                                  ChronoLocalDate chronoLocalDate,
                                  LocalTime localTime)
```

Tests if the specified File is older than the specified ChronoLocalDate at the specified LocalTime.

지정된 파일이 지정된 LocalTime에서 지정된 ChronoLocalDate보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.time.chrono.ChronoLocalDate-java.time.LocalTime-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1731

## 2023-04-13

새길말씀(베드로전서 2:9)

그러나 너희는 택하신 족속이요 왕 같은 제사장들이요 거룩한 나라요 그의 소유가 된 백성이니 이는 너희를 어두운 데서 불러 내어 그의 기이한 빛에 들어가게 하신 이의 아름다운 덕을 선포하게 하려 하심이라

### isFileOlder-java.io.File-java.time.chrono.ChronoLocalDate-

```java
public static boolean isFileOlder(File file,
                                  ChronoLocalDate chronoLocalDate)
```

Tests if the specified File is older than the specified ChronoLocalDate at the current time.

지정된 파일이 현재 시간에 지정된 ChronoLocalDate보다 오래된지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileOlder-java.io.File-java.time.chrono.ChronoLocalDate-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1708

## 2023-04-12

새길말씀(베드로전서 1:3)

우리 주 예수 그리스도의 아버지 하나님을 찬송하리로다 그의 많으신 긍휼대로 예수 그리스도를 죽은 자 가운데서 부활하게 하심으로 말미암아 우리를 거듭나게 하사 산 소망이 있게 하시며

### isFileNewer-java.io.File-long-

```java
public static boolean isFileNewer(File file,
                                  long timeMillis)
```

Tests if the specified File is newer than the specified time reference.

지정된 파일이 지정된 시간 참조보다 최신인지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-long-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1683

## 2023-04-11

새길말씀(요한복음 21:16)

또 두 번째 이르시되 요한의 아들 시몬아 네가 나를 사랑하느냐 하시니 이르되 주님 그러하나이다 내가 주님을 사랑하는 줄 주님께서 아시나이다 이르시되 내 양을 치라 하시고

### isFileNewer-java.io.File-java.time.Instant-

```java
public static boolean isFileNewer(File file,
                                  Instant instant)
```

Tests if the specified File is newer than the specified Instant.

지정된 File이 지정된 Instant보다 최신인지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.time.Instant-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1669

## 2023-04-10

새길말씀(요한복음 20:29)

예수께서 이르시되 너는 나를 본 고로 믿느냐 보지 못하고 믿는 자들은 복되도다 하시니라

### isFileNewer-java.io.File-java.io.File-

```java
public static boolean isFileNewer(File file,
                                  File reference)
```

Tests if the specified File is newer than the reference File.

지정된 파일이 참조 파일보다 최신인지 테스트합니다.


https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1654

## 2023-04-09

새길말씀(요한복음 20:15)

예수께서 이르시되 여자여 어찌하여 울며 누구를 찾느냐 하시니 마리아는 그가 동산지기인 줄 알고 이르되 주여 당신이 옮겼거든 어디 두었는지 내게 이르소서 그리하면 내가 가져가리이다

### isFileNewer-java.io.File-java.util.Date-

```java
public static boolean isFileNewer(File file,
                                  Date date)
```

Tests if the specified File is newer than the specified Date.

지정된 파일이 지정된 날짜보다 최신인지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.util.Date-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1639

## 2023-04-08

새길말씀(요한복음 19:40)

이에 예수의 시체를 가져다가 유대인의 장례 법대로 그 향품과 함께 세마포로 쌌더라

### isFileNewer-java.io.File-java.time.chrono.ChronoZonedDateTime-

```java
public static boolean isFileNewer(File file,
                                  ChronoZonedDateTime<?> chronoZonedDateTime)
```

Tests if the specified File is newer than the specified ChronoZonedDateTime.

지정된 파일이 지정된 ChronoZonedDateTime보다 최신인지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.time.chrono.ChronoZonedDateTime-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1625

## 2023-04-07

새길말씀(요한복음 19:30)

예수께서 신 포도주를 받으신 후에 이르시되 다 이루었다 하시고 머리를 숙이니 영혼이 떠나가시니라

### isFileNewer-java.io.File-java.time.chrono.ChronoLocalDateTime-java.time.ZoneId-

```java
public static boolean isFileNewer(File file,
                                  ChronoLocalDateTime<?> chronoLocalDateTime,
                                  ZoneId zoneId)
```

Tests if the specified File is newer than the specified ChronoLocalDateTime at the specified ZoneId.

지정된 File이 지정된 ZoneId에서 지정된 ChronoLocalDateTime보다 최신인지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.time.chrono.ChronoLocalDateTime-java.time.ZoneId-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1608

## 2023-04-06

새길말씀(요한복음 18:36)

예수께서 대답하시되 내 나라는 이 세상에 속한 것이 아니니라 만일 내 나라가 이 세상에 속한 것이었더라면 내 종들이 싸워 나로 유대인들에게 넘겨지지 않게 하였으리라 이제 내 나라는 여기에 속한 것이 아니니라

### isFileNewer-java.io.File-java.time.chrono.ChronoLocalDateTime-

```java
public static boolean isFileNewer(File file,
                                  ChronoLocalDateTime<?> chronoLocalDateTime)
```

Tests if the specified File is newer than the specified ChronoLocalDateTime at the system-default time zone.

지정된 파일이 시스템 기본 시간대에서 지정된 ChronoLocalDateTime보다 최신인지 테스트합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.time.chrono.ChronoLocalDateTime-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1591

## 2023-04-05

새길말씀(요한복음 18:20)

예수께서 대답하시되 내가 드러내 놓고 세상에 말하였노라 모든 유대인들이 모이는 회당과 성전에서 항상 가르쳤고 은밀하게는 아무 것도 말하지 아니하였거늘

### isFileNewer-java.io.File-java.time.chrono.ChronoLocalDate-java.time.LocalTime-

```java
public static boolean isFileNewer(File file,
                                  ChronoLocalDate chronoLocalDate,
                                  LocalTime localTime)
```

Tests if the specified File is newer than the specified ChronoLocalDate at the specified time.

지정된 파일이 지정된 시간에 지정된 ChronoLocalDate보다 최신인지 테스트합니다.

Note: The input date and time are assumed to be in the system default time-zone. To use a non-default time-zone use the method isFileNewer(file, chronoLocalDate.atTime(localTime), zoneId) where zoneId is a valid ZoneId.

참고: 입력 날짜 및 시간은 시스템 기본 시간대에 있는 것으로 가정합니다. 기본 시간대가 아닌 시간대를 사용하려면 isFileNewer(file, chronoLocalDate.atTime(localTime), zoneId) 메소드를 사용하십시오. 여기서 zoneId는 유효한 ZoneId입니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.time.chrono.ChronoLocalDate-java.time.LocalTime-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1568

## 2023-04-04

새길말씀(요한복음 17:20-21)

내가 비옵는 것은 이 사람들만 위함이 아니요 또 그들의 말로 말미암아 나를 믿는 사람들도 위함이니

아버지여, 아버지께서 내 안에, 내가 아버지 안에 있는 것 같이 그들도 다 하나가 되어 우리 안에 있게 하사 세상으로 아버지께서 나를 보내신 것을 믿게 하옵소서

### isFileNewer-java.io.File-java.time.chrono.ChronoLocalDate-

```java
public static boolean isFileNewer(File file,
                                  ChronoLocalDate chronoLocalDate)
```

Tests if the specified File is newer than the specified ChronoLocalDate at the current time.

지정된 파일이 현재 시간에 지정된 ChronoLocalDate보다 최신인지 테스트합니다.

Note: The input date is assumed to be in the system default time-zone with the time part set to the current time. To use a non-default time-zone use the method isFileNewer(file, chronoLocalDate.atTime(LocalTime.now(zoneId)), zoneId) where zoneId is a valid ZoneId.

참고: 입력 날짜는 시간 부분이 현재 시간으로 설정된 시스템 기본 시간대에 있는 것으로 가정합니다. 기본이 아닌 시간대를 사용하려면 isFileNewer(file, chronoLocalDate.atTime(LocalTime.now(zoneId)), zoneId) 메소드를 사용하십시오. 여기서 zoneId는 유효한 ZoneId입니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isFileNewer-java.io.File-java.time.chrono.ChronoLocalDate-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1546

## 2023-04-03

새길말씀(요한복음 12:46)

나는 빛으로 세상에 왔나니 무릇 나를 믿는 자로 어둠에 거하지 않게 하려 함이로라

### isEmptyDirectory-java.io.File-

```java
public static boolean isEmptyDirectory(File directory)
                                throws IOException
```

Tests whether the directory is empty.

디렉토리가 비어 있는지 테스트합니다.

Parameters:

directory - the directory to query.

디렉토리 - 조회할 디렉토리.

Returns:

whether the directory is empty.

디렉토리가 비어 있는지 여부.

Throws:

IOException - if an I/O error occurs.

IOException - I/O 에러가 발생했을 경우

NotDirectoryException - if the file could not otherwise be opened because it is not a directory (optional specific exception).

NotDirectoryException - 파일이 디렉토리가 아니기 때문에 열 수 없는 경우(선택적 특정 예외).

Since:

2.9.0

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isEmptyDirectory-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1524

## 2023-04-02

새길말씀(요한복음 12:13)

종려나무 가지를 가지고 맞으러 나가 외치되 호산나 찬송하리로다 주의 이름으로 오시는 이 곧 이스라엘의 왕이시여 하더라

### isDirectory-java.io.File-java.nio.file.LinkOption...-

```java
public static boolean isDirectory(File file,
                                  LinkOption... options)
```

Tests whether the specified File is a directory or not. Implemented as a null-safe delegate to Files.isDirectory(Path path, LinkOption... options).

지정된 파일이 디렉토리인지 여부를 테스트합니다. Files.isDirectory(경로 경로, LinkOption... 옵션)에 대한 null 안전 위임으로 구현되었습니다.

Parameters:

file - the path to the file.

파일 - 파일의 경로.

options - options indicating how symbolic links are handled

options - 심볼릭 링크를 처리하는 방법을 나타내는 옵션

Returns:

true if the file is a directory; false if the path is null, the file does not exist, is not a directory, or it cannot be determined if the file is a directory or not.

파일이 디렉토리이면 true이고, 그렇지 않으면 false입니다. 경로가 null이거나, 파일이 존재하지 않거나, 디렉터리가 아니거나, 파일이 디렉터리인지 여부를 확인할 수 없는 경우 false입니다.

Throws:

SecurityException - In the case of the default provider, and a security manager is installed, the checkRead method is invoked to check read access to the directory.

SecurityException - 기본 공급자이고 보안 관리자가 설치된 경우 checkRead 메서드가 호출되어 디렉터리에 대한 읽기 액세스를 확인합니다.

Since:

2.9.0

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#isDirectory-java.io.File-java.nio.file.LinkOption...-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1510

## 2023-04-01

새길말씀(골로새서 4:2)

기도를 계속하고 기도에 감사함으로 깨어 있으라

### getUserDirectoryPath--

```java
public static String getUserDirectoryPath()
```

Returns the path to the user's home directory.

사용자의 홈 디렉토리 경로를 반환합니다.

Returns:

the path to the user's home directory.

사용자의 홈 디렉토리 경로.

Since:

2.0

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#getUserDirectoryPath--

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1492

## 2023-03-31

새길말씀(골로새서 3:17)

또 무엇을 하든지 말에나 일에나 다 주 예수의 이름으로 하고 그를 힘입어 하나님 아버지께 감사하라

### getUserDirectory--

```java
public static File getUserDirectory()
```

Returns a File representing the user's home directory.

사용자의 홈 디렉토리를 나타내는 파일을 반환합니다.

Returns:

the user's home directory.

사용자의 홈 디렉토리.

Since:

2.0

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#getUserDirectory--

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1481

## 2023-03-30

새길말씀(골로새서 2:6)

그러므로 너희가 그리스도 예수를 주로 받았으니 그 안에서 행하되

### getTempDirectoryPath--

```java
public static String getTempDirectoryPath()
```

Returns the path to the system temporary directory.

시스템 임시 디렉토리의 경로를 반환합니다.

Returns:

the path to the system temporary directory.

시스템 임시 디렉토리의 경로.

Since:

2.0

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#getTempDirectoryPath--

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1470

## 2023-03-29

새길말씀(골로새서 1:9)

이로써 우리도 듣던 날부터 너희를 위하여 기도하기를 그치지 아니하고 구하노니 너희로 하여금 모든 신령한 지혜와 총명에 하나님의 뜻을 아는 것으로 채우게 하시고

### getTempDirectory--

```java
public static File getTempDirectory()
```

Returns a File representing the system temporary directory.

시스템 임시 디렉토리를 나타내는 파일을 반환합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#getTempDirectory--

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1459

## 2023-03-28

새길말씀(요한복음 12:8)

가난한 자들은 항상 너희와 함께 있거니와 나는 항상 있지 아니하리라 하시니라

### getFile-java.lang.String...-

```java
public static File getFile(String... names)
```

Construct a file from the set of name elements.

이름 요소 세트에서 파일을 구성하십시오.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#getFile-java.lang.String...-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1429

## 2023-03-27

새길말씀(요한복음 11:45)

마리아에게 와서 예수께서 하신 일을 본 많은 유대인이 그를 믿었으나

### getFile-java.io.File-java.lang.String...-

```java
public static File getFile(File directory,
                           String... names)
```

Construct a file from the set of name elements.

이름 요소 세트에서 파일을 구성하십시오.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#getFile-java.io.File-java.lang.String...-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1412

## 2023-03-24

새길말씀(히브리서 3:14)

우리가 시작할 때에 확신한 것을 끝까지 견고히 잡고 있으면 그리스도와 함께 참여한 자가 되리라

### forceMkdirParent-java.io.File-

```java
public static void forceMkdirParent(File file)
                             throws IOException
```

Makes any necessary but nonexistent parent directories for a given File. If the parent directory cannot be created then an IOException is thrown.

지정된 파일에 대해 필요하지만 존재하지 않는 상위 디렉토리를 만듭니다. 상위 디렉토리를 작성할 수 없으면 IOException이 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#forceMkdirParent-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1395

## 2023-03-23

새길말씀(히브리서 2:10)

그러므로 만물이 그를 위하고 또한 그로 말미암은 이가 많은 아들들을 이끌어 영광에 들어가게 하시는 일에 그들의 구원의 창시자를 고난을 통하여 온전하게 하심이 합당하도다

### forceMkdir-java.io.File-

```java
public static void forceMkdir(File directory)
                       throws IOException
```

Makes a directory, including any necessary but nonexistent parent directories. If a file already exists with specified name but it is not a directory then an IOException is thrown. If the directory cannot be created (or the file already exists but is not a directory) then an IOException is thrown.

필요하지만 존재하지 않는 상위 디렉토리를 포함하여 디렉토리를 만듭니다. 지정된 이름을 가진 파일이 이미 존재하지만 디렉토리가 아닌 경우 IOException이 발생합니다. 디렉토리를 생성할 수 없는 경우(또는 파일이 이미 존재하지만 디렉토리가 아닌 경우) IOException이 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#forceMkdir-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1382

## 2023-03-22

새길말씀(히브리서 1:3)

이는 하나님의 영광의 광채시요 그 본체의 형상이시라 그의 능력의 말씀으로 만물을 붙드시며 죄를 정결하게 하는 일을 하시고 높은 곳에 계신 지극히 크신 이의 우편에 앉으셨느니라

### forceDeleteOnExit-java.io.File-

```java
public static void forceDeleteOnExit(File file)
                              throws IOException
```

Schedules a file to be deleted when JVM exits. If file is directory delete it and all sub-directories.

JVM이 종료될 때 파일이 삭제되도록 예약합니다. 파일이 디렉토리이면 파일과 모든 하위 디렉토리를 삭제하십시오.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#forceDeleteOnExit-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1361

## 2023-03-21

새길말씀(시편 34:8)

너희는 여호와의 선하심을 맛보아 알지어다 그에게 피하는 자는 복이 있도다

### forceDelete-java.io.File-

```java
public static void forceDelete(File file)
                        throws IOException
```

Deletes a file or directory. For a directory, delete it and all sub-directories.

파일 또는 디렉토리를 삭제합니다. 디렉토리의 경우 해당 디렉토리와 모든 하위 디렉토리를 삭제하십시오.

The difference between File.delete() and this method are:

File.delete()와 이 메서드의 차이점은 다음과 같습니다.

- The directory does not have to be empty.
- 디렉토리는 비어 있을 필요가 없습니다.
- You get an exception when a file or directory cannot be deleted.
- 파일이나 디렉터리를 삭제할 수 없는 경우 예외가 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#forceDelete-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1337

## 2023-03-20

새길말씀(시편 33:5)

그는 공의와 정의를 사랑하심이여 세상에는 여호와의 인자하심이 충만하도다

### directoryContains-java.io.File-java.io.File-

```
public static boolean directoryContains(File directory,
                                        File child)
                                 throws IOException
```

Determines whether the parent directory contains the child element (a file or directory).

부모 디렉터리에 자식 요소(파일 또는 디렉터리)가 포함되어 있는지 여부를 결정합니다.

Files are normalized before comparison.

파일은 비교 전에 정규화됩니다.

Edge cases:
- A directory must not be null: if null, throw IllegalArgumentException
- A directory must be a directory: if not a directory, throw IllegalArgumentException
- A directory does not contain itself: return false
- A null child file is not contained in any parent: return false

에지 케이스:
- 디렉토리는 null이 아니어야 합니다: null인 경우 IllegalArgumentException 발생
- 디렉터리는 디렉터리여야 합니다. 디렉터리가 아니면 IllegalArgumentException 발생
- 디렉토리는 자신을 포함하지 않습니다: false 반환
- null 자식 파일이 부모에 포함되어 있지 않음: false 반환

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#directoryContains-java.io.File-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1272

## 2023-03-19

새길말씀(시편 32:1)

허물의 사함을 받고 자신의 죄가 가려진 자는 복이 있도다

### deleteQuietly-java.io.File-

```java
public static boolean deleteQuietly(File file)
```

Deletes a file, never throwing an exception. If file is a directory, delete it and all sub-directories.

예외를 발생시키지 않고 파일을 삭제합니다. 파일이 디렉토리인 경우 파일과 모든 하위 디렉토리를 삭제합니다.

The difference between File.delete() and this method are:
- A directory to be deleted does not have to be empty.
- No exceptions are thrown when a file or directory cannot be deleted.

File.delete()와 이 메서드의 차이점은 다음과 같습니다.
- 삭제할 디렉터리는 비어 있지 않아도 됩니다.
- 파일이나 디렉토리를 삭제할 수 없는 경우 예외가 발생하지 않습니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#deleteQuietly-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1230

## 2023-03-17

새길말씀(시편 30:4)

주의 성도들아 여호와를 찬송하며 그의 거룩함을 기억하며 감사하라

### deleteDirectory-java.io.File-

```java
public static void deleteDirectory(File directory)
                            throws IOException
```

Deletes a directory recursively.

재귀적으로 디렉터리를 삭제합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#deleteDirectory-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1186

## 2023-03-16

새길말씀(시편 13:6)

내가 여호와를 찬송하리니 이는 주께서 내게 은덕을 베푸심이로다

### delete-java.io.File-

```java
public static File delete(File file)
                   throws IOException
```

Deletes the given File but throws an IOException if it cannot, unlike File.delete() which returns a boolean.

주어진 File을 삭제하지만 부울을 반환하는 File.delete()와 달리 삭제할 수 없는 경우 IOException을 발생시킵니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#delete-java.io.File-

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1173

## 2023-03-15

새길말씀(시편 12:6)

여호와의 말씀은 순결함이여 흙 도가니에 일곱 번 단련한 은 같도다

### createParentDirectories-java.io.File-

```java
public static File createParentDirectories(File file)
                                    throws IOException
```

Creates all parent directories for a File object.

File 개체에 대한 모든 상위 디렉터리를 만듭니다.

https://commons.apache.org/proper/commons-io/apidocs/src-html/org/apache/commons/io/FileUtils.html#line.1112

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#createParentDirectories-java.io.File-

## 2023-03-14

새길말씀(시편 11:7)

여호와는 의로우사 의로운 일을 좋아하시나니 정직한 자는 그의 얼굴을 뵈오리로다

### copyURLToFile-java.net.URL-java.io.File-int-int-

```java
public static void copyURLToFile(URL source,
                                 File destination,
                                 int connectionTimeoutMillis,
                                 int readTimeoutMillis)
                          throws IOException
```

Copies bytes from the URL source to a file destination. The directories up to destination will be created if they don't already exist. destination will be overwritten if it already exists.

URL 소스에서 파일 대상으로 바이트를 복사합니다. 아직 존재하지 않는 경우 목적지까지의 디렉토리가 생성됩니다. 이미 존재하는 경우 대상을 덮어씁니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyURLToFile-java.net.URL-java.io.File-int-int-

## 2023-03-13

새길말씀(시편 5:12)

여호와여 주는 의인에게 복을 주시고 방패로 함 같이 은혜로 그를 호위하시리이다

## 2023-03-12

새길말씀(시편 4:3)

여호와께서 자기를 위하여 경건한 자를 택하신 줄 너희가 알지어다 내가 그를 부를 때에 여호와께서 들으시리로다

### copyURLToFile-java.net.URL-java.io.File-

```java
public static void copyURLToFile(URL source,
                                 File destination)
                          throws IOException
```

Copies bytes from the URL source to a file destination. The directories up to destination will be created if they don't already exist. destination will be overwritten if it already exists.

URL 소스에서 파일 대상으로 바이트를 복사합니다. 아직 존재하지 않는 경우 목적지까지의 디렉토리가 생성됩니다. 이미 존재하는 경우 대상을 덮어씁니다.

Warning: this method does not set a connection or read timeout and thus might block forever. Use copyURLToFile(URL, File, int, int) with reasonable timeouts to prevent this.

경고: 이 메서드는 연결 또는 읽기 제한 시간을 설정하지 않으므로 영원히 차단될 수 있습니다. 이를 방지하려면 적절한 시간 제한과 함께 copyURLToFile(URL, File, int, int)을 사용하십시오.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyURLToFile-java.net.URL-java.io.File-

### copyToFile-java.io.InputStream-java.io.File-

```java
public static void copyToFile(InputStream inputStream,
                              File file)
                       throws IOException
```

Copies bytes from an InputStream source to a File destination. The directories up to destination will be created if they don't already exist. destination will be overwritten if it already exists. The source stream is left open, e.g. for use with ZipInputStream. See copyInputStreamToFile(InputStream, File) for a method that closes the input stream.

InputStream 소스에서 파일 대상으로 바이트를 복사합니다. 아직 존재하지 않는 경우 목적지까지의 디렉토리가 생성됩니다. 이미 존재하는 경우 대상을 덮어씁니다. 소스 스트림은 열려 있습니다. ZipInputStream과 함께 사용합니다. 입력 스트림을 닫는 메서드는 copyInputStreamToFile(InputStream, File)을 참조하십시오.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyToFile-java.io.InputStream-java.io.File-

## 2023-03-11

새길말씀(사무엘상 2:1)

한나가 기도하여 이르되 내 마음이 여호와로 말미암아 즐거워하며 내 뿔이 여호와로 말미암아 높아졌으며 내 입이 내 원수들을 향하여 크게 열렸으니 이는 내가 주의 구원으로 말미암아 기뻐함이니이다

### copyToDirectory-java.lang.Iterable-java.io.File-

```java
public static void copyToDirectory(Iterable<File> sourceIterable,
                                   File destinationDir)
                            throws IOException
```

Copies a files to a directory preserving each file's date.

각 파일의 날짜를 보존하는 디렉토리에 파일을 복사합니다.

This method copies the contents of the specified source files to a file of the same name in the specified destination directory. The destination directory is created if it does not exist. If the destination file exists, then this method will overwrite it.

이 메소드는 지정된 소스 파일의 내용을 지정된 대상 디렉토리에 있는 동일한 이름의 파일에 복사합니다. 대상 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 이 메서드는 파일을 덮어씁니다.

Note: This method tries to preserve the file's last modified date/times using File.setLastModified(long), however it is not guaranteed that the operation will succeed. If the modification operation fails, the methods throws IOException.

참고: 이 방법은 File.setLastModified(long)를 사용하여 파일의 마지막 수정 날짜/시간을 보존하려고 시도하지만 작업이 성공할 것이라는 보장은 없습니다. 수정 작업이 실패하면 메서드에서 IOException이 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyToDirectory-java.lang.Iterable-java.io.File-

## 2023-03-10

새길말씀(사무엘상 1:15)

한나가 대답하여 이르되 내 주여 그렇지 아니하니이다 나는 마음이 슬픈 여자라 포도주나 독주를 마신 것이 아니요 여호와 앞에 내 심정을 통한 것뿐이오니

### copyToDirectory-java.io.File-java.io.File-

```java
public static void copyToDirectory(File sourceFile,
                                   File destinationDir)
                            throws IOException
```

Copies a file or directory to within another directory preserving the file dates.

파일 날짜를 보존하는 다른 디렉토리 내에서 파일 또는 디렉토리를 복사합니다.

This method copies the source file or directory, along all its contents, to a directory of the same name in the specified destination directory.

이 방법은 모든 내용과 함께 소스 파일 또는 디렉토리를 지정된 대상 디렉토리에 있는 동일한 이름의 디렉토리에 복사합니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

Note: This method tries to preserve the files' last modified date/times using File.setLastModified(long), however it is not guaranteed that those operations will succeed. If the modification operation fails, the methods throws IOException.

참고: 이 방법은 File.setLastModified(long)를 사용하여 파일의 마지막 수정 날짜/시간을 보존하려고 시도하지만 이러한 작업이 성공할 것이라고 보장할 수는 없습니다. 수정 작업이 실패하면 메서드에서 IOException이 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyToDirectory-java.io.File-java.io.File-

## 2023-03-09

새길말씀(다니엘 9:4)

내 하나님 여호와께 기도하며 자복하여 이르기를 크시고 두려워할 주 하나님, 주를 사랑하고 주의 계명을 지키는 자를 위하여 언약을 지키시고 그에게 인자를 베푸시는 이시여

## copyInputStreamToFile-java.io.InputStream-java.io.File-

```java
public static void copyInputStreamToFile(InputStream source,
                                         File destination)
                                  throws IOException
```

Copies bytes from an InputStream source to a file destination. The directories up to destination will be created if they don't already exist. destination will be overwritten if it already exists.

InputStream 소스에서 파일 대상으로 바이트를 복사합니다. 아직 존재하지 않는 경우 목적지까지의 디렉토리가 생성됩니다. 이미 존재하는 경우 대상을 덮어씁니다.

The source stream is closed.

소스 스트림이 닫힙니다.

See copyToFile(InputStream, File) for a method that does not close the input stream.

입력 스트림을 닫지 않는 메서드는 copyToFile(InputStream, File)을 참조하십시오.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyInputStreamToFile-java.io.InputStream-java.io.File-

## 2023-03-08

새길말씀(느헤미야 9:1)

그 달 스무나흗 날에 이스라엘 자손이 다 모여 금식하며 굵은 베 옷을 입고 티끌을 무릅쓰며

### copyFileToDirectory-java.io.File-java.io.File-boolean-

```java
public static void copyFileToDirectory(File sourceFile,
                                       File destinationDir,
                                       boolean preserveFileDate)
                                throws IOException
```

Copies a file to a directory optionally preserving the file date.

선택적으로 파일 날짜를 보존하는 디렉토리에 파일을 복사합니다.

This method copies the contents of the specified source file to a file of the same name in the specified destination directory. The destination directory is created if it does not exist. If the destination file exists, then this method will overwrite it.

이 메소드는 지정된 소스 파일의 내용을 지정된 대상 디렉토리에 있는 동일한 이름의 파일에 복사합니다. 대상 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 이 메서드는 파일을 덮어씁니다.

Note: Setting preserveFileDate to true tries to preserve the file's last modified date/times using File.setLastModified(long), however it is not guaranteed that the operation will succeed. If the modification operation fails, the methods throws IOException.

참고: preserveFileDate를 true로 설정하면 File.setLastModified(long)를 사용하여 파일의 마지막 수정 날짜/시간을 보존하려고 시도하지만 작업이 성공할 것이라고 보장할 수는 없습니다. 수정 작업이 실패하면 메서드에서 IOException이 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFileToDirectory-java.io.File-java.io.File-boolean-

## 2023-03-07

새길말씀(에스라 8:23)

그러므로 우리가 이를 위하여 금식하며 우리 하나님께 간구하였더니 그의 응낙하심을 입었느니라

### copyFileToDirectory-java.io.File-java.io.File-

```java
public static void copyFileToDirectory(File srcFile,
                                       File destDir)
                                throws IOException
```

Copies a file to a directory preserving the file date.

파일 날짜를 보존하는 디렉토리에 파일을 복사합니다.

This method copies the contents of the specified source file to a file of the same name in the specified destination directory. The destination directory is created if it does not exist. If the destination file exists, then this method will overwrite it.

이 메소드는 지정된 소스 파일의 내용을 지정된 대상 디렉토리에 있는 동일한 이름의 파일에 복사합니다. 대상 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 이 메서드는 파일을 덮어씁니다.

Note: This method tries to preserve the file's last modified date/times using File.setLastModified(long), however it is not guaranteed that the operation will succeed. If the modification operation fails, the methods throws IOException.

참고: 이 방법은 File.setLastModified(long)를 사용하여 파일의 마지막 수정 날짜/시간을 보존하려고 시도하지만 작업이 성공할 것이라는 보장은 없습니다. 수정 작업이 실패하면 메서드에서 IOException이 발생합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFileToDirectory-java.io.File-java.io.File-

## 2023-03-06

새길말씀(역대하 35:16)

이와 같이 당일에 여호와를 섬길 일이 다 준비되매 요시야 왕의 명령대로 유월절을 지키며 번제를 여호와의 제단에 드렸으며

### copyFile-java.io.File-java.io.OutputStream-

```java
public static long copyFile(File input,
                            OutputStream output)
                     throws IOException
```

Copies bytes from a File to an OutputStream.

File에서 OutputStream으로 바이트를 복사합니다.

This method buffers the input internally, so there is no need to use a BufferedInputStream.

이 메서드는 입력을 내부적으로 버퍼링하므로 BufferedInputStream을 사용할 필요가 없습니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFile-java.io.File-java.io.OutputStream-

## 2023-03-05

새길말씀(역대하 34:31)

왕이 자기 처소에 서서 여호와 앞에서 언약을 세우되 마음을 다하고 목숨을 다하여 여호와를 순종하고 그의 계명과 법도와 율례를 지켜 이 책에 기록된 언약의 말씀을 이루리라 하고

### copyFile-java.io.File-java.io.File-java.nio.file.CopyOption...-

```java
public static void copyFile(File srcFile,
                            File destFile,
                            CopyOption... copyOptions)
                     throws IOException
```

Copies a file to a new location.

파일을 새 위치에 복사합니다.

This method copies the contents of the specified source file to the specified destination file. The directory holding the destination file is created if it does not exist. If the destination file exists, you can overwrite it if you use StandardCopyOption.REPLACE_EXISTING.

이 메서드는 지정된 소스 파일의 내용을 지정된 대상 파일에 복사합니다. 대상 파일이 들어 있는 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 StandardCopyOption.REPLACE_EXISTING을 사용하면 덮어쓸 수 있습니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFile-java.io.File-java.io.File-java.nio.file.CopyOption...-

## 2023-03-04

새길말씀(역대하 7:15)

이제 이 곳에서 하는 기도에 내가 눈을 들고 귀를 기울이리니

### copyFile-java.io.File-java.io.File-boolean-java.nio.file.CopyOption...-

```java
public static void copyFile(File srcFile,
                            File destFile,
                            CopyOption... copyOptions)
                     throws IOException
```

Copies a file to a new location.

파일을 새 위치에 복사합니다.

This method copies the contents of the specified source file to the specified destination file. The directory holding the destination file is created if it does not exist. If the destination file exists, you can overwrite it if you use StandardCopyOption.REPLACE_EXISTING.

이 메서드는 지정된 소스 파일의 내용을 지정된 대상 파일에 복사합니다. 대상 파일이 들어 있는 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 StandardCopyOption.REPLACE_EXISTING을 사용하면 덮어쓸 수 있습니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFile-java.io.File-java.io.File-boolean-java.nio.file.CopyOption...-

## 2023-03-03

새길말씀(역대하 6:14)

이르되 이스라엘의 하나님 여호와여 천지에 주와 같은 신이 없나이다 주께서는 온 마음으로 주의 앞에서 행하는 주의 종들에게 언약을 지키시고 은혜를 베푸시나이다

### copyFile-java.io.File-java.io.File-boolean-java.nio.file.CopyOption...-

```java
public static void copyFile(File srcFile,
                            File destFile,
                            boolean preserveFileDate,
                            CopyOption... copyOptions)
                     throws IOException
```

Copies a file to a new location.

파일을 새 위치에 복사합니다.

This method copies the contents of the specified source file to the specified destination file. The directory holding the destination file is created if it does not exist. If the destination file exists, you can overwrite it with StandardCopyOption.REPLACE_EXISTING.

이 메서드는 지정된 소스 파일의 내용을 지정된 대상 파일에 복사합니다. 대상 파일이 들어 있는 디렉토리가 없으면 생성됩니다. 대상 파일이 있으면 StandardCopyOption.REPLACE_EXISTING으로 덮어쓸 수 있습니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFile-java.io.File-java.io.File-boolean-java.nio.file.CopyOption...-

## 2023-03-02

새길말씀(역대하 6:11)

내가 또 그 곳에 여호와께서 이스라엘 자손과 더불어 세우신 언약을 넣은 궤를 두었노라 하니라

### copyFile-java.io.File-java.io.File-boolean-

```java
public static void copyFile(File srcFile,
                            File destFile,
                            boolean preserveFileDate)
                     throws IOException
```

Copies an existing file to a new file location.

기존 파일을 새 파일 위치에 복사합니다.

This method copies the contents of the specified source file to the specified destination file. The directory holding the destination file is created if it does not exist. If the destination file exists, then this method will overwrite it.

이 메서드는 지정된 소스 파일의 내용을 지정된 대상 파일에 복사합니다. 대상 파일이 들어 있는 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 이 메서드는 파일을 덮어씁니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFile-java.io.File-java.io.File-boolean-

## 2023-03-01

새길말씀(역대하 5:13)

나팔 부는 자와 노래하는 자들이 일제히 소리를 내어 여호와를 찬송하며 감사하는데 나팔 불고 제금 치고 모든 악기를 울리며 소리를 높여 여호와를 찬송하여 이르되 선하시도다 그의 자비하심이 영원히 있도다 하매 그 때에 여호와의 전에 구름이 가득한지라

### copyFile-java.io.File-java.io.File-

```java
public static void copyFile(File srcFile,
                            File destFile)
                     throws IOException
```

Copies a file to a new location preserving the file date.

파일 날짜를 유지하면서 파일을 새 위치에 복사합니다.

This method copies the contents of the specified source file to the specified destination file. The directory holding the destination file is created if it does not exist. If the destination file exists, then this method will overwrite it.

이 메서드는 지정된 소스 파일의 내용을 지정된 대상 파일에 복사합니다. 대상 파일이 들어 있는 디렉토리가 없으면 생성됩니다. 대상 파일이 존재하는 경우 이 메서드는 파일을 덮어씁니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyFile-java.io.File-java.io.File-

## 2023-02-28

새길말씀(신명기 6:13)

네 하나님 여호와를 경외하며 그를 섬기며 그의 이름으로 맹세할 것이니라

### copyDirectoryToDirectory

```java
public static void copyDirectoryToDirectory(File sourceDir,
                                            File destinationDir)
                                     throws IOException
```

Copies a directory to within another directory preserving the file dates.

파일 날짜를 보존하는 다른 디렉토리 내에서 디렉토리를 복사합니다.

This method copies the source directory and all its contents to a directory of the same name in the specified destination directory.

이 방법은 소스 디렉토리와 모든 내용을 지정된 대상 디렉토리에 있는 동일한 이름의 디렉토리에 복사합니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyDirectoryToDirectory-java.io.File-java.io.File-

## 2023-02-27

새길말씀(요한복음 15:5)

나는 포도나무요 너희는 가지라 그가 내 안에, 내가 그 안에 거하면 사람이 열매를 많이 맺나니 나를 떠나서는 너희가 아무 것도 할 수 없음이라

### copyDirectory fileFilter preserveFileDate copyOptions

```java
public static void copyDirectory(File srcDir,
                                 File destDir,
                                 FileFilter fileFilter,
                                 boolean preserveFileDate,
                                 CopyOption... copyOptions)
                          throws IOException
```

Copies a filtered directory to a new location.

필터링된 디렉터리를 새 위치에 복사합니다.

This method copies the contents of the specified source directory to within the specified destination directory.

이 메서드는 지정된 소스 디렉터리의 내용을 지정된 대상 디렉터리 내로 복사합니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

Example: Copy directories and txt files

```java
 // Create a filter for ".txt" files
 IOFileFilter txtSuffixFilter = FileFilterUtils.suffixFileFilter(".txt");
 IOFileFilter txtFiles = FileFilterUtils.andFileFilter(FileFileFilter.FILE, txtSuffixFilter);

 // Create a filter for either directories or ".txt" files
 FileFilter filter = FileFilterUtils.orFileFilter(DirectoryFileFilter.DIRECTORY, txtFiles);

 // Copy using the filter
 FileUtils.copyDirectory(srcDir, destDir, filter, false);
```

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyDirectory-java.io.File-java.io.File-java.io.FileFilter-boolean-java.nio.file.CopyOption...-

## 2023-02-25

새길말씀(요한복음 13:34)

새 계명을 너희에게 주노니 서로 사랑하라 내가 너희를 사랑한 것 같이 너희도 서로 사랑하라

### copyDirectory FileFilter preserveFileDate

```java
public static void copyDirectory(File srcDir,
                                 File destDir,
                                 FileFilter filter,
                                 boolean preserveFileDate)
                          throws IOException
```

Copies a filtered directory to a new location.

필터링된 디렉터리를 새 위치에 복사합니다.

This method copies the contents of the specified source directory to within the specified destination directory.

이 메서드는 지정된 소스 디렉터리의 내용을 지정된 대상 디렉터리 내로 복사합니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

Example: Copy directories and txt files

```java
 // Create a filter for ".txt" files
 IOFileFilter txtSuffixFilter = FileFilterUtils.suffixFileFilter(".txt");
 IOFileFilter txtFiles = FileFilterUtils.andFileFilter(FileFileFilter.FILE, txtSuffixFilter);

 // Create a filter for either directories or ".txt" files
 FileFilter filter = FileFilterUtils.orFileFilter(DirectoryFileFilter.DIRECTORY, txtFiles);

 // Copy using the filter
 FileUtils.copyDirectory(srcDir, destDir, filter, false);
```

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyDirectory-java.io.File-java.io.File-java.io.FileFilter-boolean-

## 2023-02-24

새길말씀(요한복음 13:14)

내가 주와 또는 선생이 되어 너희 발을 씻었으니 너희도 서로 발을 씻어 주는 것이 옳으니라

### copyDirectory FileFilter

```java
public static void copyDirectory(File srcDir,
                                 File destDir,
                                 FileFilter filter)
                          throws IOException
```

Copies a filtered directory to a new location preserving the file dates.

파일 날짜를 보존하는 새 위치에 필터링된 디렉터리를 복사합니다.

This method copies the contents of the specified source directory to within the specified destination directory.

이 메서드는 지정된 소스 디렉터리의 내용을 지정된 대상 디렉터리 내로 복사합니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

Example: Copy directories and txt files
```java
 // Create a filter for ".txt" files
 IOFileFilter txtSuffixFilter = FileFilterUtils.suffixFileFilter(".txt");
 IOFileFilter txtFiles = FileFilterUtils.andFileFilter(FileFileFilter.FILE, txtSuffixFilter);

 // Create a filter for either directories or ".txt" files
 FileFilter filter = FileFilterUtils.orFileFilter(DirectoryFileFilter.DIRECTORY, txtFiles);

 // Copy using the filter
 FileUtils.copyDirectory(srcDir, destDir, filter);
```

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyDirectory-java.io.File-java.io.File-java.io.FileFilter-

## 2023-02-23

새길말씀(시편 52:8)

그러나 나는 하나님의 집에 있는 푸른 감람나무 같음이여 하나님의 인자하심을 영원히 의지하리로다

### copyDirectory

복사 디렉터리(디렉토리)

```java
public static void copyDirectory(File srcDir,
                                 File destDir,
                                 boolean preserveFileDate)
                          throws IOException
```

Copies a whole directory to a new location.

전체 디렉토리를 새 위치에 복사합니다.

This method copies the contents of the specified source directory to within the specified destination directory.

이 메서드는 지정된 소스 디렉터리의 내용을 지정된 대상 디렉터리 내로 복사합니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

preserveFileDate 보존 파일 날짜

preserveFileDate - true if the file date of the copy should be the same as the original.

preserveFileDate - 복사본의 파일 날짜가 원본과 동일해야 하는 경우 true입니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyDirectory-java.io.File-java.io.File-boolean-

## 2023-02-22

새길말씀(시편 51:1)

하나님이여 주의 인자를 따라 내게 은혜를 베푸시며 주의 많은 긍휼을 따라 내 죄악을 지워 주소서

### copyDirectory

복사 디렉토리

```java
public static void copyDirectory(File srcDir,
                                 File destDir)
                          throws IOException
```

Copies a whole directory to a new location preserving the file dates.

파일 날짜를 보존하면서 전체 디렉토리를 새 위치에 복사합니다.

This method copies the specified directory and all its child directories and files to the specified destination. The destination is the new location and name of the directory.

이 메소드는 지정된 디렉토리와 모든 하위 디렉토리 및 파일을 지정된 대상에 복사합니다. 대상은 디렉터리의 새 위치와 이름입니다.

The destination directory is created if it does not exist. If the destination directory did exist, then this method merges the source with the destination, with the source taking precedence.

대상 디렉토리가 없으면 생성됩니다. 대상 디렉터리가 존재하는 경우 이 메서드는 소스를 대상과 병합하며 소스가 우선합니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#copyDirectory-java.io.File-java.io.File-

## 2023-02-21

새길말씀(시편 23:1)

여호와는 나의 목자시니 내게 부족함이 없으리로다

### convertFileCollectionToFileArray

파일 컬렉션을 파일 배열로 변환

```java
public static File[] convertFileCollectionToFileArray(Collection<File> files)
```

Converts a Collection containing java.io.File instanced into array representation. This is to account for the difference between File.listFiles() and FileUtils.listFiles().

인스턴스화된 java.io.File을 포함하는 Collection을 배열 표현으로 변환합니다. 이는 File.listFiles()와 FileUtils.listFiles() 간의 차이를 설명하기 위한 것입니다.

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#convertFileCollectionToFileArray-java.util.Collection-

## 2023-02-20

새길말씀(에베소서 4:15)

오직 사랑 안에서 참된 것을 하여 범사에 그에게까지 자랄지라 그는 머리니 곧 그리스도라

### contentEqualsIgnoreEOL

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#contentEqualsIgnoreEOL-java.io.File-java.io.File-java.lang.String-

```java
public static boolean contentEqualsIgnoreEOL(File file1,
                                             File file2,
                                             String charsetName)
                                      throws IOException
```

Compares the contents of two files to determine if they are equal or not.

두 파일의 내용을 비교하여 동일한지 여부를 확인합니다.

This method checks to see if the two files point to the same file, before resorting to line-by-line comparison of the contents.

이 메서드는 내용을 한 줄씩 비교하기 전에 두 파일이 동일한 파일을 가리키는지 확인합니다.

## 2023-02-18

새길말씀(마가복음 12:30)

네 마음을 다하고 목숨을 다하고 뜻을 다하고 힘을 다하여 주 너의 하나님을 사랑하라 하신 것이요

### contentEquals

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#contentEquals-java.io.File-java.io.File-

```java
public static boolean contentEquals(File file1,
                                    File file2)
                             throws IOException
```

Tests whether the contents of two files are equal.

두 파일의 내용이 동일한지 테스트합니다.

## 2023-02-17

새길말씀(마가복음 12:27)

하나님은 죽은 자의 하나님이 아니요 산 자의 하나님이시라 너희가 크게 오해하였도다 하시니라

### cleanDirectory

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#cleanDirectory-java.io.File-

```java
public static void cleanDirectory(File directory)
                           throws IOException
```

Cleans a directory without deleting it.

디렉토리를 삭제하지 않고 정리합니다.

## 2023-02-16

새길말씀(요한복음 10:27)

내 양은 내 음성을 들으며 나는 그들을 알며 그들은 나를 따르느니라

### checksumCRC32

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#checksumCRC32-java.io.File-


```java
public static long checksumCRC32(File file)
                          throws IOException
```

Computes the checksum of a file using the CRC32 checksum routine. The value of the checksum is returned.

CRC32 체크섬 루틴을 사용하여 파일의 체크섬을 계산합니다. 체크섬 값이 반환됩니다.

## 2023-02-15

새길말씀(요한복음 10:11)

나는 선한 목자라 선한 목자는 양들을 위하여 목숨을 버리거니와

### checksum

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#checksum-java.io.File-java.util.zip.Checksum-

```java
public static Checksum checksum(File file,
                                Checksum checksum)
                         throws IOException
```

Computes the checksum of a file using the specified checksum object. Multiple files may be checked using one Checksum instance if desired simply by reusing the same checksum object. For example:

지정된 체크섬 개체를 사용하여 파일의 체크섬을 계산합니다. 원하는 경우 단순히 동일한 체크섬 개체를 재사용하여 하나의 체크섬 인스턴스를 사용하여 여러 파일을 검사할 수 있습니다. 예를 들어:

```java
long checksum = FileUtils.checksum(file, new CRC32()).getValue();
```

## 2023-02-14

새길말씀(고린도전서 13:7)

모든 것을 참으며 모든 것을 믿으며 모든 것을 바라며 모든 것을 견디느니라

### byteCountToDisplaySize

https://commons.apache.org/proper/commons-io/apidocs/org/apache/commons/io/FileUtils.html#byteCountToDisplaySize-long-

```java
248    /**
249     * Returns a human-readable version of the file size, where the input represents a specific number of bytes.
250     * <p>
251     * If the size is over 1GB, the size is returned as the number of whole GB, i.e. the size is rounded down to the
252     * nearest GB boundary.
253     * </p>
254     * <p>
255     * Similarly for the 1MB and 1KB boundaries.
256     * </p>
257     *
258     * @param size the number of bytes
259     * @return a human-readable display value (includes units - EB, PB, TB, GB, MB, KB or bytes)
260     * @see <a href="https://issues.apache.org/jira/browse/IO-226">IO-226 - should the rounding be changed?</a>
261     */
262    // See https://issues.apache.org/jira/browse/IO-226 - should the rounding be changed?
263    public static String byteCountToDisplaySize(final long size) {
264        return byteCountToDisplaySize(BigInteger.valueOf(size));
265    }
```

Returns a human-readable version of the file size, where the input represents a specific number of bytes.

파일 크기의 사람이 읽을 수 있는 버전을 반환합니다. 여기서 입력은 특정 바이트 수를 나타냅니다.

## 2023-02-13

새길말씀(요한1서 5:20)

또 아는 것은 하나님의 아들이 이르러 우리에게 지각을 주사 우리로 참된 자를 알게 하신 것과 또한 우리가 참된 자 곧 그의 아들 예수 그리스도 안에 있는 것이니 그는 참 하나님이시요 영생이시라

### 표시 크기에 대한 바이트 수

FileUtils.byteCountToDisplaySize

```java
import org.apache.commons.io.FileUtils;
import org.junit.Test;

public class 표시_크기에_대한_바이트_수 {

	@Test
	public void test() {
		System.out.println("bytes");
		System.out.println(FileUtils.byteCountToDisplaySize(0));
		System.out.println("");

		System.out.println("KB");
		System.out.println(FileUtils.ONE_KB_BI);
		System.out.println(FileUtils.byteCountToDisplaySize(FileUtils.ONE_KB_BI));
		System.out.println("");

		System.out.println("MB");
		System.out.println(FileUtils.ONE_MB_BI);
		System.out.println(FileUtils.byteCountToDisplaySize(FileUtils.ONE_MB_BI));
		System.out.println("");

		System.out.println("GB");
		System.out.println(FileUtils.ONE_GB_BI);
		System.out.println(FileUtils.byteCountToDisplaySize(FileUtils.ONE_GB_BI));
		System.out.println("");

		System.out.println("TB");
		System.out.println(FileUtils.ONE_TB_BI);
		System.out.println(FileUtils.byteCountToDisplaySize(FileUtils.ONE_TB_BI));
		System.out.println("");

		System.out.println("PB");
		System.out.println(FileUtils.ONE_PB_BI);
		System.out.println(FileUtils.byteCountToDisplaySize(FileUtils.ONE_PB_BI));
		System.out.println("");

		System.out.println("EB");
		System.out.println(FileUtils.ONE_EB_BI);
		System.out.println(FileUtils.byteCountToDisplaySize(FileUtils.ONE_EB_BI));
		System.out.println("");
	}

}
```

```
bytes
0 bytes

KB
1024
1 KB

MB
1048576
1 MB

GB
1073741824
1 GB

TB
1099511627776
1 TB

PB
1125899906842624
1 PB

EB
1152921504606846976
1 EB
```

## 2023-02-12

새길말씀(요한1서 4:19)

우리가 사랑함은 그가 먼저 우리를 사랑하셨음이라

### 파일 목록

```xml
<!-- https://mvnrepository.com/artifact/commons-io/commons-io -->
<dependency>
    <groupId>commons-io</groupId>
    <artifactId>commons-io</artifactId>
    <version>2.7</version>
</dependency>
```

```java
import java.io.File;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.junit.Test;

public class 파일_목록 {

	@Test
	public void test() {
		String pathname = "C:\\Users\\LeeBaekHaeng\\Documents\\egovframe-common-components";

		File directory = new File(pathname);
		String[] extensions = null;
//		String[] extensions = {};
//		String[] extensions = { "html", "js", "jsp" };
		boolean recursive = true;

		Collection<File> listFiles = FileUtils.listFiles(directory, extensions, recursive);

		Set<String> exts = new HashSet<>();

		for (File listFile : listFiles) {
//			System.out.println(listFile.getName());
//			System.out.println(FilenameUtils.getExtension(listFile.getName()));
			exts.add(FilenameUtils.getExtension(listFile.getName()));
		}

		for (String ext : exts) {
			System.out.println(ext);
		}
	}

}
```

- html
- js
- jsp

## 2023-02-11

새길말씀(요한1서 3:24)

그의 계명을 지키는 자는 주 안에 거하고 주는 그의 안에 거하시나니 우리에게 주신 성령으로 말미암아 그가 우리 안에 거하시는 줄을 우리가 아느니라

### 클라이언트 라이브러리를 사용하여 클라우드 서비스에 인증

https://cloud.google.com/docs/authentication/client-libraries?hl=ko#java

```java

import com.google.api.gax.paging.Page;
import com.google.cloud.storage.Bucket;
import com.google.cloud.storage.Storage;
import com.google.cloud.storage.StorageOptions;
import java.io.IOException;

public class AuthenticateImplicitWithAdc {

  public static void main(String[] args) throws IOException {
    // TODO(Developer):
    //  1. Before running this sample,
    //  set up Application Default Credentials as described in
    //  https://cloud.google.com/docs/authentication/external/set-up-adc
    //  2. Replace the project variable below.
    //  3. Make sure you have the necessary permission to list storage buckets
    //  "storage.buckets.list"
    String projectId = "your-google-cloud-project-id";
    authenticateImplicitWithAdc(projectId);
  }

  // When interacting with Google Cloud Client libraries, the library can auto-detect the
  // credentials to use.
  public static void authenticateImplicitWithAdc(String project) throws IOException {

    // *NOTE*: Replace the client created below with the client required for your application.
    // Note that the credentials are not specified when constructing the client.
    // Hence, the client library will look for credentials using ADC.
    //
    // Initialize client that will be used to send requests. This client only needs to be created
    // once, and can be reused for multiple requests.
    Storage storage = StorageOptions.newBuilder().setProjectId(project).build().getService();

    System.out.println("Buckets:");
    Page<Bucket> buckets = storage.list();
    for (Bucket bucket : buckets.iterateAll()) {
      System.out.println(bucket.toString());
    }
    System.out.println("Listed all storage buckets.");
  }
}
```

https://cloud.google.com/docs/authentication/provide-credentials-adc?hl=ko

로컬 개발에 사용자 인증 정보를 사용할 수 없으면 서비스 계정 키를 사용할 수 있습니다. 서비스 계정 키는 불필요한 위험을 초래하므로 가능하면 피해야 합니다.

## 2023-02-10

새길말씀(요한1서 2:29)

너희가 그가 의로우신 줄을 알면 의를 행하는 자마다 그에게서 난 줄을 알리라

### [Google Cloud] 애플리케이션 기본 사용자 인증 정보 작동 방식

https://cloud.google.com/docs/authentication/application-default-credentials?hl=ko

애플리케이션 기본 사용자 인증 정보(ADC)

gcloud CLI로 설정된 사용자 인증 정보

Windows: %APPDATA%\gcloud\application_default_credentials.json

Windows:
```
%APPDATA%\gcloud
```

```
application_default_credentials.json
```

## 2023-02-09

새길말씀(요한1서 1:7)

그가 빛 가운데 계신 것 같이 우리도 빛 가운데 행하면 우리가 서로 사귐이 있고 그 아들 예수의 피가 우리를 모든 죄에서 깨끗하게 하실 것이요

### 서비스 계정 키 만들기
- 설정 | Cloud Translation | Google Cloud
- https://cloud.google.com/translate/docs/setup?hl=ko#creating_service_accounts_and_keys
- 프로젝트에 대한 액세스 권한을 제공하려면 서비스 계정에 Cloud Translation > Cloud Translation API Admin 역할을 부여합니다.

## 2023-02-08

새길말씀(요한복음 6:35)

예수께서 이르시되 나는 생명의 떡이니 내게 오는 자는 결코 주리지 아니할 터이요 나를 믿는 자는 영원히 목마르지 아니하리라

### 구글 번역 API
- https://cloud.google.com/translate/docs/samples/translate-text-with-model?hl=ko#translate_text_with_model-java
- 문자열 번역(기본 버전)

```java
Translation translation =
    translate.translate(
        "Hola Mundo!",
        Translate.TranslateOption.sourceLanguage("es"),
        Translate.TranslateOption.targetLanguage("de"),
        // Use "base" for standard edition, "nmt" for the premium model.
        Translate.TranslateOption.model("nmt"));

System.out.printf("TranslatedText:\nText: %s\n", translation.getTranslatedText());
```

환경에서 서비스 계정 키 파일 사용
- https://cloud.google.com/translate/docs/setup?hl=ko#using_the_service_account_key_file_in_your_environment
- GOOGLE_APPLICATION_CREDENTIALS 환경 변수를 설정하여 애플리케이션 코드에 사용자 인증 정보를 제공합니다. 이 변수는 현재 셸 세션에만 적용됩니다. 이후 셸 세션에 이 변수를 적용하려면 셸 시작 파일(예: ~/.bashrc 또는 ~/.profile 파일)에서 변수를 설정합니다.


## 2023-02-07

새길말씀(요한복음 6:11)

예수께서 떡을 가져 축사하신 후에 앉아 있는 자들에게 나눠 주시고 물고기도 그렇게 그들의 원대로 주시니라

### js reduce
- https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce
- reduce() 메서드는 배열의 각 요소에 대해 주어진 리듀서 (reducer) 함수를 실행하고, 하나의 결과값을 반환합니다.

```js
const array1 = [1, 2, 3, 4];

// 0 + 1 + 2 + 3 + 4
const initialValue = 0;
const sumWithInitial = array1.reduce(
  (accumulator, currentValue) => accumulator + currentValue,
  initialValue
);

console.log(sumWithInitial);
// Expected output: 10
```

## 2023-02-06

새길말씀(요한복음 5:23)

이는 모든 사람으로 아버지를 공경하는 것 같이 아들을 공경하게 하려 하심이라 아들을 공경하지 아니하는 자는 그를 보내신 아버지도 공경하지 아니하느니라

### NexacroN_SetupStudio_x64 다운로드
- http://support.tobesoft.co.kr/Support/?menu=Download_N&page=1
- NexacroN_SetupStudio_x64.exe

## 2023-02-03

새길말씀(요한복음 4:14)

내가 주는 물을 마시는 자는 영원히 목마르지 아니하리니 내가 주는 물은 그 속에서 영생하도록 솟아나는 샘물이 되리라

### G-클라우드 S존 설계 기준
- 국가정보자원관리원
- https://www.nirs.go.kr/ncia_MJS/board/dev/board/board.jsp?id=data_202&cate=&key=subject&search=&order=&desc=asc&menu_num=null&mode=view&pg=1&idx=3222
- G-클라우드_S존_설계_기준.hwp

OS
- CentOS
- RHEL
- Oracle Linux

WEB
- Apache

WAS
- OpenJDK
- JBoss

DB
- Cubrid
- PostgreSQL
- MariaDB
- AltibaseDB

## 2023-02-02

누가복음 16:10 지극히 작은 것에 충성된 자는 큰 것에도 충성되고 지극히 작은 것에 불의한 자는 큰 것에도 불의하니라

### 통합 문서 읽기 및 다시 쓰기

- https://poi.apache.org/
- https://poi.apache.org/components/index.html
- https://poi.apache.org/components/spreadsheet/quick-guide.html
- https://poi.apache.org/components/spreadsheet/quick-guide.html#ReadWriteWorkbook
- Reading and writing
	- 읽기와 쓰기
- Reading and Rewriting Workbooks
	- 통합 문서 읽기 및 다시 쓰기

```java
try (InputStream inp = new FileInputStream("workbook.xls")) {
//InputStream inp = new FileInputStream("workbook.xlsx");
    Workbook wb = WorkbookFactory.create(inp);
    Sheet sheet = wb.getSheetAt(0);
    Row row = sheet.getRow(2);
    Cell cell = row.getCell(3);
    if (cell == null)
        cell = row.createCell(3);
    cell.setCellType(CellType.STRING);
    cell.setCellValue("a test");
    // Write the output to a file
    try (OutputStream fileOut = new FileOutputStream("workbook.xls")) {
        wb.write(fileOut);
    }
}
```

## 2023-02-01

신중한 계획으로 성실하게 일하면 부유해지고 조급하게 굴면 가난해진다.

### VBoxManage list
- https://www.virtualbox.org/manual/UserManual.html#vboxmanage-list

VBoxManage list [--long] [--sorted] [ bridgedifs | cloudnets | cloudprofiles | cloudproviders | cpu-profiles | dhcpservers | dvds | extpacks | floppies | groups | hddbackends | hdds | hostcpuids | hostdrives | hostdvds | hostfloppies | hostinfo | hostonlyifs | hostonlynets | intnets | natnets | ostypes | runningvms | screenshotformats | systemproperties | usbfilters | usbhost | vms | webcams ]

```
VBoxManage list groups
```

```
VBoxManage list runningvms
```

## 2023-01-31

항상 기뻐하라

### 맥 파일 비교 프로그램 : FileMerge

- https://devshin93.tistory.com/128

### 넥사크로 N 엑셀 익스포트/임포트
- nexacro-xeni
- http://docs.tobesoft.com/server_setup_guide_nexacro_n_ko#0257812f11d2010d

Import

```js
this.Button00_onclick = function(obj:Button,  e:nexacro.ClickEventInfo)
{
    this.importObj = new ExcelImportObject("Import00",this); 
    this.importObj.addEventHandler("onsuccess", this.Import_onsuccess, this);
    this.importObj.set_importurl("http://localhost:8080/XExportImport");
    this.importObj.importData("","output=ds","Dataset00=ds");
}

this.Import_onsuccess = function(obj,e) 
{
    this.Grid00.createFormat();
}
```

### 기념일관리 테스트
- https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:com:v4.0:uss:기념일관리

## 2023-01-30

### JEUS(4.2.2 or Earlier), WebtoB 데모라이선스 신청
- https://technet.tmaxsoft.com/ko/front/main/main.do
- 데모라이선스 신청
- Jeus Fix#19 Over Demo license Information
	- license
	- Expiration Date	2 months from the date issued
		- 유효기간 발급일로부터 2개월
- WebtoB Demo license Information
	- license.dat
	- Expiration Date	2 months from the date issued
		- 유효기간 발급일로부터 2개월

### vscode 다운로드
- https://code.visualstudio.com/Download

## 2023-01-28

### Install Docker Engine
- https://docs.docker.com/engine/install/centos/
- https://docs.docker.com/engine/install/ubuntu/

### Install the Compose plugin
- https://docs.docker.com/compose/install/linux/

## 2023-01-27

### Goldilocks

- https://www.sunjesoft.co.kr/
- in memory DBMS | Goldilocks | SUNJESOFT
- 세계에서 가장 빠른 in memory DBMS - Goldilocks. 성능측정 국제기관이 TPC.ORG에서 인증된 가장 빠른 DBMS

## 2023-01-26

### Hyper-V NAT 네트워크 설정

https://learn.microsoft.com/ko-kr/virtualization/hyper-v-on-windows/user-guide/setup-nat-network

### 오라클 프로시저 디버깅 권한 주는 방법

https://wakestand.tistory.com/374

```
GRANT DEBUG CONNECT SESSION TO "계정명";
GRANT DEBUG ANY PROCEDURE TO "계정명";
```

## 2023-01-25

### Get-AppxPackage

https://learn.microsoft.com/en-us/powershell/module/appx/get-appxpackage?view=windowsserver2022-ps

```PowerShell
Get-AppxPackage -AllUsers
```

Windows PowerShell > 관리자 권한으로 실행

```PowerShell
Get-AppxPackage -Name "ubuntu"
```

## 2023-01-24

### WSL을 사용하여 Windows에 Linux 설치

https://learn.microsoft.com/ko-kr/windows/wsl/install

WSL 설치 명령

```PowerShell
wsl --install
```

## 2023-01-22

### 실행 중인 WSL 버전 확인

```
wsl -l -v
```

```
C:\Users\godsoft>wsl -l -v
  NAME            STATE           VERSION
* Ubuntu-20.04    Running         1
```

```
service ssh status
```

```
sudo service ssh start
```

```
sudo service ssh stop
```

## 2023-01-21

### vscode 설치
- https://code.visualstudio.com/
- https://code.visualstudio.com/Download
- VSCodeUserSetup-x64-1.74.3.exe
- C:\Users\godsoft\AppData\Local\Programs\Microsoft VS Code
- Visual Studio Code
```
설치 위치:
      C:\Users\godsoft\AppData\Local\Programs\Microsoft VS Code

시작 메뉴 폴더:
      Visual Studio Code

추가 작업:
      기타:
         Code을(를) 지원되는 파일 형식에 대한 편집기로 등록합니다.
         PATH에 추가(다시 시작한 후 사용 가능)
```

### mobaxterm 설치
- MobaXterm
- https://mobaxterm.mobatek.net/
- https://mobaxterm.mobatek.net/download.html
- Home Edition
- https://mobaxterm.mobatek.net/download-home-edition.html
- MobaXterm_Installer_v22.3.zip
- MobaXterm_Portable_v22.3.zip
- C:\test\MobaXterm_Portable_v22.3

Windows 10 Ubuntu 20.05.5 LTS ssh 접속
```
sudo service ssh status
```

```
sudo service ssh start
```

```
192.168.219.107
```

god / god

```
sudo apt install openjdk-8-jre-headless
```

```
http://localhost:8080/jenkins
```

```
http://192.168.219.107:8080/jenkins
```

SourceTree 3.3.9

SourceTreeSetup-3.4.11.exe

C:\Users\godsoft\AppData\Local\Atlassian 삭제

C:\Users\godsoft\AppData\Roaming\Atlassian 삭제

## 2023-01-20

### windows ubuntu 설치

- Windows 10에 WSL2 으로 Ubuntu 설치
	- https://cpuu.postype.com/post/10265353
- ubuntu
	- Ubuntu 오류가 발생했습니다.
	- Ubuntu 22.04.1 LTS 오류가 발생했습니다.
	- Ubuntu 20.04.5 LTS 오류가 발생했습니다.
	- Ubuntu 18.04.5 LTS 오류가 발생했습니다.

wsl 활성화

cmd 관리자 권한으로 실행
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```

```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

```
C:\WINDOWS\system32>dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

배포 이미지 서비스 및 관리 도구
버전: 10.0.19041.844

이미지 버전: 10.0.19044.2486

기능을 사용하도록 설정하는 중
[==========================100.0%==========================]
작업을 완료했습니다.

C:\WINDOWS\system32>dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

배포 이미지 서비스 및 관리 도구
버전: 10.0.19041.844

이미지 버전: 10.0.19044.2486

기능을 사용하도록 설정하는 중
[==========================100.0%==========================]
작업을 완료했습니다.

C:\WINDOWS\system32>
```

WSL을 사용하여 Windows에 Linux 설치

https://learn.microsoft.com/ko-kr/windows/wsl/install?ranMID=24542&ranEAID=je6NUbpObpQ&ranSiteID=je6NUbpObpQ-x_jVxEPS9jTkP7jwU8K4Cg&epi=je6NUbpObpQ-x_jVxEPS9jTkP7jwU8K4Cg&irgwc=1&OCID=AID2200057_aff_7593_1243925&tduid=(ir__xpmp6jocmokfbkojyoie3x9eqn2xcra1fx9ei0hy00)(7593)(1243925)(je6NUbpObpQ-x_jVxEPS9jTkP7jwU8K4Cg)()&irclickid=_xpmp6jocmokfbkojyoie3x9eqn2xcra1fx9ei0hy00

```Windows PowerShell
wsl --install
```

```
wsl --list --online
```

```
PS C:\Users\it1385> wsl --list --online
다음은 설치할 수 있는 유효한 배포 목록입니다.
기본 배포는 ‘*’로 표시됩니다.
'wsl --install -d <Distro>'을(를) 사용하여 설치하세요.

  NAME               FRIENDLY NAME
* Ubuntu             Ubuntu
  Debian             Debian GNU/Linux
  kali-linux         Kali Linux Rolling
  SLES-12            SUSE Linux Enterprise Server v12
  SLES-15            SUSE Linux Enterprise Server v15
  Ubuntu-18.04       Ubuntu 18.04 LTS
  Ubuntu-20.04       Ubuntu 20.04 LTS
  OracleLinux_8_5    Oracle Linux 8.5
  OracleLinux_7_9    Oracle Linux 7.9
PS C:\Users\it1385>
```

```
wsl.exe --install -d Ubuntu
```

## 2023-01-19

### JBoss EAP 7.4.0
- Red Hat JBoss Enterprise Application Platform
- https://www.redhat.com/ko/technologies/jboss-middleware/application-platform
- https://developers.redhat.com/products/eap/download?extIdCarryOver=true&sc_cid=701f2000001OH7EAAW
- 7.4.0
- https://developers.redhat.com/content-gateway/file/jboss-eap-7.4.0.zip

```
C:\jboss-eap-7.4\bin
```

JAVA_HOME 추가
```
common.bat
```

```
set JAVA_HOME=C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\jdk8u242-b08

@echo off
```

콘솔 사용자 추가
```
add-user.bat
```

admin / admin

시작
```
domain.bat
```

주소
```
http://localhost:8080/
```

콘솔 주소
```
http://localhost:9990
```

### 앱 배포

- Deployments
- Content Repository
- Add Unmanaged Deployment

Name
```
test.war
```

Runtime Name
```
test.war
```

Path
```
C:\test\test.war
```

- Deploy
- main-server-group 선택
- http://localhost:8080/test/index.jsp
- 로그
	- C:\test\jboss-eap-7.4\domain\servers\server-one\log
		- server.log
		- server.log.2023-01-18

### 와일드플라이

- https://www.wildfly.org/
- https://www.wildfly.org/downloads/
- 26.1.2.Final
	- https://github.com/wildfly/wildfly/releases/download/26.1.2.Final/wildfly-26.1.2.Final.zip
- https://docs.wildfly.org/26.1/
- https://docs.wildfly.org/26.1/Getting_Started_Guide.html#starting-wildfly-10
- C:\wildfly-26.1.2.Final

### 아파치 HTTP 서버
- https://httpd.apache.org/
- https://dlcdn.apache.org/httpd/binaries/win32/
- ApacheHaus
	- https://www.apachehaus.com/cgi-bin/download.plx
	- https://www.apachehaus.com/cgi-bin/download.plx?dli=AZU50RUNVT41EVNdnZtB3SiRUMUNlVSZETVFzbRtWW
	- httpd-2.4.55-o111s-x64-vs17.zip
- Apache Lounge
	- https://www.apachelounge.com/download/
	- https://www.apachelounge.com/download/VS17/binaries/httpd-2.4.55-win64-VS17.zip

```
C:\Apache24\conf
```

```
httpd.conf
```

```
Define SRVROOT "/Apache24"
ServerRoot "${SRVROOT}"
```

### 리버스 프록시

httpd-test.conf Include
```
C:\Apache24\conf
```

```
httpd.conf
```

```
Include conf/test/httpd-test.conf
```

httpd-test.conf
```
C:\test\Apache24\conf\test
```

```
httpd-test.conf
```

```
<Directory "${SRVROOT}/docs/test.example.com">
    #
    # Possible values for the Options directive are "None", "All",
    # or any combination of:
    #   Indexes Includes FollowSymLinks SymLinksifOwnerMatch ExecCGI MultiViews
    #
    # Note that "MultiViews" must be named *explicitly* --- "Options All"
    # doesn't give it to you.
    #
    # The Options directive is both complicated and important.  Please see
    # http://httpd.apache.org/docs/2.4/mod/core.html#options
    # for more information.
    #
    Options Indexes FollowSymLinks

    #
    # AllowOverride controls what directives may be placed in .htaccess files.
    # It can be "All", "None", or any combination of the keywords:
    #   Options FileInfo AuthConfig Limit
    #
    AllowOverride None

    #
    # Controls who can get stuff from this server.
    #
    Require all granted
</Directory>

<VirtualHost *:80>
    ServerAdmin webmaster@test.example.com
    DocumentRoot "${SRVROOT}/docs/test.example.com"
    ServerName test.example.com
    ServerAlias www.test.example.com
    ErrorLog "logs/test.example.com-error.log"
    CustomLog "logs/test.example.com-access.log" common

    ProxyPass /test/ http://127.0.0.1:8080/
    ProxyPassReverse /test/ http://127.0.0.1:8080/

    ProxyPass /test2 http://127.0.0.1:8230/
    ProxyPassReverse /test2 http://127.0.0.1:8230/

</VirtualHost>
```

### k8s v1.15버전 설치 (실습 강의 버전)

https://kubetm.github.io/k8s/02-beginner/cluster-install-case2/

## 2023-01-18

### 모든 글꼴 가져오기

모든_글꼴_가져오기
```java
package god.test;

import java.awt.Font;
import java.awt.GraphicsEnvironment;

import org.junit.Test;

public class 모든_글꼴_가져오기 {

	@Test
	public void test() {
		GraphicsEnvironment graphicsEnvironment = GraphicsEnvironment.getLocalGraphicsEnvironment();
		Font[] allFonts = graphicsEnvironment.getAllFonts();
		int i = 1;
		for (Font font : allFonts) {
			System.out.println("i=" + i);
			System.out.println("family=" + font.getFamily());
			System.out.println("fontName=" + font.getFontName());
			System.out.println("");
			i++;
		}
	}

}
```

font.jsp
```jsp
<%@page import="java.awt.Font"%>
<%@page import="java.awt.GraphicsEnvironment"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 글꼴 가져오기</title>
</head>
<body>

	<h1>모든 글꼴 가져오기</h1>

	<ol>
		<%
		GraphicsEnvironment graphicsEnvironment = GraphicsEnvironment.getLocalGraphicsEnvironment();
		Font[] allFonts = graphicsEnvironment.getAllFonts();
		for (Font font : allFonts) {
			System.out.println("");
			out.println("<li>");
			out.println("family=" + font.getFamily());
			out.println(", fontName=" + font.getFontName());
			out.println("</li>");
		}
		%>
	</ol>

</body>
</html>
```

### OBS Studio

영상 녹화와 실시간 방송을 할 수 있는 무료 및 공개 소프트웨어입니다.

오픈 브로드캐스터 소프트웨어

https://ko.wikipedia.org/wiki/%EC%98%A4%ED%94%88_%EB%B8%8C%EB%A1%9C%EB%93%9C%EC%BA%90%EC%8A%A4%ED%84%B0_%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4

OBS-Studio-29.0-Full-Installer-x64.exe

윈도우 캡쳐

### nvm-windows

https://github.com/coreybutler/nvm-windows

https://github.com/coreybutler/nvm-windows/releases/tag/1.1.10

nvm-setup.exe

C:\Users\god\AppData\Roaming\nvm

C:\Program Files\nodejs

```
nvm list
```

```
nvm install 14.8.0
```

```
nvm use 14.8.0
```

### 픽픽 (PicPick)

https://picpick.app/ko/

캡처

## 2023-01-17

국세청_사업자등록정보_진위확인_및_상태조회_서비스


```java
package god.test;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.MapUtils;
import org.apache.commons.io.IOUtils;
import org.junit.Test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

public class 국세청_사업자등록정보_진위확인_및_상태조회_서비스 {

	@Test
	public void test() {
		System.out.println("국세청_사업자등록정보 진위확인 및 상태조회 서비스");

		Map<String, Object> result = null;

		Map<String, Object> data = new HashMap<>();
		List<String> bNos = new ArrayList<>();
		bNos.add("0000000000");
		data.put("b_no", bNos);
		final ObjectMapper mapper = new ObjectMapper();
		String param = null;
		try {
			param = mapper.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			System.err.println("JsonProcessingException");
		}
		System.out.println("param=" + param);

//		String spec = "http://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";
		String spec = "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";

		URL url = null;
		try {
			url = new URL(spec);
		} catch (MalformedURLException e) {
			System.err.println("MalformedURLException");
		}

		HttpURLConnection urlConnection = null;
		try {
			urlConnection = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			System.err.println("IOException");
		}

		try {
			try {
				urlConnection.setRequestMethod("POST");
			} catch (ProtocolException e) {
				System.err.println("ProtocolException");
			}

			urlConnection.setDoOutput(true);

			urlConnection.setRequestProperty("accept", "application/json");
			urlConnection.setRequestProperty("Content-Type", "application/json");

			try (OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream());) {
				out.write(param.getBytes(StandardCharsets.UTF_8));
			} catch (IOException e) {
				System.err.println("IOException");
			}

			try (InputStream in = new BufferedInputStream(urlConnection.getInputStream());) {
				String src = IOUtils.toString(in, StandardCharsets.UTF_8);
				System.out.println("src=" + src);
				result = mapper.readValue(src, new TypeReference<Map<String, Object>>() {
				});
			} catch (IOException e) {
				System.err.println("IOException");
			}
		} finally {
			urlConnection.disconnect();
		}

		System.out.println("result=" + result);
		System.out.println("request_cnt=" + MapUtils.getInteger(result, "request_cnt"));
		System.out.println("status_code=" + MapUtils.getString(result, "status_code"));
		a1(result);

	}

	void a1(Map<String, Object> result) {
		@SuppressWarnings("unchecked")
		List<Map<String, Object>> datas = (List<Map<String, Object>>) result.get("data");
//		List<Map<String, Object>> datas = (List<Map<String, Object>>) MapUtils.getObject(result, "data");

		for (Map<String, Object> data : datas) {
			System.out.println("data=" + data);
			System.out.println("b_no=" + MapUtils.getString(data, "b_no"));
			System.out.println("b_stt=" + MapUtils.getString(data, "b_stt"));
			System.out.println("b_stt_cd=" + MapUtils.getString(data, "b_stt_cd"));
			System.out.println("tax_type=" + MapUtils.getString(data, "tax_type"));
			System.out.println("tax_type_cd=" + MapUtils.getString(data, "tax_type_cd"));
			System.out.println("end_dt=" + MapUtils.getString(data, "end_dt"));
			System.out.println("tax_type_change_dt=" + MapUtils.getString(data, "tax_type_change_dt"));
			System.out.println("invoice_apply_dt=" + MapUtils.getString(data, "invoice_apply_dt"));
		}
	}

}
```

국세청_사업자등록정보_진위확인_및_상태조회_서비스2

```java
package god.test;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.junit.Test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class 국세청_사업자등록정보_진위확인_및_상태조회_서비스2 {

	@Test
	public void test() {
		System.out.println("국세청_사업자등록정보 진위확인 및 상태조회 서비스");

		NtsBusinessmanV1Status result = null;

		Map<String, Object> data = new HashMap<>();
		List<String> bNos = new ArrayList<>();
		bNos.add("0000000000");
		data.put("b_no", bNos);
		final ObjectMapper mapper = new ObjectMapper();
		String param = null;
		try {
			param = mapper.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			System.err.println("JsonProcessingException");
		}
		System.out.println("param=" + param);

//		String spec = "http://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";
		String spec = "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";

		URL url = null;
		try {
			url = new URL(spec);
		} catch (MalformedURLException e) {
			System.err.println("MalformedURLException");
		}

		HttpURLConnection urlConnection = null;
		try {
			urlConnection = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			System.err.println("IOException");
		}

		try {
			try {
				urlConnection.setRequestMethod("POST");
			} catch (ProtocolException e) {
				System.err.println("ProtocolException");
			}

			urlConnection.setDoOutput(true);

			urlConnection.setRequestProperty("accept", "application/json");
			urlConnection.setRequestProperty("Content-Type", "application/json");

			try (OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream());) {
				out.write(param.getBytes(StandardCharsets.UTF_8));
			} catch (IOException e) {
				System.err.println("IOException");
			}

			try (InputStream in = new BufferedInputStream(urlConnection.getInputStream());) {
				String src = IOUtils.toString(in, StandardCharsets.UTF_8);
				System.out.println("src=" + src);
				result = mapper.readValue(src, NtsBusinessmanV1Status.class);
			} catch (IOException e) {
				e.printStackTrace();
				System.err.println("IOException");
			}
		} finally {
			urlConnection.disconnect();
		}

		System.out.println("result=" + result);
		System.out.println("request_cnt=" + result.getRequest_cnt());
		System.out.println("status_code=" + result.getStatus_code());
		a1(result);

	}

	void a1(NtsBusinessmanV1Status result) {
		for (NtsBusinessmanV1StatusData data : result.getData()) {
			System.out.println("data=" + data);
			System.out.println("b_no=" + data.getB_no());
			System.out.println("b_stt=" + data.getB_stt());
			System.out.println("b_stt_cd=" + data.getB_stt_cd());
			System.out.println("tax_type=" + data.getTax_type());
			System.out.println("tax_type_cd=" + data.getTax_type_cd());
			System.out.println("end_dt=" + data.getEnd_dt());
			System.out.println("tax_type_change_dt=" + data.getTax_type_change_dt());
			System.out.println("invoice_apply_dt=" + data.getInvoice_apply_dt());
		}
	}

}
```


```java
package god.test;

import java.util.List;

public class NtsBusinessmanV1Status {

	private int request_cnt;

	private String status_code;

	private List<NtsBusinessmanV1StatusData> data;

	public int getRequest_cnt() {
		return request_cnt;
	}

	public void setRequest_cnt(int request_cnt) {
		this.request_cnt = request_cnt;
	}

	public String getStatus_code() {
		return status_code;
	}

	public void setStatus_code(String status_code) {
		this.status_code = status_code;
	}

	public List<NtsBusinessmanV1StatusData> getData() {
		return data;
	}

	public void setData(List<NtsBusinessmanV1StatusData> data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "NtsBusinessmanV1Status [request_cnt=" + request_cnt + ", status_code=" + status_code + ", data=" + data
				+ "]";
	}

}
```

```java
package god.test;

public class NtsBusinessmanV1StatusData {

	private String b_no;
	private String b_stt;
	private String b_stt_cd;
	private String tax_type;
	private String tax_type_cd;
	private String end_dt;
	private String utcc_yn;
	private String tax_type_change_dt;
	private String invoice_apply_dt;

	public String getB_no() {
		return b_no;
	}

	public void setB_no(String b_no) {
		this.b_no = b_no;
	}

	public String getB_stt() {
		return b_stt;
	}

	public void setB_stt(String b_stt) {
		this.b_stt = b_stt;
	}

	public String getB_stt_cd() {
		return b_stt_cd;
	}

	public void setB_stt_cd(String b_stt_cd) {
		this.b_stt_cd = b_stt_cd;
	}

	public String getTax_type() {
		return tax_type;
	}

	public void setTax_type(String tax_type) {
		this.tax_type = tax_type;
	}

	public String getTax_type_cd() {
		return tax_type_cd;
	}

	public void setTax_type_cd(String tax_type_cd) {
		this.tax_type_cd = tax_type_cd;
	}

	public String getEnd_dt() {
		return end_dt;
	}

	public void setEnd_dt(String end_dt) {
		this.end_dt = end_dt;
	}

	public String getUtcc_yn() {
		return utcc_yn;
	}

	public void setUtcc_yn(String utcc_yn) {
		this.utcc_yn = utcc_yn;
	}

	public String getTax_type_change_dt() {
		return tax_type_change_dt;
	}

	public void setTax_type_change_dt(String tax_type_change_dt) {
		this.tax_type_change_dt = tax_type_change_dt;
	}

	public String getInvoice_apply_dt() {
		return invoice_apply_dt;
	}

	public void setInvoice_apply_dt(String invoice_apply_dt) {
		this.invoice_apply_dt = invoice_apply_dt;
	}

	@Override
	public String toString() {
		return "NtsBusinessmanV1StatusData [b_no=" + b_no + ", b_stt=" + b_stt + ", b_stt_cd=" + b_stt_cd
				+ ", tax_type=" + tax_type + ", tax_type_cd=" + tax_type_cd + ", end_dt=" + end_dt + ", utcc_yn="
				+ utcc_yn + ", tax_type_change_dt=" + tax_type_change_dt + ", invoice_apply_dt=" + invoice_apply_dt
				+ "]";
	}

}
```

국세청_사업자등록정보_진위확인_및_상태조회_서비스3

```java
package god.test2;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.IOUtils;
import org.junit.Test;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class 국세청_사업자등록정보_진위확인_및_상태조회_서비스3 {

	@Test
	public void test() {
		System.out.println("국세청_사업자등록정보 진위확인 및 상태조회 서비스");

		NtsBusinessmanV1Status result = null;

		Map<String, Object> data = new HashMap<>();
		List<String> bNos = new ArrayList<>();
		bNos.add("0000000000");
		data.put("b_no", bNos);
		final ObjectMapper mapper = new ObjectMapper();
		String param = null;
		try {
			param = mapper.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			System.err.println("JsonProcessingException");
		}
		System.out.println("param=" + param);

//		String spec = "http://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";
		String spec = "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";

		URL url = null;
		try {
			url = new URL(spec);
		} catch (MalformedURLException e) {
			System.err.println("MalformedURLException");
		}

		HttpURLConnection urlConnection = null;
		try {
			urlConnection = (HttpURLConnection) url.openConnection();
		} catch (IOException e) {
			System.err.println("IOException");
		}

		try {
			try {
				urlConnection.setRequestMethod("POST");
			} catch (ProtocolException e) {
				System.err.println("ProtocolException");
			}

			urlConnection.setDoOutput(true);

			urlConnection.setRequestProperty("accept", "application/json");
			urlConnection.setRequestProperty("Content-Type", "application/json");

			try (OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream());) {
				out.write(param.getBytes(StandardCharsets.UTF_8));
			} catch (IOException e) {
				System.err.println("IOException");
			}

			try (InputStream in = new BufferedInputStream(urlConnection.getInputStream());) {
				String src = IOUtils.toString(in, StandardCharsets.UTF_8);
				System.out.println("src=" + src);
				result = mapper.readValue(src, NtsBusinessmanV1Status.class);
			} catch (IOException e) {
				e.printStackTrace();
				System.err.println("IOException");
			}
		} finally {
			urlConnection.disconnect();
		}

		System.out.println("result=" + result);
		System.out.println("request_cnt=" + result.getRequestCnt());
		System.out.println("status_code=" + result.getStatusCode());
		a1(result);

	}

	void a1(NtsBusinessmanV1Status result) {
		for (NtsBusinessmanV1StatusData data : result.getData()) {
			System.out.println("data=" + data);
			System.out.println("b_no=" + data.getbNo());
			System.out.println("b_stt=" + data.getbStt());
			System.out.println("b_stt_cd=" + data.getbSttCd());
			System.out.println("tax_type=" + data.getTaxType());
			System.out.println("tax_type_cd=" + data.getTaxTypeCd());
			System.out.println("end_dt=" + data.getEndDt());
			System.out.println("tax_type_change_dt=" + data.getTaxTypeChangeDt());
			System.out.println("invoice_apply_dt=" + data.getInvoiceApplyDt());
		}
	}

}
```

```java
package god.test2;

import java.util.List;

public class NtsBusinessmanV1Status {

	private int requestCnt;
	private String statusCode;
	private List<NtsBusinessmanV1StatusData> data;

	public int getRequestCnt() {
		return requestCnt;
	}

	public void setRequestCnt(int requestCnt) {
		this.requestCnt = requestCnt;
	}

	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}

	public List<NtsBusinessmanV1StatusData> getData() {
		return data;
	}

	public void setData(List<NtsBusinessmanV1StatusData> data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "NtsBusinessmanV1Status [requestCnt=" + requestCnt + ", statusCode=" + statusCode + ", data=" + data
				+ "]";
	}

}
```

```java
package god.test2;

public class NtsBusinessmanV1StatusData {

	private String bNo;
	private String bStt;
	private String bSttCd;
	private String taxType;
	private String taxTypeCd;
	private String endDt;
	private String utccYn;
	private String taxTypeChangeDt;
	private String invoiceApplyDt;

	public String getbNo() {
		return bNo;
	}

	public void setbNo(String bNo) {
		this.bNo = bNo;
	}

	public String getbStt() {
		return bStt;
	}

	public void setbStt(String bStt) {
		this.bStt = bStt;
	}

	public String getbSttCd() {
		return bSttCd;
	}

	public void setbSttCd(String bSttCd) {
		this.bSttCd = bSttCd;
	}

	public String getTaxType() {
		return taxType;
	}

	public void setTaxType(String taxType) {
		this.taxType = taxType;
	}

	public String getTaxTypeCd() {
		return taxTypeCd;
	}

	public void setTaxTypeCd(String taxTypeCd) {
		this.taxTypeCd = taxTypeCd;
	}

	public String getEndDt() {
		return endDt;
	}

	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}

	public String getUtccYn() {
		return utccYn;
	}

	public void setUtccYn(String utccYn) {
		this.utccYn = utccYn;
	}

	public String getTaxTypeChangeDt() {
		return taxTypeChangeDt;
	}

	public void setTaxTypeChangeDt(String taxTypeChangeDt) {
		this.taxTypeChangeDt = taxTypeChangeDt;
	}

	public String getInvoiceApplyDt() {
		return invoiceApplyDt;
	}

	public void setInvoiceApplyDt(String invoiceApplyDt) {
		this.invoiceApplyDt = invoiceApplyDt;
	}

	@Override
	public String toString() {
		return "NtsBusinessmanV1StatusData [bNo=" + bNo + ", bStt=" + bStt + ", bSttCd=" + bSttCd + ", taxType="
				+ taxType + ", taxTypeCd=" + taxTypeCd + ", endDt=" + endDt + ", utccYn=" + utccYn
				+ ", taxTypeChangeDt=" + taxTypeChangeDt + ", invoiceApplyDt=" + invoiceApplyDt + "]";
	}

}
```

## 2023-01-16

### curl 사용할 SSL/TLS 버전(version) 강제로 지정하기

https://www.lesstif.com/software-architect/curl-ssl-tls-version-113346985.html

```
curl --tlsv1.2 -I -v -L https://api.odcloud.kr
```

국세청_사업자등록정보 진위확인 및 상태조회 서비스

```cmd
curl -X POST "http://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{  \"b_no\": [    \"0000000000\"  ]}"  --tlsv1.2
```

국세청_사업자등록정보_진위확인_및_상태조회_서비스

```java
package test.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import org.junit.Test;

public class 국세청_사업자등록정보_진위확인_및_상태조회_서비스 {

	@Test
	public void test() throws Exception {
		System.out.println("국세청_사업자등록정보 진위확인 및 상태조회 서비스");

		String spec = "http://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D";

		URL url = new URL(spec);

		HttpURLConnection con = (HttpURLConnection) url.openConnection();

		con.setRequestMethod("POST");

		con.setRequestProperty("accept", "application/json");
		con.setRequestProperty("Content-Type", "application/json");

		con.setDoOutput(true);

		String jsonInputString = "{  \"b_no\": [    \"0000000000\"  ]}}";

		try (OutputStream os = con.getOutputStream()) {
			byte[] input = jsonInputString.getBytes("utf-8");
			os.write(input, 0, input.length);
		}

		try (BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"))) {
			StringBuilder response = new StringBuilder();
			String responseLine = null;
			while ((responseLine = br.readLine()) != null) {
				response.append(responseLine.trim());
			}
			System.out.println(response.toString());
		}
	}

}
```

## 2023-01-14

### SSLContext Algorithms

https://developer.android.com/reference/javax/net/ssl/SSLContext#getInstance(java.lang.String)

https://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#SSLContext

```
SSL
SSLv2
SSLv3
TLS
TLSv1
TLSv1.1
TLSv1.2
```

```java
SSLContext.getInstance("SSL");
SSLContext.getInstance("TLS");
```

## 2023-01-13

### 실시간 SQL 모니터

sqldeveloper

https://jack-of-all-trades.tistory.com/228

## 2023-01-12
### 넥사크로 N this.Dataset00.rowcount
- 넥사크로 N 컴포넌트 활용 워크북 21.0.0.700
- http://docs.tobesoft.com/developer_guide_nexacro_n_ko
```js
var iRowCount = this.Dataset00.getRowCount();
var iColCount = this.Dataset00.getColCount();

for (var i = 0; i < iRowCount; i++)
{
    for (var j = 0; j < iColCount; j++)
    {   
        trace(this.Dataset00.getColumn(i, j));
    }
}
```

### 국세청_사업자등록정보 진위확인 및 상태조회 서비스

https://www.data.go.kr/data/15081808/openapi.do

국세청_사업자등록정보_진위확인_및_상태조회_서비스

```cmd
curl -X POST "https://api.odcloud.kr/api/nts-businessman/v1/status?serviceKey=UMEa5VvLLLGHOOzP2cVmtSF15EtCq4Ke7KBJR8OS63PB2EJgAZGnVZdy7saCYsrOvXzJKw4raynLW7AT0Ezsyg%3D%3D" -H  "accept: application/json" -H  "Content-Type: application/json" -d "{  \"b_no\": [    \"0000000000\"  ]}"
```

## 2023-01-11

### eGovFrame MSA Boot Template Project

```
C:\EGOVFRAME\eGovFrameDev-4.0.0-64bit\eclipse\plugins\egovframework.boot.dev.imp.ide_4.0.0.202203281534
```
- plugin.xml

```xml
<wizard
    category="egovframework.dev.imp.core.wizards"
    class="egovframework.boot.dev.imp.ide.wizards.EgovNewMsaTemplateProjectWizard"
    finalPerspective="egovframework.dev.imp.core.perspectives.egovperspective"
    hasPages="true"
    icon="icons/newtemp_w.png"
    id="egovframework.boot.dev.imp.ide.wizards.egovmsatemplateprojectwizard"
    name="eGovFrame MSA Boot Template Project"
    project="true">
</wizard>
```

https://github.com/eGovFramework/egovframe-development/blob/main/egovframework.boot.dev.imp.ide/plugin.xml

https://github.com/eGovFramework/egovframe-development/blob/main/egovframework.boot.dev.imp.ide/src/egovframework/boot/dev/imp/ide/wizards/examples/examples.properties

```properties
example.template.msa1=msa-discovery.zip
example.template.msa2=msa-config.zip
example.template.msa3=msa-apigateway.zip
example.template.msa4=msa-board-service.zip
example.template.msa5=msa-portal-service.zip
example.template.msa6=msa-user-service.zip
example.template.msa7=msa-reserve-check-service.zip
example.template.msa8=msa-reserve-item-service.zip
example.template.msa9=msa-reserve-request-service.zip
```

```
msa1-discovery
msa2-config
msa3-apigateway
msa4-board-service
msa5-portal-service
msa6-user-service
msa7-reserve-check-service
msa8-reserve-item-service
msa9-reserve-request-service
```

https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/board-service/src/main/resources/application.yml

ddl-auto: update

```yml
spring:
  application:
    name: board-service
  jpa:
    hibernate:
#      ddl-auto: none
      ddl-auto: update
```

## 2023-01-10

### msa-config

/a2-msa-config/config/board-service.yml

```yml
database:
  url: jdbc:mysql://${mysql.hostname:localhost}:3306/msaportal

spring:
  datasource:
    url: ${database.url}?serverTimezone=Asia/Seoul
    username: msaportal
    password: msaportal
    driver-class-name: com.mysql.cj.jdbc.Driver
  cloud:
    stream:
      bindings:
        attachmentEntity-out-0: # 첨부파일 entity 정보 업데이트 하기 위한 이벤트
          destination: attachment-entity.topic # queue name
          group: attachment
```

```
msa4-board-service
msa5-portal-service
msa6-user-service
msa7-reserve-check-service
msa8-reserve-item-service
msa9-reserve-request-service
```

- gradle build
- Refresh Gradle Project
- ddl-auto: none > ddl-auto: update
    - https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/board-service/src/main/resources/application.yml
        - /msa4-board-service/src/main/resources/application.yml
    - https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/portal-service/src/main/resources/application.yml
        - /msa5-portal-service/src/main/resources/application.yml
    - https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/portal-service/src/main/resources/application.yml
        - /msa6-user-service/src/main/resources/application.yml
- https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/reserve-check-service/src/main/resources/schema.sql
- https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/reserve-item-service/src/main/resources/schema.sql
- https://github.com/eGovFramework/egovframe-msa-edu/blob/main/backend/reserve-request-service/src/main/resources/schema.sql

https://github.com/eGovFramework/egovframe-msa-edu/blob/main/docker-compose/mysql/reservation.sql

https://github.com/eGovFramework/egovframe-msa-edu/blob/main/docker-compose/mysql/init/init.sql

## 2023-01-09

### MSA Template Project

개발자의 편의성을 위하여 eGovFrame기반의 msa 템플릿 생성 마법사를 제공한다.

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev4.0:imp:editor:create_msa_template_project_wizard

- C:\EGOVFRAME\eGovFrameDev-4.0.0-64bit\eclipse\plugins\egovframework.boot.dev.imp.ide_4.0.0.202203281534\examples
    - msa-discovery.zip
    - msa-config.zip
    - msa-apigateway.zip
    - msa-board-service.zip
    - msa-portal-service.zip
    - msa-user-service.zip
    - msa-reserve-check-service.zip
    - msa-reserve-item-service.zip
    - msa-reserve-request-service.zip

https://youtu.be/c7SG01Tm4XY

## 2023-01-07

### Creating a Vue Application

Vue 애플리케이션 만들기

https://vuejs.org/guide/essentials/application.html

https://youtu.be/_ZSS37Cf_J0

## 2023-01-06

### Splitting Up the Modules

모듈 분할

https://vuejs.org/guide/quick-start.html#splitting-up-the-modules

```html
<script type="importmap">
  {
    "imports": {
      "vue": "https://unpkg.com/vue@3/dist/vue.esm-browser.js"
    }
  }
</script>

<div id="app">{{ message }}</div>

<!-- index.html -->
<script type="module">
  import { createApp } from 'vue'
  import MyComponent from './my-component.js'

  createApp(MyComponent).mount('#app')
</script>
```

https://youtu.be/JlQk79Y26dQ

## 2023-01-05

### Enabling Import maps

지도 가져오기 활성화

https://vuejs.org/guide/quick-start.html#enabling-import-maps

```html
<script type="importmap">
  {
    "imports": {
      "vue": "https://unpkg.com/vue@3/dist/vue.esm-browser.js"
    }
  }
</script>

<div id="app">{{ message }}</div>

<script type="module">
  import { createApp } from 'vue'

  createApp({
    data() {
      return {
        message: 'Hello Vue!'
      }
    }
  }).mount('#app')
</script>
```

https://youtu.be/WwiDPKSXwBQ

## 2023-01-04

### ES 모듈 빌드 사용

Using the ES Module Build

https://vuejs.org/guide/quick-start.html#using-the-es-module-build

```html
<div id="app">{{ message }}</div>

<script type="module">
  import { createApp } from 'https://unpkg.com/vue@3/dist/vue.esm-browser.js'

  createApp({
    data() {
      return {
        message: 'Hello Vue!'
      }
    }
  }).mount('#app')
</script>
```

https://youtu.be/dbUrjxOSI-Q

## 2023-01-03

### Using Vue from CDN

CDN에서 Vue 사용

https://vuejs.org/guide/quick-start.html#using-vue-from-cdn

https://youtu.be/WZnddsbYmh0

## 2023-01-02

### 배경지도 API 1.0 레퍼런스

https://www.vworld.kr/dev/v4dv_baseguide_s001.do

http://localhost:8080/test/sample_bese.html

```html
<script src="https://map.vworld.kr/js/apis.do?type=Base&apiKey=B610A3AD-2A48-3553-9432-3C327846839D"></script>
```

https://youtu.be/raGXrQ5XNv4

## 2022-12-30

## GeoServer 설치

GeoServer는 지리공간 데이터를 공유하고 편집할 수 있는 자바로 개발된 오픈 소스 GIS 소프트웨어 서버이다. 상호운용성을 전제로 개발되었기 때문에, 개방형 표준을 사용하여 다양한 공간 데이터 소스를 서비스할 수 있게 한다.

### GeoServer 다운로드

https://geoserver.org/release/stable/

Packages
- Platform Independent Binary
    - https://sourceforge.net/projects/geoserver/files/GeoServer/2.22.0/geoserver-2.22.0-bin.zip

### Download PostgreSQL

https://www.enterprisedb.com/downloads/postgres-postgresql-downloads

9.6.24*
- https://www.enterprisedb.com/postgresql-tutorial-resources-training?uuid=91f8264f-8a2d-434a-9559-4dfa9b3b80b1&campaignId=701380000017oAXAAY

### PostGIS 다운로드

- https://download.osgeo.org/postgis/windows/
- https://download.osgeo.org/postgis/windows/pg96/postgis-bundle-pg96x64-setup-3.2.3-1.exe

https://bongra.tistory.com/category/GIS?page=4

## 2022-12-29

### HttpsURLConnectionTest

```java
package god.test;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.List;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.commons.io.IOUtils;
import org.junit.Test;

public class HttpsURLConnectionTest {

	@Test
	public void test() {
		String spec = "https://developer.android.com/reference/java/net/HttpURLConnection";
		URL url = null;
		try {
			url = new URL(spec);
		} catch (MalformedURLException e) {
			System.err.println("MalformedURLException");
		}

		HttpsURLConnection urlConnection = null;
		try {
			urlConnection = (HttpsURLConnection) url.openConnection();
			setDefaultHostnameVerifier(urlConnection);
			setDefaultSSLSocketFactory(urlConnection);
			post(urlConnection);
		} catch (IOException e) {
			System.err.println("IOException");
		} finally {
			urlConnection.disconnect();
		}
	}

	private void setDefaultHostnameVerifier(HttpsURLConnection urlConnection) {
		HostnameVerifier v = new HostnameVerifier() {
			@Override
			public boolean verify(String hostname, SSLSession session) {
				return true;
			}
		};

		HttpsURLConnection.setDefaultHostnameVerifier(v);

		urlConnection.setHostnameVerifier(v);
	}

	private void setDefaultSSLSocketFactory(HttpsURLConnection urlConnection) {
		SSLContext sc = null;
		try {
			sc = SSLContext.getInstance("SSL");
		} catch (NoSuchAlgorithmException e) {
			System.err.println("NoSuchAlgorithmException");
		}

		TrustManager[] tm = new TrustManager[] { new X509TrustManager() {
			@Override
			public void checkClientTrusted(java.security.cert.X509Certificate[] chain, String authType)
					throws java.security.cert.CertificateException {
			}

			@Override
			public void checkServerTrusted(java.security.cert.X509Certificate[] chain, String authType)
					throws java.security.cert.CertificateException {
			}

			@Override
			public java.security.cert.X509Certificate[] getAcceptedIssuers() {
				return null;
			}
		} };

		try {
			sc.init(null, tm, new SecureRandom());
		} catch (KeyManagementException e) {
			System.err.println("KeyManagementException");
		}

		HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());

		urlConnection.setSSLSocketFactory(sc.getSocketFactory());
	}

	private void post(HttpsURLConnection urlConnection) {
		urlConnection.setDoOutput(true);

		try {
			urlConnection.setRequestMethod("POST");
		} catch (ProtocolException e) {
			System.err.println("ProtocolException");
		}

		String s = "god=test 이백행&god2=갓";
		System.out.println("s");
		System.out.println(s);
		try (OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream());) {
			out.write(s.getBytes());
			out.flush();
		} catch (IOException e) {
			System.err.println("IOException");
		}

		List<String> readLines = null;
		try {
			readLines = IOUtils.readLines(urlConnection.getInputStream(), StandardCharsets.UTF_8);
		} catch (IOException e) {
			System.err.println("IOException");
		}
		for (String readLine : readLines) {
			System.out.println(readLine);
		}
	}

}
```

## 2022-12-28

### HttpsURLConnection

https://developer.android.com/reference/java/net/HttpURLConnection

https://developer.android.com/reference/javax/net/ssl/HttpsURLConnection

https://www.tabnine.com/code/java/classes/javax.net.ssl.HttpsURLConnection

```java
String spec = "https://developer.android.com/reference/java/net/HttpURLConnection";

HttpsURLConnection urlConnection = null;

try {
	URL url = new URL(spec);

	urlConnection = (HttpsURLConnection) url.openConnection();

	TrustManager[] tm = new TrustManager[] { new X509TrustManager() {
		@Override
		public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		}

		@Override
		public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
		}

		@Override
		public X509Certificate[] getAcceptedIssuers() {
			return null;
		}
	} };
	SSLContext sc = SSLContext.getInstance("SSL");
	sc.init(null, tm, new SecureRandom());

	HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier() {
		@Override
		public boolean verify(String hostname, SSLSession session) {
			return true;
		}
	});
	HttpsURLConnection.setDefaultSSLSocketFactory(sc.getSocketFactory());
	urlConnection.setHostnameVerifier(new HostnameVerifier() {
		@Override
		public boolean verify(String hostname, SSLSession session) {
			return true;
		}
	});
	urlConnection.setSSLSocketFactory(sc.getSocketFactory());

	urlConnection.setRequestMethod("POST");

	urlConnection.setDoOutput(true);

	String str = "god=test 이백행";
	System.out.println("str=" + str);
	try (OutputStream out = new BufferedOutputStream(urlConnection.getOutputStream());) {
		out.write(str.getBytes());
		out.flush();
	}

	List<String> readLines = IOUtils.readLines(urlConnection.getInputStream(), StandardCharsets.UTF_8);
	for (String readLine : readLines) {
		System.out.println(readLine);
	}
} catch (MalformedURLException e) {
	System.err.println("MalformedURLException URL");
} catch (IOException e) {
	System.err.println("IOException openConnection");
} catch (NoSuchAlgorithmException e) {
	System.err.println("NoSuchAlgorithmException getInstance");
} catch (KeyManagementException e) {
	System.err.println("KeyManagementException init");
} finally {
	urlConnection.disconnect();
}
```

## 2022-12-27

### java.net.URL.URL 사용하기

https://jsonplaceholder.typicode.com/guide/

```java
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;

import org.apache.commons.io.IOUtils;
import org.junit.Test;

public class URLTest {

	@Test
	public void test() {
		String spec = "https://jsonplaceholder.typicode.com/posts";

		URL url = null;

		try {
			url = new URL(spec);
		} catch (MalformedURLException e) {
			System.err.println("MalformedURLException URL");
		}

		String s = null;

		try {
			s = IOUtils.toString(url.openStream(), StandardCharsets.UTF_8);
		} catch (IOException e) {
//			e.printStackTrace();
			System.err.println("IOException toString openStream");
		}

		System.out.println("s=" + s);
	}

}
```

## 2022-12-26

### JavaScript switch 문

Using switch

스위치 사용

https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/switch#%EC%98%88%EC%A0%9C

https://developer.mozilla.org/ko/docs/Web/JavaScript/Reference/Statements/switch#using_switch

```js
switch (expr) {
  case 'Oranges':
    console.log('Oranges are $0.59 a pound.');
    break;
  case 'Apples':
    console.log('Apples are $0.32 a pound.');
    break;
  case 'Bananas':
    console.log('Bananas are $0.48 a pound.');
    break;
  case 'Cherries':
    console.log('Cherries are $3.00 a pound.');
    break;
  case 'Mangoes':
  case 'Papayas':
    console.log('Mangoes and papayas are $2.79 a pound.');
    break;
  default:
    console.log('Sorry, we are out of ' + expr + '.');
}

console.log("Is there anything else you'd like?");
```

## 2022-12-24

전자정부 표준프레임워크 개발환경 4.0.0을 설치한다.

https://youtu.be/3FQOetCMRF4

### settings.xml에 localRepository를 추가

C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\apache-maven-3.8.4\conf

```xml
<localRepository>/EGOVFRAME/.m2/repository</localRepository>
```

### eclipse.ini에 vm을 추가

```ini
-vm
#plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_15.0.2.v20210201-0955/jre/bin/javaw.exe
plugins/org.eclipse.justj.openjdk.hotspot.jre.full.win32.x86_64_15.0.2.v20210201-0955/jre/bin/server/jvm.dll
```

```ini
-Dosgi.instance.area.default=C:\EGOVFRAME\eGovFrameDev-4.0.0-64bit\workspace
```

```ini
-Xms2048m
-Xmx2048m
```

### eclipse 실행

```
C:\EGOVFRAME\eGovFrameDev-4.0.0-64bit\eclipse
```

eclipse.exe

### 이클립스에서 메이븐 설정 수정

Window > Preferences > Maven > User Settings

```
C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\apache-maven-3.8.4\conf\settings.xml
```

### eGovFrame Web Project

```
god.test
```

[EGOVFRAME-4.0.0-install.bat](2022/12/21/EGOVFRAME-4.0.0-install.bat)

[EGOVFRAME-4.0.0-setenv.bat](2022/12/21/EGOVFRAME-4.0.0-setenv.bat)

[EGOVFRAME-4.0.0-uninstall.bat](2022/12/21/EGOVFRAME-4.0.0-uninstall.bat)

[settings.xml](2022/12/21/eGovCI-4.0.0_64bit/settings.xml)

[eclipse.ini](2022/12/21/eGovFrameDev-4.0.0-64bit/eclipse.ini)

## 2022-12-23

EGOVFRAME_HOME을 추가한다.

### EGOVFRAME-4.0.0-setenv.bat 추가함

[EGOVFRAME-4.0.0-install.bat](2022/12/21/EGOVFRAME-4.0.0-install.bat)

[EGOVFRAME-4.0.0-setenv.bat](2022/12/21/EGOVFRAME-4.0.0-setenv.bat)

```bat
rem 한글깨짐
chcp 65001

set EGOVFRAME_HOME=C:\EGOVFRAME
rem set EGOVFRAME_HOME=D:\EGOVFRAME
rem set EGOVFRAME_HOME=E:\EGOVFRAME
```

[EGOVFRAME-4.0.0-uninstall.bat](2022/12/21/EGOVFRAME-4.0.0-uninstall.bat)

## 2022-12-22

### EGOVFRAME_HOME 추가함

[EGOVFRAME-4.0.0-install.bat](2022/12/21/EGOVFRAME-4.0.0-install.bat)

[EGOVFRAME-4.0.0-uninstall.bat](2022/12/21/EGOVFRAME-4.0.0-uninstall.bat)

추가해야 함
- setenv.bat
- C:\EGOVFRAME\eGovCI-4.0.0_64bit\bin\apache-maven-3.8.4\conf
    - settings.xml
- C:\EGOVFRAME\eGovFrameDev-4.0.0-64bit\eclipse
    - eclipse.ini

## 2022-12-21

### curl 다운로드

curl로 전자정부 표준프레임워크 개발환경 4.0.0을 다운로드한다.

```cmd
C:\Users\it1385>curl --help
Usage: curl [options...] <url>
 -d, --data <data>          HTTP POST data
 -f, --fail                 Fail fast with no output on HTTP errors
 -h, --help <category>      Get help for commands
 -i, --include              Include protocol response headers in the output
 -o, --output <file>        Write to file instead of stdout
 -O, --remote-name          Write output to a file named as the remote file
 -s, --silent               Silent mode
 -T, --upload-file <file>   Transfer local FILE to destination
 -u, --user <user:password> Server user and password
 -A, --user-agent <name>    Send User-Agent <name> to server
 -v, --verbose              Make the operation more talkative
 -V, --version              Show version number and quit

This is not the full help, this menu is stripped into categories.
Use "--help category" to get an overview of all categories.
For all options use the manual or "--help all".
```

개발자용 개발환경 64bit(Implementation Tool) Version 4.0.0을 C:\EGOVFRAME 폴더에 다운로드 받는다.

```cmd
curl -o C:\EGOVFRAME\eGovFrameDev-4.0.0-Win-64bit.exe https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-4.0.0-Win-64bit.exe
```

서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0을 C:\EGOVFRAME 폴더에 다운로드 받는다.

```cmd
curl -o C:\EGOVFRAME\eGovCI-4.0.0_64bit.exe https://maven.egovframe.go.kr/publist/HDD1/public/eGovCI-4.0.0_64bit.exe
```

[EGOVFRAME-4.0.0-install.bat](2022/12/21/EGOVFRAME-4.0.0-install.bat)

```bat
if not exist C:\EGOVFRAME\Downloads mkdir -p C:\EGOVFRAME\Downloads

curl -o C:\EGOVFRAME\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-4.0.0-Win-64bit.exe

curl -o C:\EGOVFRAME\Downloads\eGovCI-4.0.0_64bit.exe https://maven.egovframe.go.kr/publist/HDD1/public/eGovCI-4.0.0_64bit.exe

cd C:\EGOVFRAME

C:\EGOVFRAME\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe

C:\EGOVFRAME\Downloads\eGovCI-4.0.0_64bit.exe

```

[EGOVFRAME-4.0.0-uninstall.bat](2022/12/21/EGOVFRAME-4.0.0-uninstall.bat)

## 2022-12-20

### 전자정부 표준프레임워크 DAO/ServiceImpl/Controller 로그 사용하기

logger.debug("test 이백행 logger");

final static Logger logger = LoggerFactory.getLogger(Wombat.class);

```java
@Repository("loginPolicyDAO")
public class LoginPolicyDAO extends EgovComAbstractDAO {

	/**
	 * 로그인정책 목록을 조회한다.
	 * 
	 * @param loginPolicyVO - 로그인정책 VO
	 * @return List - 로그인정책 목록
	 */
	public List<LoginPolicyVO> selectLoginPolicyList(LoginPolicyVO loginPolicyVO) throws Exception {
		logger.trace("test 이백행 logger trace");
		logger.debug("test 이백행 logger debug");
		logger.info("test 이백행 logger info");
		logger.warn("test 이백행 logger warn");
		logger.error("test 이백행 logger error");
		logger.fatal("test 이백행 logger fatal");
		return selectList("loginPolicyDAO.selectLoginPolicyList", loginPolicyVO);
	}
```

@Resource(name="egov.sqlSession")

```java
public abstract class EgovComAbstractDAO extends EgovAbstractMapper{

	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
	
	@Resource(name="egov.sqlSession")
	public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
		super.setSqlSessionFactory(sqlSession);
	}
```

@Resource(name = "sqlSession")

```java
public abstract class EgovAbstractMapper extends SqlSessionDaoSupport {

	/**
	 * Annotation 형식으로 sqlSession(SqlSessionFactoryBean)을 받아와
	 * 이를 super(SqlSessionDaoSupport)의 setSqlSessionFactory 메서드를 호출하여 설정해 준다.
	 * <p>
	 * SqlSessionTemplate이 지정된 경우된 경우 이 SqlSessionFactory가 무시된다. (Batch 처리를 위해서는 SqlSessionTemplate가 필요)
	 * </p>
	 *
	 * @param sqlSession SqlSessionFactory로 MyBatis와의 연계를 위한 기본 클래스
	 */
	@Resource(name = "sqlSession")
	public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
		super.setSqlSessionFactory(sqlSession);
	}
```

public class LoginPolicyDAO extends EgovComAbstractDAO {

public abstract class EgovComAbstractDAO extends EgovAbstractMapper{

public abstract class SqlSessionDaoSupport extends DaoSupport {

public abstract class DaoSupport implements InitializingBean {

```java
logger.trace("test 이백행 logger trace");
logger.debug("test 이백행 logger debug");
logger.info("test 이백행 logger info");
logger.warn("test 이백행 logger warn");
logger.error("test 이백행 logger error");
logger.fatal("test 이백행 logger fatal");
```

public class EgovLoginPolicyServiceImpl extends EgovAbstractServiceImpl implements EgovLoginPolicyService {

```java
egovLogger.trace("test 이백행 egovLogger trace");
egovLogger.debug("test 이백행 egovLogger debug");
egovLogger.info("test 이백행 egovLogger info");
egovLogger.warn("test 이백행 egovLogger warn");
egovLogger.error("test 이백행 egovLogger error");
```


```java
final static Logger logger = LoggerFactory.getLogger(EgovLoginPolicyController.class);

logger.trace("test 이백행 egovLogger trace");
logger.debug("test 이백행 egovLogger debug");
logger.info("test 이백행 egovLogger info");
logger.warn("test 이백행 egovLogger warn");
logger.error("test 이백행 egovLogger error");
```

## 2022-12-19

### 스프링 생성자 주입

Constructor-based Dependency Injection

https://docs.spring.io/spring-framework/docs/current/reference/html/core.html#beans-constructor-injection

EgovLoginPolicyController

```java
//	@Resource(name = "egovLoginPolicyService")
//	EgovLoginPolicyService egovLoginPolicyService;

private final EgovLoginPolicyService egovLoginPolicyService;

public EgovLoginPolicyController(EgovLoginPolicyService egovLoginPolicyService) {
    this.egovLoginPolicyService = egovLoginPolicyService;
}
```

EgovLoginPolicyServiceImpl

```java
//	@Resource(name = "loginPolicyDAO")
//	LoginPolicyDAO loginPolicyDAO;

private final LoginPolicyDAO loginPolicyDAO;

public EgovLoginPolicyServiceImpl(LoginPolicyDAO loginPolicyDAO) {
    this.loginPolicyDAO = loginPolicyDAO;
}
```

## 2022-12-14

### JNDIDataSource

JNDIDataSource는 JNDI Lookup을 이용하여 Database Connection을 생성한다. JNDIDataSource는 대부분 Enterprise application server에서 제공되는 JNDI tree로 부터 DataSource를 가져온다.

Jeus 설정
```xml
<jee:jndi-lookup id="dataSource" jndi-name="${jndiName}" resource-ref="true">
     <jee:environment>
	  java.naming.factory.initial=${jeus.java.naming.factory.initial}
	  java.naming.provider.url=${jeus.java.naming.provider.url}
    </jee:environment>
</jee:jndi-lookup>
```

Weblogic 설정
```xml
<util:properties id="jndiProperties" location="classpath:/META-INF/spring/jndi.properties" />
<jee:jndi-lookup id="dataSource" jndi-name="${jndiName}" resource-ref="true" environment-ref="jndiProperties" />
```

[데이터처리 > Data Source > JNDIDataSource](https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:rte4.0:psl:data_source)

## 2022-12-13

넥사크로 N

넥사크로 스튜디오와 콘솔도구(Nexacro Deploy) 사용법을 익힐 수 있습니다.

넥사크로 N 개발도구 가이드 21.0.0.1100 > Nexacro Deploy

http://docs.tobesoft.com/development_tools_guide_nexacro_n_ko#ce55319115c047e4

### 1. Application 전체를 Generate 하는 경우
```
nexacrodeploy.exe  -P "C:\TestGenerate\TestGenerate.xprj" -O "E:\ResultGenerate" -B "C:\TestGenerate\nexacrolib"
```

특정 파일만 Generate 하는 경우
- FILE 옵션으로 지정한 C:\TestGenerate\aa.xfdl 파일만 Generate 하여 "E:\ResultGenerate" 폴더 아래에 생성합니다.
```
nexacrodeploy.exe -P "C:\TestGenerate\TestGenerate.xprj" -O "E:\ResultGenerate"  -B "C:\TestGenerate\nexacrolib" -FILE "C:\TestGenerate\aa.xfdl" 
```

- n개 파일을 Generate 하여 "E:\ResultGenerate" 폴더 아래에 생성합니다.
```
nexacrodeploy.exe -P "C:\TestGenerate\TestGenerate.xprj" -O "E:\ResultGenerate"  -B "C:\TestGenerate\nexacrolib" -FILE "'C:\TestGenerate\aa.xfdl','C:\TestGenerate\bb.xfdl','C:\TestGenerate\cc.xfdl'" 
```

### 2. Application 전체를 Deploy 하는 경우

- -O 옵션으로 지정한 경로에 Generate를 수행한 후 -D 경로에 Deploy를 처리합니다.
- -O 옵션으로 지정한 경로에 수행되는 Generate는 모든 Generate 옵션이 적용됩니다. (-R, -BROWSER 등)
- -D 옵션으로 지정한 경로에 Deploy 되는 파일들은 -O 경로의 파일들을 소스로 처리합니다.

```
nexacrodeploy.exe  -P "C:\TestGenerate\TestGenerate.xprj" -O "E:\ResultGenerate" -B "C:\TestGenerate\nexacrolib" -D "E:\ResultDeploy"
```

## 2022-12-12

BasicDataSource를 JNDI Datasource로 수정한다.

https://tomcat.apache.org/tomcat-8.5-doc/jndi-datasource-examples-howto.html

```xml
<beans profile="mysql-jndi">
	<bean id="dataSource"
		class="org.springframework.jndi.JndiObjectFactoryBean">
		<property name="jndiName" value="jdbc/ComDB" />
	</bean>
</beans>s>
```

## 2022-12-11

리눅스에서 그룹과 사용자를 추가한다.

그룹 GID
- godweb 10001
- godwas 10002
- godnas 10003
- godnas2 10004

사용자 UID
- godweb 10001
- godwas 10002

### groupadd 그룹 추가

GID 10001으로 그룹을 추가한다.

그룹 확인
```
cat /etc/group
```

그룹 추가
```
groupadd -g 10001 godweb
groupadd -g 10002 godwas
groupadd -g 10003 godnas
groupadd -g 10004 godnas2
cat /etc/group
```

그룹 수정
- GID 20001으로 그룹을 수정한다.
```
groupmod -g 20001 godweb
```

그룹 삭제
```
groupdel godweb
groupdel godwas
groupdel godnas
groupdel godnas2
cat /etc/group
```

### useradd 사용자 추가

UID 10001으로 사용자를 추가한다.

사용자 확인
```
cat /etc/passwd
```

사용자 추가
```
useradd -d /home/godweb -g 10001 -G 10003,10004 -u 10001 godweb
useradd -d /home/godwas -g 10002 -G 10003,10004 -u 10002 godwas
cat /etc/passwd
id godweb
id godwas
```

사용자 삭제
```
userdel godweb
userdel godwas
cat /etc/passwd
rm -rf /home/godweb
rm -rf /home/godwas
```

사용자의 비밀 번호 변경
```
passwd godweb
passwd godwas
```
```
echo godweb | passwd --stdin godweb
echo godwas | passwd --stdin godwas
```

### 리눅스에서 에일리어스(별명) 추가

CI/CD 서버에서 빌드/배포한다.

CI/CD 서버에서 WEB/WAS 서버에 ssh로 접속해야 한다.

/APP/.bashrc
```
shopt -s expand_aliases

alias hss='ssh'
alias pcs='scp'

alias hss4='ssh -p 22 root@192.168.0.4'
alias hss5='ssh -p 22 root@192.168.0.5'

# 개발 WEB
alias hssgodweb1='ssh -p 22 godweb@192.168.0.4'
alias hssgodweb2='ssh -p 22 godweb@192.168.0.5'

# 개발 WAS
alias hssgodwas1='ssh -p 22 godwas@192.168.0.4'
alias hssgodwas2='ssh -p 22 godwas@192.168.0.5'
```

/home/godci/.bashrc
```
if [ -f /APP/.bashrc ]; then
	. /APP/.bashrc
fi
```

/home/godweb/deploy.sh
```
source ~/.bash_profile

hssgodweb1 'id && pwd'
hssgodwas1 'source ~/.bash_profile && id && pwd'
```

### ssh-keygen, ssh-copy-id, ssh

```
ssh-keygen
```

```
#ssh-copy-id godweb@192.168.0.4
#ssh-copy-id godweb@192.168.0.4

#ssh-copy-id -i ~/.ssh/id_rsa.pub -p 22 godweb@192.168.0.4
#ssh-copy-id -i ~/.ssh/id_rsa.pub -p 22 godwas@192.168.0.4

ssh-copy-id -p 22 godweb@192.168.0.4
ssh-copy-id -p 22 godwas@192.168.0.4
```

```
#ssh 'godweb@192.168.0.4'
#ssh 'godwas@192.168.0.4'

#ssh -p '22' 'godweb@192.168.0.4'
#ssh -p '22' 'godwas@192.168.0.4'

ssh -p 22 godweb@192.168.0.4
ssh -p 22 godwas@192.168.0.4
```

### CURRENT_PID

현재 수행 중인 톰캣의 프로세스 ID를 찾습니다.

```
tail -f /TEST/apache-tomcat-8.5.65-01/logs/catalina.out
```

```
ps -ef | grep tomcat
```

```
ps -ef | grep apache-tomcat-8.5.65-01
```

```
pgrep -fl tomcat
```

```
pgrep -fl apache-tomcat-8.5.65-01
```

deploy.sh
```
CURRENT_PID=$(pgrep -fl apache-tomcat-8.5.65-01 | grep java | awk '{print $1}')
echo "현재 구동 중인 톰캣 pid 확인: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
    echo "현재 구동 중인 톰캣이 없으므로 종료하지 않습니다."
else
    echo "톰캣 $CURRENT_PID 종료"
fi
```

```
/TEST/apache-tomcat-8.5.65-01/bin/startup.sh
```

[deploy.sh](2022/12/11/deploy.sh)

## 2022-12-10

### shopt -s expand_aliases 별칭 확장

/home/centos/.bashrc
```
# User specific aliases and functions

shopt -s expand_aliases

alias hss='ssh'

alias hss4='ssh -p 22 root@192.168.0.4'
```

/home/centos/deploy.sh
```
#ssh -p 22 root@192.168.0.4 'id && ls'

source ~/.bash_profile

hss -p 22 root@192.168.0.4 'id && ls'

hss4 'id && ls'
```

## 2022-12-08
- ssh 를 hss 로, scp 를 pcs 로 실행하기
- .bash_profile
```sh
shopt -s expand_aliases
alias hss='ssh'
alias pcs='scp'
```
- deploy.sh
```sh
source ~/.bash_profile

# ssh 를 hss 로

: '

ssh god@192.168.0.100 ls
ssh god@192.168.0.100 source ~/.bash_profile && ls

ssh -p 22000 god@192.168.0.100 ls
ssh -p 22000 god@192.168.0.100 source ~/.bash_profile && ls
'

hss god@192.168.0.100 ls
hss god@192.168.0.100 source ~/.bash_profile && ls

hss -p 22000 god@192.168.0.100 ls
hss -p 22000 god@192.168.0.100 source ~/.bash_profile && ls

# scp 를 pcs 로

: '
scp test.txt god@192.168.0.100:/test
scp -r /test god@192.168.0.100:/test

scp -P 22000 test.txt god@192.168.0.100:/test
scp -P 22000 -r /test god@192.168.0.100:/test
'

pcs test.txt god@192.168.0.100:/test
pcs -r /test god@192.168.0.100:/test

pcs -P 22000 test.txt god@192.168.0.100:/test
pcs -P 22000 -r /test god@192.168.0.100:/test
```

- Personal access tokens (classic)
- https://github.com/settings/tokens
- Tokens (classic)
- https://토큰 패스워드@github.com/LeeBaekHaeng/dev-diary.git

## 2022-12-07
- 파일 이동/파일을 디렉토리로 이동 테스트
- https://javadoc.io/doc/commons-io/commons-io/2.11.0/index.html
- https://javadoc.io/static/commons-io/commons-io/2.11.0/org/apache/commons/io/FileUtils.html
```java
package gsitm.test;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.apache.commons.io.FileUtils;
import org.egovframe.rte.fdl.string.EgovDateUtil;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class GodTest4 {

	protected Logger egovLogger = LoggerFactory.getLogger(GodTest4.class);

	@Test
	public void test() {

		// Moves a file.
		// When the destination file is on another file system, do a "copy and delete".

		// 파일을 이동합니다.
		// 대상 파일이 다른 파일 시스템에 있는 경우 "복사 및 삭제"를 수행합니다.

		File srcFile = new File("/test/새 텍스트 문서.txt");
		File destDir = new File("/test/" + EgovDateUtil.toString(new Date(), "yyyy/MM/dd", null) + "/새 텍스트 문서.txt");

		try {
			FileUtils.moveFile(srcFile, destDir);
		} catch (IOException e) {
			egovLogger.error("IOException FileUtils.moveFile");
//			e.printStackTrace();
		}

	}

//	@Test
	public void test2() {

		// Moves a file to a directory.
		// 파일을 디렉토리로 이동합니다.

		File srcFile = new File("/test/새 텍스트 문서.txt");
		File destDir = new File("/test/" + EgovDateUtil.toString(new Date(), "yyyy/MM/dd", null));
		boolean createDestDir = true;

		try {
			FileUtils.moveFileToDirectory(srcFile, destDir, createDestDir);
		} catch (IOException e) {
			egovLogger.error("IOException FileUtils.moveFileToDirectory");
//			e.printStackTrace();
		}

	}

}
```

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
