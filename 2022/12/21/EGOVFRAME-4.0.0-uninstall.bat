rem setenv.bat

set EGOVFRAME_HOME=C:\EGOVFRAME

if exist "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit" rmdir /s /q "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit"

if exist "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit" rmdir /s /q "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit"

if exist "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" del /f "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe"

if exist "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" del /f "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe"

echo "Á¦°Å ³¡"
