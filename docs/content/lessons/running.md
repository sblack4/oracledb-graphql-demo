---
title: "Running the Demo"
---

🏃 lucky you, you can run this demo any way you'd like! 

<div>
    <img src="running.gif" alt="my son running after a duck" width="30%" style="display:block;margin:auto;" />
</div>

#### Directory 📂
What's in this GitHub repo? 
```bash
$ tree -d -I node_modules
.
├── Docker                  # * all the files and binaries to build
│   ├── db                  # Docker image for Oracle DB 
│   │   └── oracle-sql      
│   └── web                 # Docker image for Node.js 6 + Oracle Instant Client
├── docs                    # ** You are here!
│   ├── content
│   │   ├── lessons
│   │   └── posts
│   ├── data
...  
└── src                     # ** Our GraphQL App
    ├── common
    ├── data                # data to try the same thing with other databases 
    │   ├── demo-data-csv   # (I've only tested this with Oracle)
    │   ├── postgress
    │   └── sqllite
    ├── schema-basic        # Basic GraphQL Schema Definition
    ├── schema-paginated    # GraphQL-Relay Schema Definition
    └── test                

45 directories
```
- \* Head here to get detail on how I set up my database (everything is spelled out in the docker files)
- ** You are here! congratulations! 
- *** All of the fun GraphQL Stuff

#### Docker 🐳
See [running with docker](/running-docker)

I've provided the [Docker](https://www.docker.com/) images you'll need to run this demo 😊 in the [oracledb-graphql-demo/Docker](https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo/tree/master/Docker) page (* Above)
of our GitHub repo. More information can be found on the [running in docker](/running-docker) page


#### Cloud ☁️
See [running in the cloud](/running-cloud)

Both of our services can also be run in the cloud! If you're interested check out the 
[running in the cloud](/running-cloud) page. 
The cloud simplifies everything; you don't need to install anything, everything is patched and up-to-date, and the whole workshop can be done from your browser! 


