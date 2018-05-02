import  {
  GraphQLInterfaceType,
  GraphQLInt,
  GraphQLString
} from 'graphql'


export default new GraphQLInterfaceType({
  name: 'AuthoredInterface',
  sqlTable: `(
    SELECT
      POSTS.ID "id",
      POSTS.BODY "body",
      POSTS.AUTHOR_ID "author_id",
      NULL as "post_id", -- posts dont have post_id, so add NULL as a filler to allow us to UNION with comments
      'Post' AS "$type"
    FROM posts
    UNION ALL
    SELECT
      COMMENTS.ID "id",
      COMMENTS.BODY "body",
      COMMENTS.AUTHOR_ID "author_id",
      COMMENTS.POST_ID "post_id",
      'Comment' AS "$type" -- this helps for uniqueness and resolving the type
    FROM comments
  )`,
  uniqueKey: [ 'id', '$type' ],
  typeHint: '$type',
  fields: () => ({
    id: {
      type: GraphQLInt,
      sqlColumn: 'ID'
    },
    body: {
      type: GraphQLString,
      sqlColumn: 'BODY'
    },
    authorId: {
      type: GraphQLInt,
      sqlColumn: 'AUTHOR_ID'
    }
  }),
  resolveType: obj => obj.$type
})

