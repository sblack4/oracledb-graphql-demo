#!/bin/bash


docker_exec=/mnt/c/Program\ Files/Docker/Docker/resources/bin/docker.exe

#
# Build two docker images
# nodejs w/ node-oracledb && oracledb 12c

echo --- BUILD STARTING ---

echo USING THIS DOCKER 
echo $docker_exec
echo 

#
# DATABASE
# Thank you @MaksymBilenko
# https://github.com/MaksymBilenko/docker-oracle-12c

echo --- BUILDING DATABASE DOCKER IMAGE ---
"$docker_exec" 


#
# node-oracledb/koa/graphql
# thanks https://github.com/oracle/node-oracledb/blob/master/INSTALL.md

echo --- BUILDING NODE DOCKER IMAGE ---

