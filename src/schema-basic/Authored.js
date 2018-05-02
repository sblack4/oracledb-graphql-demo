import  {
  GraphQLInterfaceType,
  GraphQLInt,
  GraphQLString
} from 'graphql'


export default new GraphQLInterfaceType({
  name: 'AuthoredInterface',
  sqlTable: `(
    SELECT
      POSTS.ID,
      POSTS.BODY,
      POSTS.AUTHOR_ID,
      NULL AS POST_ID, -- posts dont have post_id, so add NULL as a filler to allow us to UNION with comments
      'Post' AS "$type"
    FROM POSTS
    UNION ALL
    SELECT
      COMMENTS.ID,
      COMMENTS.BODY,
      COMMENTS.AUTHOR_ID,
      COMMENTS.POST_ID,
      'Comment' AS "$type" -- this helps for uniqueness and resolving the type
    FROM COMMENTS
  )`,
  uniqueKey: [ 'ID', '$type' ],
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

