#!/bin/bash
DBHOST=192.168.6.40
DBUSER=yusuf
DBPASSWD='!NQAm4fytAg'
DBNAME=digiMigDB
DIFF=$(git diff --no-index --name-only --diff-filter=d testDb/ proDb/)
#| cut -d'/' -f2)
for A in $DIFF; do
	echo $DIFF
	if [ "$DIFF" != "" ]; then
	cat $A | mysql --init-command="SET SESSION FOREIGN_KEY_CHECKS=0;" -h ${DBHOST} -u ${DBUSER} -p${DBPASSWD} ${DBNAME}
fi
done


	#| sed 's/.sql//'

#mysql -h 192.168.6.40 -u backup -pzor1sifre -e 'DROP TABLE IF EXISTS $A | sed 's/.sql//''
#mysql -h 192.168.6.40 -u backup -p'zor1sifre' migdbimp < prodb/$A
#mysql -h 192.168.1.58 -u yusuf -p'!NQAm4fytAg' digiMigDB < prodb/testT.sql,statusService.sql
#cat $A.sql | mysql -u yusuf -p'!NQAm4fytAg' deneme
#cat prodb/*.sql | mysql -h 192.168.1.58 -u yusuf -p'!NQAm4fytAg' deneme

#for table in $DBNAME; do
#if [ "$?" == 0 ];then