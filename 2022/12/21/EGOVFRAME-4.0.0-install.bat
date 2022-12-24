if exist "EGOVFRAME-4.0.0-setenv.bat" call "EGOVFRAME-4.0.0-setenv.bat"

echo "%EGOVFRAME_HOME% 폴더 생성 시작"
if not exist "%EGOVFRAME_HOME%\Downloads" mkdir -p "%EGOVFRAME_HOME%\Downloads"
echo "%EGOVFRAME_HOME% 폴더 생성 끝"

echo "다운로드 시작"
if not exist "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" curl -o "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-4.0.0-Win-64bit.exe
if not exist "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" curl -o "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" https://maven.egovframe.go.kr/publist/HDD1/public/eGovCI-4.0.0_64bit.exe
echo "다운로드 끝"

echo "1. 개발자용 개발환경 64bit(Implementation Tool) Version 4.0.0 설치 시작"
cd "%EGOVFRAME_HOME%"
if not exist "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit" "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe"
echo "1. 개발자용 개발환경 64bit(Implementation Tool) Version 4.0.0 설치 끝"

echo "2. 서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0 설치 시작"
cd "%EGOVFRAME_HOME%"
if not exist "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit" "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe"
echo "2. 서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0 설치 끝"
