#!/bin/bash

CURRENT_PID=$(pgrep -fl apache-tomcat-8.5.65-01 | grep java | awk '{print $1}')
echo "현재 구동 중인 톰캣 pid 확인: $CURRENT_PID"

if [ -z "$CURRENT_PID" ]; then
        echo "현재 구동 중인 톰캣이 없으므로 종료하지 않습니다."
else
        echo "톰캣 $CURRENT_PID 종료"
fi
