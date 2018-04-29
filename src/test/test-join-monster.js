import joinMonster from 'join-monster'
import path from 'path'
import {promisify} from 'bluebird'

function print(args) {
    console.log(...args)
}

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
knex.raw = promisify(knex.raw)

const dataFilePath = path.join(__dirname, '../data/demo-data.sl3')
const connection = { filename: dataFilePath }
// knex is a convenient library that can connect to various SQL databases
// you can use any library you wish
var knox = require('knex')({
  client: 'sqlite3',
  connection,
  useNullAsDefault: true
})
// knox.raw = promisify(knox.raw)

const resolveinfo = `
{
    users {
        id
    }
}`
const context = {}
const sql = 'select * from "accounts"'
const options = { dialect: "oracle" }

// print("KNEX TEST")
// const out = knex.raw(sql)
//     .then(o=>console.log(o))
//     .catch(e=>console.log(e))

const foo = function(resolveinfo, context, sql, options) {
    console.log("foo")
    return joinMonster(resolveinfo, context, function(sql) {
        console.log("jm", sql)
        const out = knox.raw(sql)
        return out
    })
}

foo(resolveinfo, context, sql, options)
  .then( foo => console.log("then", foo) )
  .catch( er => console.log("catch", er) )

console.log("end", foo)
