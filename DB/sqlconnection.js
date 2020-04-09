const inquirer = inquirer("inquirer");
const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    port:3306,
    user:"root",
    password:"Kilig2020",
    database:"store_staffDB"
})

connection.connect(function(err){
    if(err) throw err;
    console.log("connected as id " + connection.threadId);
    connection.end();
})

connection.query = util.promisify(connection.query);

module.exports = sqlconnection;