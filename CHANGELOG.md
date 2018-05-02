# changelog 


## 4/30/18 status: failing 

Currently the graphiql UI appears and works iwth the sqlite database but not the oracle database. 

the node-oracledb connection works
the knex-oracledb integration works 
joinmonster?
koajs? 
graphiql?



## 5/1/2018 IT WORKS

after renaming the column to include the doube-quotes `"` it works!
entering this in sqldeveloper

```sql
ALTER SESSION SET CURRENT_SCHEMA = graphql;
SELECT
  "id"
FROM accounts "users";
```

returns a list of IDs, as does the below query in the graphisql broswer!

```graphql
{
 users {
  id 
 }
}
```

## 5/1/2018 - change grphql schema to be oracle-compatable -.-


### TODO
- write lessons in our gatsby docs
  - find someone who is willing to listen to me pontificate about computer stuff
  - dry run the lessons  
- rename all of the fields in the DB
  - apply those names to new back-up scripts
- write some simple tests
- get the nodejs working in the docker image
- double-check the docker images

