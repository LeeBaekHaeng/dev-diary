# 개발자용 Android

모든 Android 기기에서 사용자가 선호하는 환경을 빠르고 쉽게 구축하는 데 도움이 되는 최신 도구 및 리소스입니다.

https://developer.android.com/?hl=ko


Android 스튜디오 다운로드
- https://developer.android.com/studio
- https://redirector.gvt1.com/edgedl/android/studio/install/2022.2.1.20/android-studio-2022.2.1.20-windows.exe


안드로이드 폴더 삭제
```cmd
rmdir /s /q C:\Program Files\Android

rmdir /s /q C:\Users\사용자\.android

rmdir /s /q C:\Users\사용자\.gradle

rmdir /s /q C:\Users\사용자\AppData\Local\Android\Sdk

rmdir /s /q C:\Users\사용자\AppData\Local\Android Open Source Project
```

## 표준프레임워크 모바일 디바이스 API 실행환경 3.9

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:hyb3.9:hrte

모바일 디바이스 API - 가이드 프로그램 (App)

Network 디바이스 API 가이드

https://www.egovframe.go.kr/home/deviceprgrm/deviceprgrmRead.do?pagerOffset=0&searchKey=&searchValue=&menuNo=61&param.prgrmVersion=3.9.0&devicePrgrmId=DVPRGM_0000000000092&deviceTy=and

egovframework-hyb-add-studio-networkapiguide-3.9.0.zip

## 실행

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0
```

### Android Sdk

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\local.properties
```

```properties
#sdk.dir=/Users/EGOV/android-studio-sdk
sdk.dir=C\:\\Users\\사용자\\AppData\\Local\\Android\\Sdk
```

### Build 에러

```
Unable to make field private static final java.util.Map java.lang.ProcessEnvironment.theCaseInsensitiveEnvironment accessible: module java.base does not "opens java.lang" to unnamed module @1d8d30f7
```

https://stackoverflow.com/questions/67919565/gradle-sync-failed-unable-to-make-field-private-static-final-java-util-map-java

C:\Users\사용자\.gradle

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\gradle\wrapper\gradle-wrapper.properties
```

```properties
#distributionUrl=https\://services.gradle.org/distributions/gradle-4.10.1-all.zip
distributionUrl=https\://services.gradle.org/distributions/gradle-8.0.2-all.zip
```

Reload Gradle Project 버튼 클릭

### Caused by: java.lang.ClassNotFoundException: org.gradle.initialization.BuildCompletionListener

```
Caused by: java.lang.ClassNotFoundException: org.gradle.initialization.BuildCompletionListener
```

```
Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle' line: 20
```

You must use a newer version of the Android Gradle plugin. The minimum supported version is 3.2.0 and the recommended version is 8.0.2

최신 버전의 Android Gradle 플러그인을 사용해야 합니다. 지원되는 최소 버전은 3.2.0이며 권장 버전은 8.0.2입니다.

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle
```

```gradle
//        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath 'com.android.tools.build:gradle:8.0.2'
```

Reload Gradle Project 버튼 클릭

### Unable to find method ''void org.gradle.api.internal.DefaultDomainObjectSet.<init>(java.lang.Class)''

