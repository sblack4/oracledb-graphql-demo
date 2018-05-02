import {
  GraphQLObjectType,
  GraphQLList,
  GraphQLString,
  GraphQLInt,
  GraphQLBoolean
} from 'graphql'

import Post from './Post'
import User from './User'
import Authored from './Authored'

export default new GraphQLObjectType({
  description: 'Comments on posts',
  name: 'Comment',
  // another SQL table to map to
  sqlTable: 'COMMENTS',
  uniqueKey: 'ID',
  interfaces: () => [ Authored ],
  fields: () => ({
    id: {
      type: GraphQLInt,
      sqlColumn: 'ID' // explicitly set to avoid problems with quoted identifiers 
    },
    body: {
      description: 'The content of the comment',
      // assumed to be "body"
      type: GraphQLString,
      sqlColumn: 'BODY'
    },
    likers: {
      description: 'Users who liked this comment',
      type: new GraphQLList(User),
      junction: {
        sqlTable: 'LIKES',
        sqlJoins: [
          (commentTable, likeTable) => `${commentTable}.ID = ${likeTable}.COMMENT_ID`,
          (likeTable, accountTable) => `${likeTable}.ACCOUNT_ID = ${accountTable}.ID`
        ]
      }
    },
    post: {
      description: 'The post that the comment belongs to',
      // a back reference to its Post
      type: Post,
      // how to join these tables
      sqlJoin: (commentTable, postTable) => `${commentTable}.POST_ID = ${postTable}.ID`
    },
    author: {
      description: 'The user who wrote the comment',
      // and one to its User
      type: User,
      sqlJoin: (commentTable, userTable) => `${commentTable}.AUTHOR_ID = ${userTable}.ID`
    },
    authorId: {
      type: GraphQLInt,
      sqlcolumn: 'AUTHOR_ID'
    },
    archived: {
      type: GraphQLBoolean
    },
    postId: {
      type: GraphQLInt,
      sqlColumn: 'POST_ID'
    },
    createdAt: {
      type: GraphQLString,
      sqlColumn: 'CREATED_AT'
    }
  })
})
