# muchos gracias to 
# https://github.com/nodejs/docker-node/blob/master/6/Dockerfile
# for the node &
# https://github.com/oracle/node-oracledb/blob/master/INSTALL.md
# for the DB instantclient is required for node-oracledb
FROM store/oracle/database-instantclient:12.2.0.1

##########
# USE THE DOCKER-COMPOSE FILE 
# otherwise you will have to copy over ../../src
# and then you can mount it/copy it to the image
# dockerfiles can only copy things in the "docker scope" 
# which is the local folder and any subdirectories 
# if so then from here:
#   cp ../../src .
# then uncomment the lines below preceeded by a line with # *

# get linux binaries 
# from https://nodejs.org/en/blog/release/v6.11.1/
# RUN wget https://nodejs.org/dist/v6.11.1/node-v6.11.1-linux-x64.tar.xz
COPY node* /opt

# everything else is done in this bash script
ADD entrypoint.sh /entrypoint.sh

ENV HTTP_PROXY=http://www-proxy.us.oracle.com:80

# # * copy our built webapp
# VOLUME ./src /src

# make sure files are unix
# (only uncomment if you are using windows)
# RUN find /src -type f -print0 | xargs -0 dos2unix

# # where are my node_modules
# # ***
# WORKDIR /src
# RUN cd /src && npm i oracledb
# RUN cd /src && npm install

# open the port 
EXPOSE 3000

# # * start it!
ENTRYPOINT [ "bash", "/entrypoint.sh"] 
