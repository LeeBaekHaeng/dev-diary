echo "전자정부 표준프레임워크 4.0.0 제거 시작"

if exist "EGOVFRAME-4.0.0-setenv.bat" call "EGOVFRAME-4.0.0-setenv.bat"

echo "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit 제거 시작"
if exist "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit" rmdir /s /q "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit"
echo "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit 제거 끝"

echo "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit 제거 시작"
if exist "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit" rmdir /s /q "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit"
echo "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit 제거 끝"

echo "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe 제거 시작"
if exist "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" del /f "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe"
echo "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe 제거 끝"

echo "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe 제거 시작"
if exist "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" del /f "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe"
echo "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe 제거 끝"

echo "전자정부 표준프레임워크 4.0.0 제거 끝"
