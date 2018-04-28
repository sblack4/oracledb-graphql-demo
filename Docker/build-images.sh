#!/bin/bash
# 
# Build two docker images
# nodejs w/ node-oracledb && oracledb 12c
#

SRC_PATH=../src

main() {
  echo --- BUILD STARTING ---
  echo USING THIS DOCKER 
  echo $docker_exec
  echo 

  proxy=${HTTP_PROXY:-""}
  echo PROXY is: $proxy

  isdbbuilt=$(docker images | grep "oracledb-12c")
  [ -z "$isdbbuilt" ] && builddb $proxy

  isnodebuilt=$(docker images | grep "node-oracledb")
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
    docker pull sath89/oracle-12c
  } || {
    docker build ./dbase --build-arg http_proxy="$1" --build-arg https_proxy="$1"
  }

  echo --- ORACLEDB DONE ---
}


#
# node-oracledb/koa/graphql
# thanks https://github.com/oracle/node-oracledb/blob/master/INSTALL.md
buildnode() {
  echo --- BUILDING NODE DOCKER IMAGE ---

  # to copy src dir
  # docker doesn't support symlinks!
  echo copying src to docker context
  [ -d src ] && rm -rf src
  cp -r "$SRC_PATH" ./web
  echo $(ls)

  if [ -z "$1" ]; then
    docker build ./web
  else 
    docker build ./web --build-arg http_proxy="$1" --build-arg https_proxy="$1"
  fi 

  echo --- NODE DONE ---
}

# 
# run both containers 
runcontainers() {
  echo -- RUNNING BOTH ---
  docker-compose up

  echo --- DOCKER-COMPOSE DONE ---
}

main "$@"