# 업무 분업 구조(WBS) AA

업무 분업 구조, 작업 분해 구조, 작업 분류 체계, 작업 분할 구조, 작업 분할 구도는 프로젝트 관리와 시스템 공학 분야에서 프로젝트의 더 작은 요소로 분해시킨 딜리버러블 지향 분업 구조이다. 업무 분업 구조는 팀의 작업을 관리 가능한 부분들로 조직화해놓은 주된 제품 딜리버러블이다.

application architect

애플리케이션 아키텍트
- IT 아키텍트 중 하나
- 애플리케이션 아키텍처 전문가
- 애플리케이션 구축 및 기술에 특화된 프로그래밍 팀의 리딩/기술 매니저
- 애플리케이션 아키텍처 설계, 표준가이드 작성

## 목차

1. 표준프레임워크 구성
   1. 실행환경
   1. 개발환경
   1. 운영환경
   1. 공통컴포넌트
   1. 모바일
1. 서버 구성
   1. 로컬 서버
      1. WEB
      1. WAS
      1. DB
      1. 배치
   1. 개발 서버
      1. 형상 관리 서버
         1. svn
         2. git
      1. 파일 서버
      1. CI 서버
      1. WEB
      1. WAS
      1. DB
      1. 배치
      1. NAS
   1. 검증 서버
      1. WEB
      1. WAS
      1. DB
      1. 배치
      1. NAS
   1. 운영 서버
      1. WEB
      1. WAS
      1. DB
      1. 배치
      1. NAS
