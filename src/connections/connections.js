import path from 'path'


// connect to our database file
const dataFilePath = path.join(__dirname, '../data/demo-data.sl3')
const host = process.env.DB || 'localhost'

var pool = {
  afterCreate: function(connection, callback) {
    assert.ok(typeof connection.__knexUid !== 'undefined')
    callback(null, connection);
  }
};

var migrations = {
  directory: 'test/integration/migrate/migration'
};

//
// from 
const sqlite3 = {
  client: 'sqlite3',
  connection: {
    filename: dataFilePath
  },
  useNullAsDefault: true
}

// 
// see https://oracle.github.io/node-oracledb/doc/api.html#-11-getting-started-with-node-oracledb
// and https://github.com/tgriesser/knex/blob/ee8cc35ecb41a8bc809f753b56e64691bd3fa25c/test/knexfile.js 
const oracle_db = {
    client: 'oracledb',
    dialect: 'oracledb',
    connection: {
      connectString: "localhost/xe",
      user: 'graphql',
      password: 'oracle',
      stmtCacheSize : 0
    },
    function(err, connection) {
      if (err) { console.error(err.message); return; }
      connection.execute(
        "SELECT last_name, hire_date, salary, commission_pct FROM employees WHERE employee_id = :id",
        [178],
        {
          fetchInfo :
          {
            "HIRE_DATE":      { type : oracledb.STRING },  // return the date as a string
            "COMMISSION_PCT": { type : oracledb.DEFAULT }  // override oracledb.fetchAsString and fetch as native type
          }
        },
        function(err, result) {
          if (err) { console.error(err.message); return; }
          console.log(result.rows);
        });
    }
    // pool: pool,
    // migrations: migrations
  }


module.exports={ oracle_db, sqlite3 }
