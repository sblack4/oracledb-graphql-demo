# By Steven Black 2018-04-26
#
# Fully patent-void and copyright free
#

FROM store/oracle/database-instantclient:12.2.0.1

# get linux binaries 
# from https://nodejs.org/en/blog/release/v6.11.1/
RUN yum install -y wget && \
    cd opt && \
    wget https://nodejs.org/dist/v6.11.1/node-v6.11.1-linux-x64.tar.xz

# install them
RUN yum -y install tar* gcc* gcc-c++ unzip libaio* make curl \
    && yum clean all
    ENV PATH=/opt/node-v6.11.1-linux-x64/bin:$PATH
    ENV NODE_PATH=/opt/node-v6.11.1-linux-x64/lib/node_modules/

# make sure the big stuff gets installed first
# in case of error
RUN npm install -g oracledb

# copy our built webapp
COPY ../../src .

# open the port 
EXPOSE 8080

# where are my node_modules
RUN npm install

# where is that package.json
RUN cd src

# start it!
CMD ["npm", "start"]

