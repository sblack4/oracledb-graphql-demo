import path from 'path'
// import * as conn from '../connections/connections'


// knex is a convenient library that can connect to various SQL databases
// you can use any library you wish
// export default require('knex')({
  // client: conn.oracle_db.client,
  // connection: conn.oracle_db.connection
// })

const dbConfig={
    user: "graphql",
    password: "oracle",
    connectString: "localhost/xe"
}

export default require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfig
});
