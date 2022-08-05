const mysql = require('mysql2');

const config = {
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PWD,
    database: process.env.DB_DATABASE,
};

const con = mysql.createConnection(config);

con.connect(function (err) {
    if (err) throw err;
    console.log("Connected DB");
});

module.exports = {
    connection: mysql.createConnection(config)
}