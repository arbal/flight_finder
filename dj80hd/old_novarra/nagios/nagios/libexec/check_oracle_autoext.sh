#!/bin/ksh

if [[ -z $1 ]]
then
   echo "usage: check_oracle_status <database name> <user> <password>"
   exit 1
fi

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/8.1.7
export LD_ASSUME_KERNEL=2.2.5
export NLS_LANG=AMERICAN_AMERICA.UTF8
export ORA_NLS33=$ORACLE_HOME/ocommon/nls/admin/data
export PATH=$PATH:/usr/local/bin:/bin:$ORACLE_HOME/bin

database="$1"
username="$2"
password="$3"

errormessage=ERROR
errorlog=/tmp/$database.auxerr.log
spoollog=/tmp/$database.auxspl.log
outlog=/tmp/$database.auxout.log

$ORACLE_HOME/bin/sqlplus $username/$password@$database>$errorlog<<EOF
set heading off
set pagesize 0
set feedback on
set linesize 100
set verify off
set echo off
spool $spoollog
select file_name from dba_data_files where autoextensible = 'YES';
spool off
exit;
EOF

grep $errormessage $errorlog 1>/dev/null 2>&1

if [[ $? -eq 0 ]]
then
   echo "ERROR logging into database $db"
   rm $errorlog 2>/dev/null
   rm $spoollog 2>/dev/null
   rm $outlog 2>/dev/null
   exit 2
fi

egrep -v "and|^SQL>|file|name|-----|from|select |order by|where" $spoollog >> $outlog

grep "no rows selected" $outlog 1>/dev/null 2>&1

if [[ $? -eq 0 ]]
then
   echo "No files in autoextend mode"
   rm $errorlog 2>/dev/null
   rm $spoollog 2>/dev/null
   rm $outlog 2>/dev/null
      exit 0
else
   echo "Some files in autoextend mode"
   rm $errorlog 2>/dev/null
   rm $spoollog 2>/dev/null
   rm $outlog 2>/dev/null
   exit 1
fi