DATETIME=$(date +%Y/%m/%d/%H/%M/%S)

mkdir -p /GOD/backup/svn/$DATETIME

#svnadmin dump /var/svn/test > /GOD/backup/svn/$DATETIME/test.dump

svnadmin dump /var/svn/test > /GOD/backup/svn/$DATETIME/test.dump && cd /GOD/backup/svn/$DATETIME && tar -czvf test.dump.tar.gz test.dump && rm -rf test.dump
