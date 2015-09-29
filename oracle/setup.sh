#!/bin/bash

# /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh 

ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_HOME
echo $ORACLE_HOME

PATH=$ORACLE_HOME/bin:$PATH
export PATH
echo $PATH

exit | $ORACLE_HOME/bin/sqlplus -L system/oracle@localhost @/vagrant/oracle/setup.sql
