
const mysql = require("mysql2");
let fs = require("fs");
let data = new Array;

  
const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: "mydb",
  password: "password"
}).promise();

const sql = "INSERT INTO Vesum (word, mainForm, tag) VALUES ?";
let count = 0;
let vesum = JSON.parse(fs.readFileSync(`../data/vesum-tone/test_0.json`));
  vesum.forEach( r => {
  delete r._id; 
  let word = r.word;
  let mf = r.mainForm;
  let tags = r.tags;
  tags.forEach( tag => {
    data[count] = [word, mf, tag];
    count++
    })
  })

connection.query(sql, [data])
          .then(result =>{
            console.log(result[0]);
            console.log(`INSTALL VESUM > ${count} records inserted into collection`)

          })   
  .catch(err =>{
        console.log(err);
    });


connection.end(function(err) {
  if (err) {
    return console.log("Ошибка: " + err.message);
  }
  console.log("Подключение закрыто");
});





