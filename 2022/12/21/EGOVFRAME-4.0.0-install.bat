if exist "%CATALINA_HOME%\bin\setenv.bat" call "EGOVFRAME-4.0.0-setenv.bat"

echo "%EGOVFRAME_HOME% ���� ���� ����"
if not exist "%EGOVFRAME_HOME%\Downloads" mkdir -p "%EGOVFRAME_HOME%\Downloads"
echo "%EGOVFRAME_HOME% ���� ���� ��"

echo "�ٿ�ε� ����"
if not exist "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" curl -o "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe" https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-4.0.0-Win-64bit.exe
if not exist "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" curl -o "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe" https://maven.egovframe.go.kr/publist/HDD1/public/eGovCI-4.0.0_64bit.exe
echo "�ٿ�ε� ��"

echo "1. �����ڿ� ����ȯ�� 64bit(Implementation Tool) Version 4.0.0 ��ġ ����"
cd "%EGOVFRAME_HOME%"
if not exist "%EGOVFRAME_HOME%\eGovFrameDev-4.0.0-64bit" "%EGOVFRAME_HOME%\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe"
echo "1. �����ڿ� ����ȯ�� 64bit(Implementation Tool) Version 4.0.0 ��ġ ��"

echo "2. ������ ����ȯ��(Development Tool - Unix,Linux,Win64bit) 4.0.0 ��ġ ����"
cd "%EGOVFRAME_HOME%"
if not exist "%EGOVFRAME_HOME%\eGovCI-4.0.0_64bit" "%EGOVFRAME_HOME%\Downloads\eGovCI-4.0.0_64bit.exe"
echo "2. ������ ����ȯ��(Development Tool - Unix,Linux,Win64bit) 4.0.0 ��ġ ��"
