# 표준프레임워크 개발환경 4.2.0 (egovframe-development)

[2024년 전자정부 표준프레임워크 컨트리뷰션][개발환경] 이클립스 문제(Probems) 해결

## 이클립스 문제(Probems) 해결 목차
- [[BatchWebProjectCreationOperation] 이클립스 문제(Probems) 해결](#objectoptimisticlockingfailureexception이클립스-문제probems-해결)
- [[CoreProjectCreationOperation] 이클립스 문제(Probems) 해결](#coreprojectcreationoperation-이클립스-문제probems-해결)
- [[BatchProjectCreationOperation] 이클립스 문제(Probems) 해결](#batchprojectcreationoperation-이클립스-문제probems-해결)

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

### [CoreProjectCreationOperation] 이클립스 문제(Probems) 해결
- The method addProjectFacets(IProgressMonitor) from the type CoreProjectCreationOperation is never used locally
- CoreProjectCreationOperation 유형의 addProjectFacets(IProgressMonitor) 메서드는 로컬에서 사용되지 않습니다.
- `2017-01-18 modify by jdh` `java core 프로젝트에서 팻싱처리가 무의미 하여  제거` 주석함

브랜치 생성
```
2024/probems/CoreProjectCreationOperation
```

The method addProjectFacets(IProgressMonitor) from the type CoreProjectCreationOperation is never used locally	CoreProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/scheduler/wizards/operation	line 155	Java Problem
```java
    /**
     * 자바 네이처 추가 이전 작업 처리
     */
    @Override
    protected void preJavaNature(IProgressMonitor monitor) throws CoreException {
    	//2017-01-18 modify by jdh
    	//java core 프로젝트에서 팻싱처리가 무의미 하여  제거
        //addProjectFacets(monitor);
    }

//    /**
//     * 프로젝트 패싯 추가
//     * @param monitor
//     * @throws CoreException
//     */
//    @SuppressWarnings("deprecation")
//    private void addProjectFacets(IProgressMonitor monitor)
//            throws CoreException {
//
//        IProject project = getProject();
//
//        IFacetedProject facetedProject =
//            ProjectFacetsManager.create(project.getProject(), true, null);
//        IProjectFacet javaFacet =
//            ProjectFacetsManager
//                .getProjectFacet(ProjectFacetConstants.JAVA_FACET_ID);
//        IProjectFacetVersion javaFacetVersion = javaFacet.getVersion(ProjectFacetConstants.DEFAULT_JAVA_VERSION);
///*        
////        IProjectFacetVersion javaFacetVersion =
////            javaFacet.getVersion(System.getProperty("java.version").substring(0,3));
//        String javaVersion = System.getProperty("java.version").substring(0,3);
//        
//        if(javaVersion != null && javaVersion.indexOf("1.5")>-1) javaVersion = "5.0";
//        IProjectFacetVersion javaFacetVersion = javaFacet.getVersion(javaVersion);
//*/
//        Set<Action> facetActions = new HashSet<Action>(1);
//        for (IActionDefinition def : javaFacetVersion
//            .getActionDefinitions(IFacetedProject.Action.Type.INSTALL)) {
//            Object object =
//                def.createConfigObject(javaFacetVersion, project.getProject()
//                    .getName());
//            JavaFacetInstallConfig config = (JavaFacetInstallConfig) object;
//            config.setSourceFolder(ResourceConstants.SOURCE_FOLDER);
//            config
//                .setDefaultOutputFolder(ResourceConstants.DEFAULT_OUTPUT_FOLDER);
//
//            facetActions.add(new Action(Action.Type.INSTALL, javaFacetVersion,
//                config));
//        }
//        
//        facetedProject.modify(facetActions, Policy.subMonitorFor(monitor, 1));
//    }
```

https://github.com/eGovFramework/egovframe-development/pull/118

### [BatchProjectCreationOperation] 이클립스 문제(Probems) 해결

- The method createSpringNature(IProgressMonitor) from the type BatchProjectCreationOperation is never used locally
- `BatchProjectCreationOperation 유형의 createSpringNature(IProgressMonitor) 메소드는 로컬로 사용되지 않습니다.` 주석함


브랜치 생성
```
2024/probems/BatchProjectCreationOperation
```

The method createSpringNature(IProgressMonitor) from the type BatchProjectCreationOperation is never used locally	BatchProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/com/wizards/operation	line 323	Java Problem
```java
//	/**
//	 * 스프링 네이처 추가
//	 */
//	private void createSpringNature(IProgressMonitor monitor) throws CoreException {
//		BatchIdeUtils.addNatureToProject(getProject(), "org.springframework.ide.eclipse.core.springnature", monitor);
//	}
```

[2024년 전자정부 표준프레임워크 컨트리뷰션][개발환경][BatchProjectCreationOperation] 이클립스 문제(Probems) 해결

https://github.com/LeeBaekHaeng/egovframe-development/commits/2024/probems/BatchProjectCreationOperation/

https://github.com/eGovFramework/egovframe-development/pull/120

https://youtu.be/eOAB3XApUOk

## egovframework.bdev.imp.ide 이클립스 문제(Probems)

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
이백행 2024-09-24

The method createSpringNature(IProgressMonitor) from the type BatchProjectCreationOperation is never used locally	BatchProjectCreationOperation.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/com/wizards/operation	line 323	Java Problem
이백행 2024-09-25

The method getWorkbench() from the type AbstractUIPlugin is deprecated	EgovBatchIdePlugin.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide	line 158	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 36	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 244	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 254	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 256	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 281	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 290	Java Problem
The type SubProgressMonitor is deprecated	ResourceUtils.java	/egovframework.bdev.imp.ide/src/egovframework/bdev/imp/ide/common	line 293	Java Problem
```
