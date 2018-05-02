import path from 'path'

const host = process.env.DB || "localhost"

const dbConfig={
    user: "graphql",
    password: "oracle",
    connectString: host + "/xe"
}

export default require('knex')({
    dialect: 'oracledb',
    client: "oracledb",
    connection: dbConfig
});
