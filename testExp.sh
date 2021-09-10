#!/bin/bash
DBHOST=192.168.6.40
DBUSER=yusuf
DBPASSWD='!NQAm4fytAg' 
DBNAME=digidb
#CPPATH=/root/mysqlMig/testDb
GIT_MYSQL=/root/mysqlMig/testDb
for T in `mysql -h ${DBHOST} -u ${DBUSER} -p${DBPASSWD} -N -B -e 'SHOW TABLES FROM digidb'`;
do
   if [ "$T" != "" ]
  then
    echo "Backing up $T"
    mysqldump --skip-comments --compact --add-drop-table -h ${DBHOST} -u ${DBUSER} -p${DBPASSWD} ${DBNAME} $T > $GIT_MYSQL/$T.sql
fi
done
#mysql -h 192.168.6.40 -u yusuf -p'!NQAm4fytAg' -N -B -e 'show tables from deneme'