# Oracle db with GraphQl 

GraphQL seems cool. Oracle database is cool. Let's combine them. 

## About 
These materials go along with the [Oracle Friday Stand-Up - Database Cloud Service](https://t.co/XcjjTWZ6Qu) 
Given by [@sblack4](https://sblack4.github.io/) for @Oracle

## Get Started 
1. Watch the recording of [Oracle Friday Stand-Up - Database Cloud Service](https://t.co/XcjjTWZ6Qu)
1. Clone this Repo with `git clone https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo.git`
1. Head to [unofficialoraclecloudhub.github.io/oracledb-graphql-demo/](https://unofficialoraclecloudhub.github.io/oracledb-graphql-demo/) 
1. Fire up your text editor and get playing!

## Test with Docker
If you have docker, you can run database and the server

Docker images for Oracle Databse 12c and node 6 are provided

TODO: make it so you can go `docker-compose up`

## Connect a GraphQL Server to Oracle Database 
Start with the database running in docker and node locally: 
- Connect to Oracle Database with [oracledb](https://github.com/oracle/node-oracledb)
- Build SQL Queries with [knex](https://github.com/tgriesser/knex)
- Convert GraphQL and SQL with [join monster](https://github.com/stems/join-monster)
- Serve the GraphQL with [koa](https://github.com/koajs/koa)
- Visualize cool GraphQL browser with [graphiql](https://github.com/graphql/graphiql)


## Acknowledgements 
The open source community has been overly generous with software and documentation (as always)

Special thanks to 
- [oracle/node-oracledb](https://github.com/oracle/node-oracledb) (also known as just `oracledb`)
- [stems/join-monster-demo](https://github.com/stems/join-monster-demo)
- [MaksymBilenko/docker-oracle-12c](https://github.com/MaksymBilenko/docker-oracle-12c)
- [Github](https://github.com)
