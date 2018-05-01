var assert = require('assert')

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

knex.select().from('accounts')
    .then((yay) => {
        console.log('yay hit')
        console.log(yay)
        return yay
    }).catch((err) => {
        console.log(err)
    })

knex.raw('select * from "accounts"')
    .then(o => console.log(o))
    .catch(e => console.log(e))

describe('knex', function() {
    it('should allow for raw sql', function(done) {

    })

    it('should extend fucntionality with an ORM', function(done) {

    })
})
