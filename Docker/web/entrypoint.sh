#!/bin/env bash


set_yum_proxy() {
  echo "--- PROXY is: $proxy, setting proxy for YUM ---"

  echo proxy="$proxy" >> /etc/yum.conf
}

set_npm_proxy() {
  echo --- PROXY is: $proxy, setting proxy for NPM ---

  npm c --global set http_proxy $proxy
  npm c --global set https_proxy $proxy
}

install() {
  cd /opt

  echo --- INSTALLING PACKAGES THROUGH YUM --- 
  yum -y install tar* gcc* gcc-c++ unzip libaio* make curl dos2unix

  echo --- UNTARRING NODE --- 
  tar -xJf node-v6.11.1-linux-x64.tar.xz -C /usr/local --strip-components=1 --no-same-owner 

  yum clean all

  export PATH=/opt/node-v6.11.1-linux-x64/bin:$PATH
  export NODE_PATH=/opt/node-v6.11.1-linux-x64/lib/node_modules/

  echo --- MOVING TO SRC --- 
  cd /src

  [ "$proxy" != "" ] && set_npm_proxy
  
  echo --- NPM INSTALL --- 
  npm install oracledb
  npm install 
}

main() {
  
  declare proxy=${HTTP_PROXY:-""}
  echo proxy is "$proxy"
  [ "$proxy" != "" ] && set_yum_proxy 

  install

  echo --- NPM START ---
  npm start  
}

main "$@"