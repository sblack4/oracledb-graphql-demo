#!/bin/bash
# 
# Build two docker images
# nodejs w/ node-oracledb && oracledb 12c

#
# my bash is on wsl 
# unset/change these for your runtime
docker_exec=/mnt/c/Program\ Files/Docker/Docker/resources/bin/docker.exe
docker_compose=/mnt/c/Program\ Files/Docker/Docker/resources/bin/docker-compose.exe
SRC_PATH=../src

main() {
  echo --- BUILD STARTING ---
  echo USING THIS DOCKER 
  echo $docker_exec
  echo 

  isdbbuilt=$("$docker_exec" images | grep "sath89/oracle-12c ")
  isnodebuilt=$("$docker_exec" images | grep "store/oracle/database-instantclient:12.2.0.1")

  proxy=${HTTP_PROXY:-""}
  echo proxy $proxy

  [ -d src ] && rm -rf src

  [ -z "$isdbbuilt" ] && builddb $proxy

  [ -z "$isnodebuilt" ] && buildnode $proxy

  echo --- DONE BUILDING ---

  runcontainers

}

#
# DATABASE
# Thank you @MaksymBilenko
# https://github.com/MaksymBilenko/docker-oracle-12c

builddb() {

  echo --- BUILDING DATABASE DOCKER IMAGE ---
  echo
  {
    "$docker_exec" pull sath89/oracle-12c
  } || {
    "$docker_exec" build ./dbase --build-arg http_proxy="$1" --build-arg https_proxy="$1"
  }

  echo --- ORACLEDB DONE ---
}


#
# node-oracledb/koa/graphql
# thanks https://github.com/oracle/node-oracledb/blob/master/INSTALL.md
buildnode() {
  echo --- BUILDING NODE DOCKER IMAGE ---
  cp -r "$SRC_PATH" ./web

  if [ -z "$1" ]; then
    "$docker_exec" build ./web
  else 
    "$docker_exec" build ./web --build-arg http_proxy="$1" --build-arg https_proxy="$1"
  fi 

  echo --- NODE DONE ---
}

# 
# run both containers 
runcontainers() {
  echo -- RUNNING BOTH ---
  "$docker_compose" up

  echo --- DOCKER-COMPOSE DONE ---
}

main "$@"