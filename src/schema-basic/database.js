import path from 'path'
import * as conn from '../connections/connections'

// connect to our database file
const dataFilePath = path.join(__dirname, '../data/demo-data.sl3')

// knex is a convenient library that can connect to various SQL databases
// you can use any library you wish
export default require('knex')({
  client: conn.oracle_db.client,
  connection: conn.oracle_db.connection,
  useNullAsDefault: true
})
