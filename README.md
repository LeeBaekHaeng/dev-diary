# 개발일기

[할 일(To Do)](todo/2022.md)

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