```
Unable to find method ''void org.gradle.api.internal.DefaultDomainObjectSet.<init>(java.lang.Class)''
'void org.gradle.api.internal.DefaultDomainObjectSet.<init>(java.lang.Class)'

Gradle's dependency cache may be corrupt (this sometimes occurs after a network connection timeout.)

Re-download dependencies and sync project (requires network)
The state of a Gradle build process (daemon) may be corrupt. Stopping all Gradle daemons may solve this problem.

Stop Gradle build processes (requires restart)
Your project may be using a third-party plugin which is not compatible with the other plugins in the project or the version of Gradle requested by the project.

In the case of corrupt Gradle processes, you can also try closing the IDE and then killing all Java processes.


```

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\build.gradle
```

```gradle
//        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath 'com.android.tools.build:gradle:8.0.2'
```

Reload Gradle Project 버튼 클릭

### Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle' line: 150

```
Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle' line: 150
```

```gradle
//task cdvPrintProps << {
task cdvPrintProps {
```

Reload Gradle Project 버튼 클릭

### Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle' line: 276

```
Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle' line: 276
```

```
//compile 'com.android.support:support-v4:24.1.1+'
implementation 'com.android.support:support-v4:24.1.1+'

//compile 'com.android.support:support-v4:27.+'
implementation 'com.android.support:support-v4:27.+'
```

Reload Gradle Project 버튼 클릭

### namespace 'com.example.namespace'

```
Namespace not specified. Please specify a namespace in the module's build.gradle file like so:

android {
    namespace 'com.example.namespace'
}

If the package attribute is specified in the source AndroidManifest.xml, it can be migrated automatically to the namespace value in the build.gradle file using the AGP Upgrade Assistant; please refer to https://developer.android.com/studio/build/agp-upgrade-assistant for more information.

```

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\src\main\AndroidManifest.xml
```

```xml
package="kr.go.egovframework.hyb.networkapp"
```

```
namespace 'kr.go.egovframework.hyb.networkapp'
```

Reload Gradle Project 버튼 클릭

### apply plugin: 'com.github.dcendents.android-maven'

```
Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle' line: 42

A problem occurred evaluating project ':CordovaLib'.
> Failed to apply plugin 'com.github.dcendents.android-maven'.
   > Could not create plugin of type 'AndroidMavenPlugin'.
      > Could not generate a decorated class for type AndroidMavenPlugin.
         > org/gradle/api/publication/maven/internal/MavenPomMetaInfoProvider
```

검색
```
apply plugin: 'com.github.dcendents.android-maven'
```

https://comostudio.tistory.com/322

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

```gradle
//apply plugin: 'com.github.dcendents.android-maven'
apply plugin: 'maven-publish'
```

### Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle' line: 80

```
Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle' line: 80
```

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

주석
```gradle
/*install {
    repositories.mavenInstaller {
        pom {
            project {
                packaging 'aar'
                name 'Cordova'
                url 'https://cordova.apache.org'
                licenses {
                    license {
                        name 'The Apache Software License, Version 2.0'
                        url 'http://www.apache.org/licenses/LICENSE-2.0.txt'
                    }
                }
                developers {
                    developer {
                        id 'stevengill'
                        name 'Steve Gill'
                    }
                }
                scm {
                    connection 'https://git-wip-us.apache.org/repos/asf?p=cordova-android.git'
                    developerConnection 'https://git-wip-us.apache.org/repos/asf?p=cordova-android.git'
                    url 'https://git-wip-us.apache.org/repos/asf?p=cordova-android'

                }
            }
        }
    }
}*/
```

### Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle' line: 112

```
Build file 'C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle' line: 112
```

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

주석
```gradle
task sourcesJar(type: Jar) {
    from android.sourceSets.main.java.srcDirs
//    classifier = 'sources'
}
```

### namespace 'com.example.namespace'

```
Namespace not specified. Please specify a namespace in the module's build.gradle file like so:

android {
    namespace 'com.example.namespace'
}

If the package attribute is specified in the source AndroidManifest.xml, it can be migrated automatically to the namespace value in the build.gradle file using the AGP Upgrade Assistant; please refer to https://developer.android.com/studio/build/agp-upgrade-assistant for more information.

```

```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\AndroidManifest.xml
```

```xml
package="org.apache.cordova"
```

```
namespace 'org.apache.cordova'
```

Reload Gradle Project 버튼 클릭

### classpath 'com.android.tools.build:gradle:3.0.1'


```
C:\test\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

```
        classpath 'com.android.tools.build:gradle:3.0.1'
//        classpath 'com.android.tools.build:gradle:8.0.2'
```

Reload Gradle Project 버튼 클릭

### 원격디버깅

```
chrome://inspect
```

https://www.egovframe.go.kr/wiki/doku.php?id=egovframework:hyb3.5:hrte:remote

디바이스 정보 출력
- fn_egov_displayDeviceInfo

device.manufacturer
- samsung

navigator.network.connection.type
- wifi

### svn/git ignore

```
.gradle
.idea
app/app.iml
CordovaLib/CordovaLib.iml
3.9.0_DEVICEAPI_Cordova8.1.iml
android.iml
local.properties
```

### 모바일 디바이스 API - 가이드 프로그램 (App) 빌드 에러 수정

1. distributionUrl gradle 버전 수정
2. app\build.gradle buildscript gradle 버전 수정
3. build.gradle buildscript gradle 버전 수정
4. task cdvPrintProps << 제거
5. compile 을 implementation 로 수정
6. namespace 'kr.go.egovframework.hyb.networkapp' 추가
7. com.github.dcendents.android-maven 를 주석하고 maven-publish 를 추가
8. install 주석
9. classifier = 'sources' 주석
10. namespace 'org.apache.cordova' 추가
    
---

1. distributionUrl gradle 버전 수정

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-interfaceapiguide-3.9.0\gradle\wrapper\gradle-wrapper.properties
```

```
#distributionUrl=https\://services.gradle.org/distributions/gradle-4.10.1-all.zip
distributionUrl=https\://services.gradle.org/distributions/gradle-8.0.2-all.zip
```

2. app\build.gradle buildscript gradle 버전 수정

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\app\build.gradle
```

```
    dependencies {
//        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath 'com.android.tools.build:gradle:8.0.2'
```

3. build.gradle buildscript gradle 버전 수정

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\build.gradle
```

```
    dependencies {

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
//        classpath 'com.android.tools.build:gradle:3.0.1'
        classpath 'com.android.tools.build:gradle:8.0.2'
```

4. task cdvPrintProps << 제거

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\build.gradle
```

```
//task cdvPrintProps << {
task cdvPrintProps {
```

5. compile 을 implementation 로 수정

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\build.gradle
```

```
dependencies {
    implementation fileTree(include: '*.jar', dir: 'libs')
    // SUB-PROJECT DEPENDENCIES START
    implementation project(path: ':CordovaLib')
//    compile 'com.android.support:support-v4:24.1.1+'
    implementation 'com.android.support:support-v4:24.1.1+'
    //compile 'com.google.android.gms:play-services-gcm:+'
//    compile 'com.android.support:support-v4:27.+'
    implementation 'com.android.support:support-v4:27.+'
```

6. namespace 'kr.go.egovframework.hyb.networkapp' 추가

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\build.gradle
```

```
android {
    namespace 'kr.go.egovframework.hyb.networkapp'
```

7. com.github.dcendents.android-maven 를 주석하고 maven-publish 를 추가

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

```
//apply plugin: 'com.github.dcendents.android-maven'
apply plugin: 'maven-publish'
```

8. install 주석

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

```
/*install {
    repositories.mavenInstaller {
        pom {
            project {
                packaging 'aar'
                name 'Cordova'
                url 'https://cordova.apache.org'
                licenses {
                    license {
                        name 'The Apache Software License, Version 2.0'
                        url 'http://www.apache.org/licenses/LICENSE-2.0.txt'
                    }
                }
                developers {
                    developer {
                        id 'stevengill'
                        name 'Steve Gill'
                    }
                }
                scm {
                    connection 'https://git-wip-us.apache.org/repos/asf?p=cordova-android.git'
                    developerConnection 'https://git-wip-us.apache.org/repos/asf?p=cordova-android.git'
                    url 'https://git-wip-us.apache.org/repos/asf?p=cordova-android'

                }
            }
        }
    }
}*/
```

9. classifier = 'sources' 주석

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

```
task sourcesJar(type: Jar) {
    from android.sourceSets.main.java.srcDirs
//    classifier = 'sources'
```

10. namespace 'org.apache.cordova' 추가

```
D:\EGOVFRAME\AndroidStudioProjects\egovframework-hyb-add-studio-networkapiguide-3.9.0\CordovaLib\build.gradle
```

```
android {
    namespace 'org.apache.cordova'
```

### egovframework-hyb-add-studio-pushnotificationsapiguide-3.9.0.zip .svn 파일 삭제

egovframework-hyb-add-studio-pushnotificationsapiguide-3.9.0.zip

.svn 파일 삭제
