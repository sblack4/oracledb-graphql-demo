---
title: "About GraphQL"
---

<a href="https://graphql.org/" target="_blank">
<img alt="graphql logo" src="graphql-logo.png" width="80%" style="display:block;margin:auto;"/>
</a>

<blockquote style="font-size:2em;">
<em style="padding-left:2em;">  "Ask not what you can do for your APIs. Ask what your APIs can do for you." 
</em>
</blockquote>

1. What is GraphQL
1. GraphQL Schemas and Types
1. Queries 
1. Variables and Aliases and Fragments, Oh My!
1. Mutations
1. Introspection


#### What GraphQL *is*
- An API Specification (like `REST`)
- A Query Language (like `SQL`)
- A tool to solve problems
- New (released in 2015) [[5](https://www.howtographql.com/basics/0-introduction/)]

#### What GraphQL *isn't* 
- A piece of software 
- Blockchain
- AI 

### The GraphQL Schema for our app
If you're used to RDBMS's this schema will look unusual, albeit the schema makes sense! 
The corresponding definition is [given as defined with SQL](about-oracle-db#our-apps-rdbs-schema)

GraphQL's succint syntax allows for a level of expressiveness that language designers strive for and 
programmers love (which might be one reason it's catching on so quickly). The format is purposely very
similar to [JSON](https://en.wikipedia.org/wiki/JSON) which is the *lingua franca* of web APIs. 

<div style="text-align:center;margin-bottom:-1em;">

  <b>Our Schema as the GraphsiQL App sees it</b>
</div>

```graphql
type User {
    id: ID! @unique
    email: String!
    idEncoded: String!
    fullName: String!
    fullNameAnotherWay: String!
    posts: [Post!]!
    comments: [Comment!]!
    following: [User!]!
    favNums: [Int!]!
    numLegs: Int!
    luckyNumber: Int!
    writtenMaterial: [AuthoredInterface!]!
}

type Post {
    id: ID! @unique
    body: String!
    author: User
    authorId: Int!
    comments: [Comment!]!
    archived: Boolean!
    createdAt: String!
}

type Comment {
    id: ID! @unique
    body: String! 
    likers: [User!]!
    post: Post!
    author: User!
    authorId: Int!
    archived: Boolean!
    postId: Int!
    createdAt: String!
}

type AuthoredInterface {
    id: ID! @unique
    body: String!
    authorId: Int!
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">^ Beautiful syntax highlighting courtesy of </em>
  <a href="http://prismjs.com/">prismjs</a>
</blockquote>

### GraphQL Query Language

If you haven't yet, start your app and head to [localhost:3000/graphql](http://localhost:3000/graphql) to explore compare SQL and GraqhQL!

In case you can't spin up our demo the community has provided similar running examples online! 
There is an almost identical app running at [https://join-monster.herokuapp.com/graphql](https://join-monster.herokuapp.com/graphql) which 
doesn't use OracleDB as a backend but still showcases the same schema and modified GraphsiQL interface. [[5](https://github.com/stems/join-monster-demo)]

<img src="graphisql-oracle-app.png" width="100%" style="display:block;margin:auto;"/>
<blockquote style="font-size:1.8em;text-align:center;">
  <em style="padding-left:1.5em;">^ <a href="https://github.com/acarl005/graphsiql">GraphsiQL</a> an in-browser GraphQL IDE</em>
</blockquote>

GraphQL allows you to do all the operations routinely used by traditional REST APIs

#### Queries 
Just like a SQL query you can do selections. 

Let's `SELECT` full name (generating it two different ways) and the body of any written material a user has written  
`FROM` the users table `WHERE` the users id is 1
```graphql
{
 user(id: 1) {
  fullName
  fullNameAnotherWay
  writtenMaterial{
    body
  }
 }
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">^ GraphQL Query</em>
</blockquote>

And GraphQL returns JSON!

```json
{
  "data": {
    "user": {
      "fullName": "Myrtie Hickle",
      "fullNameAnotherWay": "Myrtie Hickle",
      "writtenMaterial": [
        {
          "body": "Dolores ea corrupti est qui repellat. Iste non quaerat autem earum consequatur ea id voluptatum."
        },
        ...
        {
          "body": "Use the online SCSI firewall, then you can generate the optical firewall!"
        }
      ]
    }
  }
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">^ GraphQL API Response</em>
</blockquote>

#### Variables and Aliases and Fragments, Oh My!
Let's combine them in a pretty complex little query... we want all the information as above for two users, but 
Variables are self explanatory and aliases are just as the name suggests.the JSON key for each user should be different (that's the alias part).
Take a quick look at the below photo and notice the "QUERY VARIABLES" tray. This may be collapsed on your GraphsiQL browser. 

<img src="graphsiql-query-variables.png" width="100%" style="display:block;margin:auto;"/>
<blockquote style="font-size:1.5em;text-align:center;">
  <em style="padding-left:2em;">^ GraphsiQL with QUERY VARIABLES tray expanded</em>
</blockquote>

And the Query as text for your COPY+PASTE'ing convenience 

```graphql
fragment foobar on User {
  fullName
  fullNameAnotherWay
  writtenMaterial{
    body
  }
}
query MyQuery($foo: Int!, $bar: Int!) {
  numberOne: user(id: $foo) {
    ...foobar
  }
  numberTwo: user(id: $bar) {
    ...foobar
  }
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">Query</em>
</blockquote>

Query Variables definition 

```json
{
  "foo": 1,
  "bar": 2
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">Variables</em>
</blockquote>

Wow! the Result. Aliases and Variables are indispensable in SQL. I could get use to this "Fragments" too!  
Notice that the keys for our users changed - now they are "numberOne" and "numberTwo"
```json
{
  "data": {
    "numberOne": {
      "fullName": "Myrtie Hickle",
      "fullNameAnotherWay": "Myrtie Hickle",
      "writtenMaterial": [
        {
          "body": "Dolores ea corrupti est qui repellat. Iste non quaerat autem earum consequatur ea id voluptatum."
        },
        ...
        {
          "body": "Use the online SCSI firewall, then you can generate the optical firewall!"
        }
      ]
    },
    "numberTwo": {
      "fullName": "Yasmine Rolfson",
      "fullNameAnotherWay": "Yasmine Rolfson",
      "writtenMaterial": [
        {
          "body": "The HDD alarm is down, index the cross-platform card so we can compress the RAM card!"
        },
        ...
        {
          "body": "If we transmit the transmitter, we can get to the HTTP driver through the mobile JBOD port!"
        }
      ]
    }
  }
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">Response</em>
</blockquote>

#### Mutations 
If a GraphQL Query is analagous to a SQL `SELECT` satement than think of a Mutation as an `UPDATE`

#### Introspection
Introspection to get Schema definitions
```graphql
{
  __schema {
    types {
      name
    }
  }
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">Query</em>
</blockquote>

Which is super useful for developers unframiliar with your API! This way we can programattically explore the API - 
no more integration nightmares! 
```json
{
  "data": {
    "__schema": {
      "types": [
        {
          "name": "Query"
        },
        ...
        {
          "name": "__DirectiveLocation"
        }
      ]
    }
  }
}
```
<blockquote style="font-size:1.5em;margin-top:-1.8em;text-align:center;">
  <em style="padding-left:2em;">Response</em>
</blockquote>


### Is that it? (no!)

This is by no means a comprehensive tour of GraphQL. Head over to the 
[official GraphQL Organization site](https://graphql.org/) to start learning
or continue our walk-through [about Oracle DB](about-oracle-db)
