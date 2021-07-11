#!/bin/bash

date=`date +%d-%m-%Y_%H:%M:%S`
filename='romadb_'$date
statusGood=`systemctl status mysql | grep running` 
statusBad=`systemctl status mysql | grep k@c@py_pid@r@sy`
checker=0

function dump() {
 mysqldump -u roma -pQwerty123 romadb --host=127.0.0.1 > /home/roma/mysql_dump/$filename.sql
}

if [ "$statusGood" != "$statusBad" ];
then
checker=1
echo 'MySQL is running, backup is starting'
else
echo 'Service not found'
fi

if [ "$checker" != "0" ];
then
echo '+'
dump >/dev/null 2>&1
else
echo '-'
fi
