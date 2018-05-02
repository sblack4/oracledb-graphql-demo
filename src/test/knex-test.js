const assert = require('assert')

const dbConfig={
    user: "graphql",
    password: "oracle",
    connectString: "localhost/xe"
}

const dbConfigWrappedIdentifier={
    user: "graphql",
    password: "oracle",
    wrapIdentifier: (value, origImpl, queryContext) => origImpl(value.replace('"', '')),
    connectString: "localhost/xe"
}

var knex = require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfig
})



describe('knex-basic', function() {

    it('should allow for raw sql', function() {
        return knex.raw('select * from accounts')
    })

    it('should extend fucntionality with an ORM', function() {
        return knex.select().from('accounts')
    })
})

var knex = require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfigWrappedIdentifier
})

describe('knex-wrapped', function() {

    it('should allow for raw sql', function() {
        return knex.raw('select * from accounts')
    })

    it('should extend fucntionality with an ORM', function() {
        return knex.select().from('accounts')
    })
})