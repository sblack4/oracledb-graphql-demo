#!/bin/bash
# 
# Build two docker images
# nodejs w/ node-oracledb && oracledb 12c
#

SRC_PATH=../src

clean_up() {
  docker container prune -f
  docker volume prune -f
  docker image prune -f 
}

#
# DATABASE
# Thank you @MaksymBilenko
# https://github.com/MaksymBilenko/docker-oracle-12c
builddb() {

  echo --- BUILDING DATABASE DOCKER IMAGE ---

  {
    if [ -z "$1" ]; then
      docker build ./db
    else 
      docker build ./db --build-arg http_proxy="$1" --build-arg https_proxy="$1"
    fi 
  } || {
    echo --- db Docker Image FAILED ---
    echo --- cleaning up... ---

    clean_up
    docker rmi sath89/oracle-12c
    exit 1
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
  # [ -d src ] && rm -rf src
  # cp -r "$SRC_PATH" ./web
  echo $(ls)

  {
    if [ -z "$1" ]; then
      docker build ./web
    else 
      docker build ./web --build-arg HTTP_PROXY="$1" --build-arg HTTPS_PROXY="$1"
    fi 
  } || {
    echo --- web Docker Image FAILED ---
    echo --- cleaning up... ---

    clean_up
    docker rmi sblack4/node-oracledb
    exit 1
  }

  echo --- NODE DONE ---
}

# 
# run both containers 
runcontainers() {

  echo -- RUNNING BOTH WITH docker-compose  ---

  { 
    echo run "docker-compose up -d"
    docker-compose up
  } || {
    echo --- docker-compose up FAILED ---
    echo --- cleaning up... ---

    clean_up
    exit 1
  }

  echo --- DOCKER-COMPOSE DONE ---
}

main() {
  echo --- BUILD STARTING ---
  echo USING THIS DOCKER 
  echo $docker_exec
  echo 
  echo This script basically just calls docker-compose 
  echo if your scripts are not built

  proxy=${HTTP_PROXY:-""}
  echo PROXY is: $proxy

  isdbbuilt=$(docker images | grep "oracledb-12c")
  [ -z "$isdbbuilt" ] && builddb $proxy

  isnodebuilt=$(docker images | grep "node-oracledb")
  [ -z "$isnodebuilt" ] && buildnode $proxy

  echo --- DONE BUILDING ---

  runcontainers $proxy
}

main "$@"
