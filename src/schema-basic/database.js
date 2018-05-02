import path from 'path'

const host = process.env.DB || "localhost"

// this user is created for the demo
// by the sql scripts copied into the container at startup
// not doing this will cause an error:
//   ORA-01017: invalid username/password; logon denied
const dbConfig={
    user: "graphql",
    password: "oracle",
    connectString: host + "/xe"
}

export default require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfig
})
