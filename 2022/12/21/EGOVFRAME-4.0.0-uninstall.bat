echo "�������� ǥ�������ӿ�ũ 4.0.0 ���� ����"

if exist "EGOVFRAME-4.0.0-setenv.bat" call "EGOVFRAME-4.0.0-setenv.bat"

echo "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit ���� ����"
if exist "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit" rmdir /s /q "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit"
echo "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit ���� ��"

echo "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit ���� ����"
if exist "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit" rmdir /s /q "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit"
echo "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit ���� ��"

echo "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe ���� ����"
if exist "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" del /f "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe"
echo "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe ���� ��"

echo "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe ���� ����"
if exist "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" del /f "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe"
echo "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe ���� ��"

echo "�������� ǥ�������ӿ�ũ 4.0.0 ���� ��"