1. 솔루션 구성
1. 배포
1. [운영자 매뉴얼](#%EC%9A%B4%EC%98%81%EC%9E%90-%EB%A7%A4%EB%89%B4%EC%96%BC)

## 서버 구성

### 개발 서버

#### 형상 관리 서버

##### svn

운영체제(OS)
- Rocky Linux
- https://rockylinux.org/ko/

Rocky 8 다운로드
- Enterprise Linux v8 Compatible
- 지원 중단일: 2029년 5월 31일
- https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.7-x86_64-minimal.iso
- https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.7-x86_64-dvd1.iso

아파치 서브버전 설치

Centos Linux
- CentOS project (client and server)

```bash
yum install subversion -y
```

https://subversion.apache.org/packages.html

---

```
14. systemctl을 사용하여 시스템 서비스 관리
14.1. 시스템 서비스 나열
14.2. 시스템 서비스 상태 표시
14.3. 시스템 서비스 시작
14.4. 시스템 서비스 중지
14.5. 시스템 서비스 다시 시작
14.6. 시스템 서비스 활성화
14.7. 시스템 서비스 비활성화
```

https://access.redhat.com/documentation/ko-kr/red_hat_enterprise_linux/8/html/configuring_basic_system_settings/managing-system-services-with-systemctl_configuring-basic-system-settings#listing-system-services_managing-system-services-with-systemctl

---

14.1. 시스템 서비스 나열

사용 가능한 모든 서비스 단위의 상태(활성화 또는 비활성화)를 나열하려면 다음을 입력합니다.

```bash
systemctl list-unit-files --type service > service.txt
```

```
firewalld.service

mariadb.service
mysql.service
mysqld.service

svnserve.service
```

---

14.2 시스템 서비스 상태 표시

systemctl status <name>.service

```bash
systemctl status svnserve.service
```

---

14.3. 시스템 서비스 시작

systemctl start <name>.service

```bash
systemctl start svnserve.service
```

---

14.4. 시스템 서비스 중지

systemctl stop <name>.service

```bash
systemctl stop svnserve.service
```

---

14.5. 시스템 서비스 다시 시작

systemctl restart <name>.service

```bash
systemctl restart svnserve.service
```

---

14.6. 시스템 서비스 활성화

systemctl enable <name>.service

```bash
systemctl enable svnserve.service
```

---

14.7. 시스템 서비스 비활성화

systemctl disable <name>.service

```bash
systemctl disable svnserve.service
```

---

아파치 서브버전 설정

`/etc/sysconfig`

`svnserve`

`OPTIONS="-r /var/svn"`

Subversion 저장소 만들기

su - root

Root Repository 를 위한 directory를 생성한다.

```bash
mkdir -p /var/svn
```

각각의 Repository를 생성한다.

```bash
svnadmin create --fs-type fsfs /var/svn/test
svnadmin create --fs-type fsfs /var/svn/test2
```

인증/권한 정보 설정 (conf/svnserve.conf)

```
/var/svn/test/conf
```

```
svnserve.conf
```

```conf
# anon-access = read
# auth-access = write
anon-access = none
auth-access = write

# password-db = passwd
password-db = passwd

# authz-db = authz
authz-db = authz
```

인증 추가

```
authz
```

```
[/]
god_rw = rw
god_r = r
```

패스워드 추가

```
passwd
```

```
god_rw = god_rw
god_r = god_r
```

```
chown -R god:god /var/svn
```

chmod -R 755 /var/svn

/usr/lib/systemd/system/svnserve.service

```
svn: E000013: file '/var/svn/test/format' 를 열 수 없습니다: 허가 거부

CentOS SELinux 설정 및 해제하기

sestatus

/etc/selinux
config
#SELINUX=enforcing
SELINUX=disabled

https://www.lesstif.com/system-admin/centos-selinux-6979732.html
```

```
svn://192.168.0.3/test
```

백업 및 복구

Dump : 표준 입출력을 통해서 저장소의 내용을 파일로 생성한다. svnadmin dump 명령을 사용하며 이 명령은 저장소 디렉토리 바깥에서 사용해야 한다.

```bash
svnadmin dump test > test.dump
```

Load : 저장소 백업 파일을 이용해서 저장소를 복구한다. svnadmin load 명령을 사용하며, 빈 저장소를 생성한 뒤 백업 파일을 이용해서 복구 한다.

```bash
svnadmin create test2
svnadmin load test2 < test.dump
```

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:dev:scm:subversion

[svn-backup.sh](svn-backup.sh)

```bash
DATETIME=$(date +%Y/%m/%d/%H/%M/%S)

mkdir -p /GOD/backup/svn/$DATETIME

#svnadmin dump /var/svn/test > /GOD/backup/svn/$DATETIME/test.dump

svnadmin dump /var/svn/test > /GOD/backup/svn/$DATETIME/test.dump && cd /GOD/backup/svn/$DATETIME && tar -czvf test.dump.tar.gz test.dump && rm -rf test.dump

```

## 운영자 매뉴얼

운영자 매뉴얼은 시스템 운영자들이 시스템을 유지보수하고 관리하기 위한 문서입니다. 운영자 매뉴얼은 시스템의 사용자 매뉴얼과는 달리, 시스템 운영에 필요한 기술적인 정보와 절차에 대한 내용이 포함됩니다. 이 매뉴얼은 시스템 운영자들이 시스템을 효과적으로 운영할 수 있도록 돕습니다.

운영자 매뉴얼은 일반적으로 다음과 같은 내용을 포함합니다.

1. 시스템 구성

시스템의 구성 요소와 구성 방법에 대한 설명입니다. 시스템의 구성 요소는 하드웨어, 소프트웨어, 네트워크 구성, 데이터베이스 구성 등을 포함합니다.

2. 시스템 운영

시스템 운영에 필요한 절차와 기술적인 정보를 제공합니다. 시스템 운영은 시스템 모니터링, 백업 및 복원, 보안 관리, 패치 및 업그레이드, 오류 및 장애 대응 등을 포함합니다.

3. 시스템 보안

시스템 보안에 대한 설명과 절차를 제공합니다. 시스템 보안은 사용자 인증, 접근 제어, 방화벽 구성, 암호화 등을 포함합니다.

4. 문제 해결

시스템에서 발생할 수 있는 문제에 대한 대응 방법을 제공합니다. 이는 문제 발생 시 조치해야 할 절차와 대응 방법을 설명합니다.

5. 기술 지원

시스템 운영자가 기술적인 문제를 해결하기 위한 기술 지원에 대한 정보를 제공합니다. 기술 지원은 고객 지원, 기술 문서 및 지원 포럼, 전문 기술 지원 등을 포함합니다.

6. 참고 문서

운영자 매뉴얼에는 참고할 만한 다른 문서와 관련된 정보도 제공됩니다. 이러한 정보는 보안 정책, 법적인 제한 사항, 제품 매뉴얼, 레퍼런스 문서 등을 포함할 수 있습니다.

운영자 매뉴얼은 시스템 운영자들이 시스템을 운영하고 유지보수하는 데 매우 유용한 자료입니다.
