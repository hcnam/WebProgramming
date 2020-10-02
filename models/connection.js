const mysql = require('mysql');

var connection = mysql.createConnection({
    host : "localhost",
    port : 3306,
    user : "root",
    password : "MySQL",
    database : "web_mini_project",
})

module.exports = connection;
// 디비 연결 정보


