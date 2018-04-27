import path from 'path'

const oracle_db = {
    client: 'oracledb',
    connection: {
      host: 'localhost:1521',
      user: 'system',
      password: 'oracle',
      database: '',
    }
}


module.exports={oracle_db}