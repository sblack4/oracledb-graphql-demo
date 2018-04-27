# This file owes a ton of thanks to the good people of the internet
# Thanks to you I have been able to go from knowing nothing to
# still not knowing anything but I finally have an Oracle DB docker image
# <3
# https://github.com/MaksymBilenko/docker-oracle-12c 
# https://github.com/tgriesser/knex/blob/master/scripts/oracle-tests-Dockerfile
# 

## connect
# hostname: localhost
# port: 1521
# sid: xe
# service name: xe
# username: system
# password: oracle

## sqlplus
# sqlplus system/oracle@//localhost:1521/xe

## passwd for sys, system
# oracle

## Connect to Oracle Application Express web management console with following settings:
# http://localhost:8080/apex
# workspace: INTERNAL
# user: ADMIN
# password: 0Racle$

## Connect to Oracle Enterprise Management console with following settings:
# http://localhost:8080/em
# user: sys
# password: oracle
# connect as sysdba: true
# By Default web management console is enabled. To disable add env variable:

# docker run -d -e WEB_CONSOLE=false -p 1521:1521 -v /my/oracle/data:/u01/app/oracle sath89/oracle-12c

FROM sath89/oracle-12c