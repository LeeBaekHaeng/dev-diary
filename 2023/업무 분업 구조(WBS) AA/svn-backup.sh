DATETIME=$(date +%Y/%m/%d/%H/%M/%S)

mkdir -p /GOD/backup/svn/$DATETIME

svnadmin dump /var/svn/test > /GOD/backup/svn/$DATETIME/test.dump
