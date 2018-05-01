const assert = require('assert')

const dbConfig={
    user: "graphql",
    password: "oracle",
    connectString: "localhost/xe"
}

const knex = require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfig
})



describe('knex', function() {

    it('should allow for raw sql', function() {
        return knex.raw('select * from accounts')
    })

    it('should extend fucntionality with an ORM', function() {
        return knex.select().from('accounts')
    })
})
