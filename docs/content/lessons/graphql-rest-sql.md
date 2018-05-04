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

<a href="https://www.howtographql.com/basics/1-graphql-is-the-better-rest/" target="_blank">
  <img src="graphql-vs-rest.png" width="98%" />
</a>

#### "Overfetching" or "Underfetching"

The REST API specification is closely tied to the HTTP verbs (GET, PUT, etc) and the structure of the data. 
That can lead to unweildly APIs where your REST Resource (an API endpoint for a particular thing in REST parlance) can 
only proivde 

Instead of returning *too much data* or *too little data* you can recieve *just the data you need*!

[[[6](https://www.w3.org/2001/sw/wiki/REST)], [[7](https://www.w3.org/2001/sw/wiki/REST)]]

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


### Rapid Application Development 


