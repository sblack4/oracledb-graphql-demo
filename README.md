# Oracle db with GraphQl :rocket:

GraphQL seems cool. Oracle database is cool. Let's combine them. 

## About 
These materials go along with the [Oracle Friday Stand-Up - Database Cloud Service](https://t.co/XcjjTWZ6Qu) 
Given by [@sblack4](https://sblack4.github.io/).
They are free to take and use but we provide no warranty per the 
[MIT LICENSE](LICENSE) but feel free to submit an issue or a pull request! 
I love solving problems and meeting other nerdy devs! :v:

## Getting Started 

- Connect to Oracle Database with [oracledb](https://github.com/oracle/node-oracledb) (a :fire: database)
- Build SQL Queries with [knex](https://github.com/tgriesser/knex) (think: ORM)
- Convert GraphQL and SQL with [join monster](https://github.com/stems/join-monster) (GraphQL <-> SQL translator)
- Serve the GraphQL with [koa](https://github.com/koajs/koa) (basically express-lite)
- Visualize cool GraphQL browser with [graphiql](https://github.com/graphql/graphiql) (execute graphql queries in the browser)


### tl:dr;
1. Watch the recording of [Oracle Friday Stand-Up - Database Cloud Service](https://t.co/XcjjTWZ6Qu)
1. Clone this Repo with `git clone https://github.com/unofficialoraclecloudhub/oracledb-graphql-demo.git`
1. Head to [unofficialoraclecloudhub.github.io/oracledb-graphql-demo/](https://unofficialoraclecloudhub.github.io/oracledb-graphql-demo/) and follow the directions in the [docs](https://unofficialoraclecloudhub.github.io/oracledb-graphql-demo/lesson-one)

### Test with :whale: Docker :whale:
If you have docker, you can run database and the server

Docker images for Oracle Databse 12c and node 6 are provided in the [Docker](Docker) folder

The easiest way to build them is 
```
cd Docker
docker-compose build
docker-compose up
```

### Whats actually in here? 
```sh
$ tree -d -I node_modules
.
├── Docker                  # all the files and binaries to build
│   ├── db                  # the docker images 
│   │   └── oracle-sql      # one with oracle database xe 12c
│   └── web                 # the other with node 6 & the oracle instantclient libraries
├── docs                    # the docs static site (Gatsby)
│   ├── content
│   │   ├── lessons
│   │   └── posts
│   ├── data
│   ├── public
│   │   ├── about
│   │   ├── categories
│   │   │   └── tech
│   │   ├── lesson-five
│   │   ├── lesson-four
│   │   ├── lesson-one
│   │   ├── lesson-six
│   │   ├── lesson-three
│   │   ├── lesson-two
│   │   ├── logos
│   │   ├── post-one
│   │   └── static
│   ├── src
│   │   ├── components
│   │   │   ├── About
│   │   │   ├── Disqus
│   │   │   ├── Layout
│   │   │   ├── PostListing
│   │   │   ├── PostTags
│   │   │   └── SocialLinks
│   │   ├── layouts
│   │   │   └── css
│   │   ├── pages
│   │   └── templates
│   └── static
│       └── logos
└── src                     # the graphql app
    ├── common
    ├── data                # you can do the same thing with sqlite 
    │   ├── demo-data-csv   # and maybe postgres (I have not tested)
    │   ├── postgress
    │   └── sqllite
    ├── schema-basic
    ├── schema-paginated
    └── test                

45 directories
```



## Acknowledgements :heart:
The open source community has been overly generous with software and documentation (as always)

Special thanks to 
- [oracle/node-oracledb](https://github.com/oracle/node-oracledb) (also known as just `oracledb`)
- [stems/join-monster-demo](https://github.com/stems/join-monster-demo)
- [MaksymBilenko/docker-oracle-12c](https://github.com/MaksymBilenko/docker-oracle-12c)
- [Github](https://github.com)
- [Gatsby](https://github.com/gatsbyjs/gatsby)
