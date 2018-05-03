---
title: "Running with Docker"
--- 


<a href="https://www.docker.com/" target="_blank">
  <img alt="graphql logo" src="docker-logo.png" width="80%" style="display:block;margin:auto;"/>
</a>

### tl;dr

1. Get [Docker Community Edtion](https://www.docker.com/community-edition), it's free and awesome  ❤️🐳 
1. Get [Docker Compose](https://docs.docker.com/compose/install/) which is an awesome tool to manage Docker containers, written in Python
1. Open a terminal 💻  and navigate to the [Docker](/https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo/tree/master/Docker) folder
1. Run the following commands. Building the images might take a minute

```docker
docker-compose build
docker-compose up
```

**Oracle Employees on VPN and others behind HTTP Proxies  
Set the HTTP_PROXY `env` variable & use the bash script to build your containers

```bash
bash build-images.sh
```

You should see something like the below...

##### `docker-compose build`
```bash
gense@LAPTOP-IK26DBRF ~/Git/oracledb-graphql-demo/Docker (master)
λ docker-compose build
db uses an image, skipping
Building web
Step 1/9 : FROM store/oracle/database-instantclient:12.2.0.1
 ---> 916033cf06bf
Step 2/9 : RUN yum install -y wget
 ---> Using cache
 ---> 265cd36f6b66
Step 3/9 : RUN cd opt
 ---> Using cache
 ---> 9546c4cab572
Step 4/9 : COPY node* .
 ---> Using cache
 ---> 7fc8bd6ebd00
Step 5/9 : RUN yum -y install tar* gcc* gcc-c++ unzip libaio* make curl dos2unix     && tar -xJf node-v6.11.1-linux-x64.tar.xz -C /usr
/local --strip-components=1 --no-same-owner     && yum clean all
 ---> Using cache
 ---> 68ab58615e36
Step 6/9 : ENV PATH=/opt/node-v6.11.1-linux-x64/bin:$PATH
 ---> Using cache
 ---> 2b69553b2c97
Step 7/9 : ENV NODE_PATH=/opt/node-v6.11.1-linux-x64/lib/node_modules/
 ---> Using cache
 ---> 9a8f739c0e0f
Step 8/9 : ADD entrypoint.sh /entrypoint.sh
 ---> Using cache
 ---> 34c14bc52070
Step 9/9 : EXPOSE 3000
 ---> Using cache
 ---> 71106b5fa1a1
Successfully built 71106b5fa1a1
Successfully tagged sblack4/node-oracledb:latest
```


##### `docker-compose up`
```bash
gense@LAPTOP-IK26DBRF ~/Git/oracledb-graphql-demo/Docker (master)
λ docker-compose up
Recreating docker_db_1 ... done
Recreating docker_web_1 ... done
Attaching to docker_db_1, docker_web_1
db_1   | Database not initialized. Initializing database.
db_1   | Starting tnslsnr
web_1  | --- CD SRC ---
web_1  | --- NPM INSTALL ---
db_1   | Copying database files
db_1   | 1% complete
db_1   | 3% complete
...
...
...
Successfully built 47e6d21c28b4
Successfully tagged sblack4/node-oracledb:latest
Image for service web was built because it did not already exist. To rebuild this image you must use `docker-compose build` or `docker-compose up --build`.
docker_db_1 is up-to-date
Creating docker_web_1 ... done
```

Running `docker ps` should show us two containers running 
```bash

```


### After you've got it running
You're ready! 

Head to [localhost:3000/graphql](http://localhost:3000/graphql) to explore compare SQL and GraqhQL!

![]()

Connect [SQL Developer](http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html) to 
the Oracle Database using the below credentials. The password for `sys` and `graphql` is `oracle`

![](graphql-sql-developer.PNG)

