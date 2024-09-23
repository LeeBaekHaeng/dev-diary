# 표준프레임워크 개발환경 4.2.0 (egovframe-development)

[2024년 전자정부 표준프레임워크 컨트리뷰션][개발환경] 이클립스 문제(Probems) 해결

## 이클립스 문제(Probems) 해결 목차
- [[BatchWebProjectCreationOperation] 이클립스 문제(Probems) 해결](#objectoptimisticlockingfailureexception이클립스-문제probems-해결)

### [BatchWebProjectCreationOperation] 이클립스 문제(Probems) 해결
- The import org.eclipse.jdt.launching.JavaRuntime is never used
- import org.eclipse.jdt.launching.JavaRuntime은 사용되지 않습니다.
- `import org.eclipse.jdt.launching.JavaRuntime` 제거
- `.gitignore` 에 `bin/` 를 추가

브랜치 생성
```
2024/probems/BatchWebProjectCreationOperation
```

The import org.eclipse.jdt.launching.JavaRuntime is never used	BatchWebProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/job/wizards/operation	line 41	Java Problem
```java
//import org.eclipse.jdt.launching.JavaRuntime;
```

https://github.com/LeeBaekHaeng/egovframe-development/commits/2024/probems/BatchWebProjectCreationOperation/

https://github.com/eGovFramework/egovframe-development/pull/117

### egovframework.bdev.imp.ide 이클립스 문제(Probems)

```
Description	Resource	Path	Location	Type
Execution environment is lower than one of the plug-in's dependencies (org.eclipse.m2e.core) which has an execution environment of JavaSE-17.	MANIFEST.MF	/egovframework.bdev.imp.ide/META-INF	line 28	Plug-in Problem
Project 'egovframework.bdev.imp.ide' has no explicit encoding set	egovframework.bdev.imp.ide		/egovframework.bdev.imp.ide	No explicit project encoding
The compiler compliance specified is 17 but a JRE 1.8 is used	egovframework.bdev.imp.ide		Compiler Compliance	JRE Compiler Compliance Problem
The constructor SubProgressMonitor(IProgressMonitor, int) is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 244	Java Problem
The constructor SubProgressMonitor(IProgressMonitor, int) is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 254	Java Problem
The constructor SubProgressMonitor(IProgressMonitor, int) is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 256	Java Problem
The constructor SubProgressMonitor(IProgressMonitor, int) is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 281	Java Problem
The constructor SubProgressMonitor(IProgressMonitor, int) is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 290	Java Problem
The constructor SubProgressMonitor(IProgressMonitor, int) is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 293	Java Problem
The import org.eclipse.jdt.launching.JavaRuntime is never used	BatchWebProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/job/wizards/operation	line 41	Java Problem
이백행 2024-09-23

The JRE container on the classpath is not a perfect match to the 'JavaSE-11' execution environment	MANIFEST.MF	/egovframework.bdev.imp.ide/META-INF	line 28	Plug-in Problem
The method addProjectFacets(IProgressMonitor) from the type CoreProjectCreationOperation is never used locally	CoreProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/scheduler/wizards/operation	line 155	Java Problem
The method createSpringNature(IProgressMonitor) from the type BatchProjectCreationOperation is never used locally	BatchProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/com/wizards/operation	line 323	Java Problem
The method getWorkbench() from the type AbstractUIPlugin is deprecated	EgovBatchIdePlugin.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide	line 158	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 36	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 244	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 254	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 256	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 281	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 290	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 293	Java Problem
```
