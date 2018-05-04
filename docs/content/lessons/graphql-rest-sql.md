---
title: "GraphQL REST & SQL"
---


#### Why OracleDB & GraphQL together?

Before we can answer this, let's compare the specifications we've introduced today: GraphQL, REST, & SQL


### GraphQL vs REST 
So **HOW** does GraphQL present these putative benefits? Let's investigate a few...

#### Network Traffic
Compare the below two diagrams. They should give some visual intuition for why a GraphQL API is faster and involves less network
traffic than the traditional REST API

The GraphQL API allows all of the disparate data to be returned *with a single API call*. The traditional REST API specification 
calls for a different endpoint for each resource!
Imagine you want to make a page that shows your friends (or followers) list. 
```bash
# our example domain name
# is mysillysevername.com
# curl is a common command line utility for HTTP operations
# like GET, PUT, DELETE which form the foundation of REST

curl -X GET mysillyservername.com/users/<id>             # get user information
curl -X GET mysillyservername.com/users/<id>/posts       # get user posts
curl -X GET mysillyservername.com/users/<id>/followers   # get user posts

```
That's three requests, and if our REST API doesn't offer sparse fieldsets (where you specify the fields you want in the url) then we're underfetching and overfetching. 

#### "Overfetching" or "Underfetching"

With our REST API (^above) we *don't get enough data* in one request so we have to make three. In each of those three our server returns *too much data* because the server just returns all the resource data 
for that REST endpoint! 

It sure would be nice if we had a query language that could give us *just the right amount of data*, be
*of similar what we're using* (largely javascript), and versiile enough to alloq *super simple nested queries*
 
**Enter GraphQL**
```graphql
query {
  users {
    id
    following{
      fullName
    }
  }
}
```

The REST API specification is closely tied to the HTTP verbs (GET, PUT, etc) and the structure of the data. 
That can lead to unweildly APIs where your REST Resource (an API endpoint for a particular thing in REST parlance) can 
only proivde 

Instead of returning *too much data* or *too little data* you can recieve *just the data you need*!

[[[6](https://www.w3.org/2001/sw/wiki/REST)],[[7](https://www.oreilly.com/learning/building-a-simple-graphql-server-with-neo4j)]]

### GraphQL vs SQL 
Both are Query Languages - So what's the difference? 

**SQL** was designed to work with *Relational Databases*, which are databases where everything is stored in columns and rows 
(this is oversimplified definition but bear with me). It's syntax is great for manipulating flat tables. 

**GraphQL** was designed with web developers in mind - developers who typically work with 
*Javascript Object Notation (JSON)*. The syntax of GraphQL allows for nested objects AND abstractions 
that aren't tied to a particular data structure. SQL allows for similar functionality with features like view and stored 
procedures BUT GraphQL has provided this as a first-class citizen

Just as there is no "best" way to store data there is no "best" language to define & manipulate it. 

#### Use Cases 

### Integrating APIs

Have a lot of APIs? 

### Rapid Application Development 
