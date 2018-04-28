# By Steven Black 2018-04-26
#
# Fully patent-void and copyright free
# muchos gracias to 
# https://github.com/nodejs/docker-node/blob/master/6/Dockerfile
#

#
# DB instantclient is required for node-oracledb
# https://github.com/oracle/node-oracledb/blob/master/INSTALL.md
FROM store/oracle/database-instantclient:12.2.0.1

# SET THIS 
ARG SRC_PATH=./src

# get linux binaries 
# from https://nodejs.org/en/blog/release/v6.11.1/
RUN yum install -y wget 
RUN cd opt
# RUN wget https://nodejs.org/dist/v6.11.1/node-v6.11.1-linux-x64.tar.xz
COPY node* .

# install them
RUN yum -y install tar* gcc* gcc-c++ unzip libaio* make curl dos2unix \
    && tar -xJf node-v6.11.1-linux-x64.tar.xz -C /usr/local --strip-components=1 --no-same-owner \
    && yum clean all

ENV PATH=/opt/node-v6.11.1-linux-x64/bin:$PATH
ENV NODE_PATH=/opt/node-v6.11.1-linux-x64/lib/node_modules/

# copy our built webapp
COPY ${SRC_PATH} /src

# make sure files are unix
RUN find /src -type f -print0 | xargs -0 dos2unix

# where are my node_modules
WORKDIR src
RUN npm i oracledb
RUN npm install

# open the port 
EXPOSE 3000

# start it!
ENTRYPOINT [ "npm", "start"] 
