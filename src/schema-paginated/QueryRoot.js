import {
  GraphQLObjectType,
  GraphQLString,
  GraphQLInt
} from 'graphql'

import joinMonster from 'join-monster'

// import knex from './database'
import User from './User'
import { nodeField } from './Node'

const dbConfig={
    user: "graphql",
    password: "oracle",
    connectString: "localhost/xe"
}
var knex = require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfig
});
const options = { dialect: 'oracle' }

export default new GraphQLObjectType({
  description: 'global query object',
  name: 'Query',
  fields: () => ({
    version: {
      type: GraphQLString,
      resolve: () => joinMonster.version
    },
    // implement the Node type from Relay spec
    node: nodeField,
    user: {
      type: User,
      args: {
        id: {
          description: 'The users ID number',
          type: GraphQLInt
        }
      },
      where: (usersTable, args, context) => { // eslint-disable-line no-unused-vars
        if (args.id) return `${usersTable}.id = ${args.id}`
      },
      resolve: (parent, args, context, resolveInfo) => {
        return joinMonster(resolveInfo, context, sql => {
          console.log(sql)
          return knex.raw(sql)
        })
      }
    }
  })
})
