# ant - 빌드 파일 예

1. <https://ant.apache.org/manual/index.html>
2. Table of Contents
3. Using Apache Ant
4. Example Buildfile

## 1. build.xml

build.xml

```xml
<project name="MyProject" default="dist" basedir=".">
  <description>
    simple example build file
  </description>
  <!-- set global properties for this build -->
  <property name="src" location="src"/>
  <property name="build" location="build"/>
  <property name="dist" location="dist"/>

  <target name="init">
    <!-- Create the time stamp -->
    <tstamp/>
    <!-- Create the build directory structure used by compile -->
    <mkdir dir="${build}"/>
  </target>

  <target name="compile" depends="init"
        description="compile the source">
    <!-- Compile the Java code from ${src} into ${build} -->
    <javac srcdir="${src}" destdir="${build}"/>
  </target>

  <target name="dist" depends="compile"
        description="generate the distribution">
    <!-- Create the distribution directory -->
    <mkdir dir="${dist}/lib"/>

    <!-- Put everything in ${build} into the MyProject-${DSTAMP}.jar file -->
    <jar jarfile="${dist}/lib/MyProject-${DSTAMP}.jar" basedir="${build}"/>
  </target>

  <target name="clean"
        description="clean up">
    <!-- Delete the ${build} and ${dist} directory trees -->
    <delete dir="${build}"/>
    <delete dir="${dist}"/>
  </target>
</project>
```

## 2. dev/build.xml

/god.codegen-web/ant/dev/build.xml

- property name="project.name" value="codegen-web"
- property name="project.name" value="codegen-web2"

```xml
<project name="MyProject" default="dist" basedir="../../target">
	<description>
		simple example build file
	</description>
	<!-- set global properties for this build -->
	<property name="project.name" value="codegen-web" />
	<property name="was.name" value="${project.name}.war" />
	<property name="web.name" value="${project.name}.web" />

	<property name="src" location="codegen-web-1.0.0" />
	<property name="build" location="build/dev" />
	<property name="was.build" location="${build}/${was.name}" />
	<property name="web.build" location="${build}/${web.name}" />
	<property name="dist" location="dist/dev" />

	<target name="init">
		<!-- Create the time stamp -->
		<tstamp />
		<!-- Create the build directory structure used by compile -->
		<mkdir dir="${build}" />

		<mkdir dir="${was.build}" />
		<mkdir dir="${web.build}" />
	</target>

	<target name="compile" depends="init" description="compile the source">
		<!-- Compile the Java code from ${src} into ${build} -->
		<!-- <javac srcdir="${src}" destdir="${build}" /> -->

		<copy todir="${was.build}" verbose="true">
			<fileset dir="${src}">
				<include name="**/*.jsp" />
				<include name="META-INF/**" />
				<include name="WEB-INF/**" />
			</fileset>
		</copy>

		<copy todir="${web.build}" verbose="true">
			<fileset dir="${src}">
				<exclude name="**/*.jsp" />
				<exclude name="META-INF/**" />
				<exclude name="WEB-INF/**" />
			</fileset>
		</copy>
	</target>

	<target name="dist" depends="compile" description="generate the distribution">
		<!-- Create the distribution directory -->
		<!-- <mkdir dir="${dist}/lib" /> -->

		<!-- Put everything in ${build} into the MyProject-${DSTAMP}.jar file -->
		<!-- <jar jarfile="${dist}/lib/MyProject-${DSTAMP}.jar" basedir="${build}" /> -->

		<tar longfile="gnu" destfile="${dist}/${was.name}.tar">
			<tarfileset dir="${was.build}" filemode="755" username="ant" group="ant" prefix="${was.name}">
			</tarfileset>
		</tar>

		<tar longfile="gnu" destfile="${dist}/${web.name}.tar">
			<tarfileset dir="${web.build}" filemode="755" username="ant" group="ant" prefix="${web.name}">
			</tarfileset>
		</tar>

		<war destfile="${dist}/${was.name}.war" webxml="${src}/WEB-INF/web.xml">
			<fileset dir="${was.build}" />
		</war>

		<war destfile="${dist}/${web.name}.war" webxml="${src}/WEB-INF/web.xml">
			<fileset dir="${web.build}" />
		</war>

	</target>

	<target name="clean" description="clean up">
		<!-- Delete the ${build} and ${dist} directory trees -->
		<delete dir="${build}" verbose="true" />
		<delete dir="${dist}" verbose="true" />
	</target>
</project>
```

<https://github.com/LeeBaekHaeng/egovframe-3.10.0/commit/60aaaae8697eb031cae8d118a2d22665b32687b8>

<https://youtu.be/W7Tc0fTwqdw>
