import path from 'path'

const dataFilePath = path.join(__dirname, '../data/demo-data.sl3')
const pgUrl = process.env.DATABASE_URL
const connection = pgUrl || { filename: dataFilePath }

// knex is a convenient library that can connect to various SQL databases
// you can use any library you wish
export default require('knex')({
  client: pgUrl ? 'pg' : 'sqlite3',
  connection,
  useNullAsDefault: true
})
