if not exist C:\EGOVFRAME\Downloads mkdir -p C:\EGOVFRAME\Downloads

echo "1. 개발자용 개발환경 64bit(Implementation Tool) Version 4.0.0"

curl -o C:\EGOVFRAME\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe https://maven.egovframe.go.kr/publist/HDD1/public/eGovFrameDev-4.0.0-Win-64bit.exe

cd C:\EGOVFRAME
C:\EGOVFRAME\Downloads\eGovFrameDev-4.0.0-Win-64bit.exe

echo "2. 서버용 개발환경(Development Tool - Unix,Linux,Win64bit) 4.0.0"

curl -o C:\EGOVFRAME\Downloads\eGovCI-4.0.0_64bit.exe https://maven.egovframe.go.kr/publist/HDD1/public/eGovCI-4.0.0_64bit.exe

cd C:\EGOVFRAME
C:\EGOVFRAME\Downloads\eGovCI-4.0.0_64bit.exe
