---
title: "About Graphql"
---

<img alt="graphql logo" src="graphql-logo.png" width="80%" style="display:block;margin:auto;"/>

### What can GraphQL do for me? 
>
> Ask not what you can do for your APIs. Ask what your APIs can do for you. 
>

<blockquote>
<p>
 Ask not what you can do for your APIs. Ask what your APIs can do for you. 
 </p>
</blockquote>

#### Our App's Schema
```
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

