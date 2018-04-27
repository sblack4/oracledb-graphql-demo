# Join Monster with Oracle DB

GraphQL seems cool. Oracle database is cool. Let's combine them. 

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

*Original README.md Below*
---- 
### A Live Demo of [Join Monster](https://github.com/stems/join-monster)

[https://join-monster.herokuapp.com/graphql](https://join-monster.herokuapp.com/graphql)


This is an example of setting up an API using [Join Monster](https://github.com/stems/join-monster). Two Schemas are shown, one with and one without Relay compliance. Example data are provided as SQLite files in the `data` directory. A [custom version of GraphiQL](https://github.com/acarl005/graphsiql) is used to display the SQL being generated.


### To run locally

Clone the repo and `cd` into it. Then run
```shell
$ npm install
$ npm start
```
