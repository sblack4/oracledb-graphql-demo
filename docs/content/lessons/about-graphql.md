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

### What GraphQL *is*
- An API Specification (like `REST`)
- A Query Language (like `SQL`)
- A tool to solve problems

### What GraphQL *isn't* 
- A piece of software 
- Blockchain
- AI 

#### Our App's GraphQL Schema
If you're used to RDBMS's this schema will look unusual, 
albeit the schema makes sense! 

GraphQL's succint syntax allows for a level of expressiveness that language designers strive for and programmers love (which might be one reason it's catching on so quickly)

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

